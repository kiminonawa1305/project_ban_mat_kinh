package model.DAO;

import db.JDBIConnector;
import model.bean.BannerImage;
import model.bean.Review;
import model.bean.ReviewImage;
import org.jdbi.v3.core.Jdbi;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class BannnerDAO extends DAO {
    private static Jdbi conn;
    private static BannnerDAO INSTANCE;
    private static final String QUERY_GET_BANNER = "SELECT bi.urlImage, bi.id, bi.description FROM banner_images bi WHERE bi.description LIKE ?";

    public static BannnerDAO getInstance() {
        return INSTANCE != null ? INSTANCE : new BannnerDAO();
    }

    public List<BannerImage> getSlideShowImages() {
        String slide = "slide%";
        return connector.withHandle(handle ->
                handle.createQuery(QUERY_GET_BANNER)
                        .bind(0, slide)
                        .mapToBean(BannerImage.class).list());
    }

    public BannerImage getBannerByDescription(String descriptionBanner) {
        return connector.withHandle(handle ->
                handle.createQuery(QUERY_GET_BANNER)
                        .bind(0, descriptionBanner)
                        .mapToBean(BannerImage.class).findFirst().orElse(null));
    }

    /**
     * update image banner
     */
    public int updateBannerImage(BannerImage banner) {
        int row = connector.withHandle(handle ->
                handle.createUpdate("update banner_images set urlImage = ? where description LIKE ?")
                        .bind(0, banner.getUrlImage())
                        .bind(1, banner.getDescription())
                        .execute()
        );

        if (row != 0) return row;

        return connector.withHandle(handle ->
                handle.createUpdate("INSERT INTO banner_images(urlImage, description) VALUES(?, ?)")
                        .bind(0, banner.getUrlImage())
                        .bind(1, banner.getDescription())
                        .execute()
        );
    }

    /**
     * insert image slide
     */
    public int insertSlideImage(BannerImage slide) {
        return connector.withHandle(handle ->
                handle.createUpdate("insert into banner_images values (?, ?, ?)")
                        .bind(0, slide.getId())
                        .bind(1, slide.getUrlImage())
                        .bind(2, slide.getDescription())
                        .execute()
        );
    }

    public int nextId() {
        return connector.withHandle(handle ->
                handle.createQuery("SELECT MAX(bi.id) FROM banner_images bi").mapTo(Integer.class).one());
    }

    public int countSlide() {
        return connector.withHandle(handle ->
                handle.createQuery("SELECT COUNT(bi.id) FROM banner_images bi WHERE bi.description LIKE ?")
                        .bind(0, "%slide%")
                        .mapTo(Integer.class).one());
    }

    /*
    remove slide
     */
    public int removeSlide(BannerImage slide) {
        return connector.withHandle(handle ->
                handle.createUpdate("DELETE FROM banner_images WHERE id = ?")
                        .bind(0, slide.getId())
                        .execute()
        );
    }

}
