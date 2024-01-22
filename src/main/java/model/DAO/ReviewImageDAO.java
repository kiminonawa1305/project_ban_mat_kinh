package model.DAO;

import model.bean.Review;
import model.bean.ReviewImage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ReviewImageDAO extends DAO {
    private static ReviewImageDAO instance;

    public static ReviewImageDAO getInstance() {
        return instance == null ? new ReviewImageDAO() : instance;
    }


    public Map<Integer, List<String>> mapReviewImage(List<Review> reviews) {
        Map<Integer, List<String>> result = new HashMap<>();
        List<String> images = null;
        for (Review review : reviews) {
            int reviewId = review.getId();
            images = connector.withHandle(handle ->
                    handle.createQuery("SELECT rimg.urlImage " +
                                    "FROM review_images AS rimg " +
                                    "WHERE rimg.reviewId = ?;")
                            .bind(0, reviewId)
                            .mapTo(String.class)
                            .list()
            );

            result.put(reviewId, images);
        }
        return result;
    }

    public void removeImageReviews(int reviewId) {
        connector.withHandle(handle ->
                handle.createUpdate("DELETE FROM review_images WHERE reviewId = :reviewId")
                        .bind("reviewId", reviewId)
                        .execute()
        );
    }

    public boolean insert(int id, String reviewId, String urlImage) {
        return connector.withHandle(handle ->
                handle.createUpdate("INSERT review_images(id, reviewId, urlImage) VALUES (:id, :reviewId, :urlImage)")
                        .bind("id", id)
                        .bind("reviewId", reviewId)
                        .bind("urlImage", urlImage)
                        .execute()
        ) != 0 ? true : false;
    }

    public int nextId() {
        return connector.withHandle(handle ->
                handle.createQuery("SELECT MAX(id) FROM review_images")
                        .mapTo(Integer.class)
                        .findFirst().orElse(0)
        ) + 1;
    }

    public void removeImageReview(int reviewImageId) {
        connector.withHandle(handle ->
                handle.createUpdate("DELETE FROM review_images WHERE id = :reviewImageId")
                        .bind("reviewImageId", reviewImageId)
                        .execute()
        );
    }

    public List<ReviewImage> getReviewImage(Integer id) {
        return connector.withHandle(handle ->
                handle.createQuery("SELECT rimg.id, rimg.urlImage " +
                                "FROM review_images AS rimg " +
                                "WHERE rimg.reviewId = ?;")
                        .bind(0, id)
                        .mapToBean(ReviewImage.class)
                        .list()
        );
    }
}
