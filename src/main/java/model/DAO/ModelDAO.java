package model.DAO;

import model.bean.Model;

import java.util.List;

public class ModelDAO extends DAO {
    private static ModelDAO instance;

    public static ModelDAO getInstance() {
        return instance == null ? new ModelDAO() : instance;
    }

    public List<Model> getModelsByProductId(int productId) {
        return connector.withHandle(handle ->
                handle.createQuery("SELECT m.id, m.urlImage, m.name, m.quantity, SUM(bd.quantity) AS totalQuantitySold "
                                + "FROM models AS m "
                                + "LEFT JOIN bill_details AS bd ON bd.modelId = m.id AND bd.productId = m.productId "
                                + "WHERE m.productId = :productId "
                                + "GROUP BY m.id, m.urlImage, m.name, m.quantity;")
                        .bind("productId", productId) // Bind giá trị cho :productId
                        .mapToBean(Model.class).list());
    }

    public Model getModel(int modelId) {
        return connector.withHandle(handle ->
                handle.createQuery("SELECT m.id, m.urlImage, m.name, m.quantity, SUM(bd.quantity) AS totalQuantitySold "
                                + "FROM models AS m "
                                + "JOIN bill_details AS bd ON bd.modelId = m.id "
                                + "WHERE m.id = ?;")
                        .bind(0, modelId)
                        .mapToBean(Model.class)
                        .findFirst().orElse(null));
    }

    public boolean insert(List<Model> models) {
        boolean result = true;
        for (Model model : models) {
            result &= connector.withHandle(handle ->
                    handle.createUpdate("INSERT INTO models(id, productId, name, urlImage, quantity) VALUES (?, ?, ?, ?, ?)")
                            .bind(0, model.getId())
                            .bind(1, model.getProductId())
                            .bind(2, model.getName())
                            .bind(3, model.getUrlImage())
                            .bind(4, model.getQuantity())
                            .execute()
            ) == 1 ? true : false;
        }

        return result;
    }
}
