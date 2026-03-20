-- customer info table = cst_id,cst_key,cst_firstname,cst_lastname,cst_marital_status,cst_gndr,cst_create_date
drop table if exists bronze.crm_cust_info;
create table bronze.crm_cust_info (
cst_id varchar,
cst_key varchar,
cst_firstname varchar,
cst_lastname varchar,
cst_marital_status varchar,
cst_gndr varchar,
cst_create_date varchar
);
select * from bronze.crm_cust_info;


 -- product info table =  prd_id,prd_key,prd_nm,prd_cost, prd_line, prd_start_dt, prd_end_dt
drop table if exists bronze.crm_prd_info;
create table bronze.crm_prd_info (
prd_id varchar,
prd_key varchar,
prd_nm varchar,
prd_cost float,
prd_line varchar,
prd_start_dt date,
prd_end_dt date
);

-- sales details table = sls_ord_num,sls_prd_key,sls_cust_id,sls_order_dt,sls_ship_dt,sls_due_dt,sls_sales,
-- sls_quantity,sls_price
drop table if exists bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details (
    sls_ord_num  VARCHAR,
    sls_prd_key  VARCHAR,
    sls_cust_id  INT,
    sls_order_dt INT,
    sls_ship_dt  INT,
    sls_due_dt   INT,
    sls_sales    INT,
    sls_quantity INT,
    sls_price    INT
);



-- ERP customer data = CID,BDATE,GEN
drop table if exists bronze.erp_cust_az12;
create table bronze.erp_cust_az12 (
cid varchar,
bdate date,
gen varchar
);


-- erp local data = CID,BDATE,GEN
drop table if exists bronze.erp_loc_a101;
create table bronze.erp_loc_a101 (
cid varchar,
cntry varchar
);

-- erp px cat data = ID	CAT	SUBCAT	MAINTENANCE
drop table if exists bronze.erp_px_cat_g1v2;
create table bronze.erp_px_cat_g1v2 (
id varchar,
cat varchar,
subcat varchar,
maintenance varchar
);


