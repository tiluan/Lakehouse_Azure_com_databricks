-- Databricks notebook source
CREATE OR REPLACE VIEW ADVENTURE_WORKS_PRATA.V_GET_ALL_CATEGORIES AS
SELECT 
  PC2.Name AS ParentProductCategoryName,
  PC1.Name AS ProductCategoryName,
  PC1.ProductCategoryID 
FROM ADVENTURE_WORKS_PRATA.PRODUCT_CATEGORY PC1
JOIN ADVENTURE_WORKS_PRATA.PRODUCT_CATEGORY PC2 ON PC1.ParentProductCategoryID = PC2.ProductCategoryID
ORDER BY 1

-- COMMAND ----------

SELECT * FROM ADVENTURE_WORKS_PRATA.V_GET_ALL_CATEGORIES;

-- COMMAND ----------

