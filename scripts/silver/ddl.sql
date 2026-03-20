-- select * from bronze.crm_cust_info;
drop table if exists silver.crm_cust_info;
create table silver.crm_cust_info as
select cast(cst_id as int),
cst_key,
cst_firstname,
cst_lastname,
cst_marital_status,
cst_gndr,
to_date(cst_create_date, 'DD-MM-YYYY') as cst_create_date,
current_date as dwh_load_date -- metadata column for capturing the data loading timestamp
from bronze.crm_cust_info;

-- select * from bronze.crm_prd_info;
drop table if exists silver.crm_prd_info;
CREATE TABLE silver.crm_prd_info AS
SELECT 
    CAST(prd_id AS INT) AS prd_id,
    prd_key,
    prd_nm,
    CAST(NULLIF(prd_cost,0) AS INT) AS prd_cost,
    prd_line,
    prd_start_dt,
	prd_end_dt,
    CURRENT_DATE AS dwh_load_date
FROM bronze.crm_prd_info;
select * from silver.crm_prd_info;

select * from bronze.crm_sales_details;
drop table if exists silver.crm_sales_details;
CREATE TABLE silver.crm_sales_details AS
SELECT 
    sls_ord_num ,
    sls_prd_key ,
    sls_cust_id,
    to_date(sls_order_dt::text,'YYYYMMDD') as sls_order_dt,
    to_date(sls_ship_dt::text,'YYYYMMDD') as sls_ship_dt,
    to_date(sls_due_dt::text,'YYYYMMDD') as sls_due_dt,
	sls_sales,
	sls_quantity,
	sls_price,
    CURRENT_DATE AS dwh_load_date
FROM bronze.crm_sales_details;


-- select * from bronze.erp_cust_az12;
drop table if exists silver.erp_cust_az12;
CREATE TABLE silver.erp_cust_az12 AS
SELECT 
    cid,
	bdate,
	gen,
    CURRENT_DATE AS dwh_load_date
FROM bronze.erp_cust_az12;


-- select * from bronze.erp_loc_a101;
drop table if exists silver.erp_loc_a101;
CREATE TABLE silver.erp_loc_a101 AS
SELECT 
    cid,
	cntry,
    CURRENT_DATE AS dwh_load_date
FROM bronze.erp_loc_a101;



select * from bronze.erp_px_cat_g1v2;
drop table if exists silver.erp_px_cat_g1v2;
CREATE TABLE silver.erp_px_cat_g1v2 AS
SELECT 
    id,
	cat,
	subcat,
	maintenance,
    CURRENT_DATE AS dwh_load_date
FROM bronze.erp_px_cat_g1v2;


