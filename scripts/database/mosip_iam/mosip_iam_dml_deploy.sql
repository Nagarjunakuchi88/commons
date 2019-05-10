\c mosip_iam sysadmin

\set CSVDataPath '\'/home/dbadmin/mosip_iam/dml'

-------------- Level 1 data load scripts ------------------------

----- TRUNCATE iam.role_list TABLE Data and It's reference Data and COPY Data from CSV file -----
TRUNCATE TABLE iam.role_list cascade ;

\COPY iam.role_list (code,descr,lang_code,is_active,cr_by,cr_dtimes) FROM './dml/iam-role_list.csv' delimiter ',' HEADER  csv;

----- TRUNCATE iam.user_detail TABLE Data and It's reference Data and COPY Data from CSV file -----
TRUNCATE TABLE iam.user_detail cascade ;

\COPY iam.user_detail (id,reg_id,name,email,mobile,status_code,lang_code,last_login_method,is_active,cr_by,cr_dtimes) FROM './dml/iam-user_detail.csv' delimiter ',' HEADER  csv;


-------------- Level 2 data load scripts ------------------------

TRUNCATE TABLE iam.user_detail_h cascade ;

\COPY iam.user_detail_h (id,reg_id,name,email,mobile,status_code,lang_code,last_login_method,is_active,cr_by,cr_dtimes) FROM './dml/iam-user_detail_h.csv' delimiter ',' HEADER  csv;


---------------------------------------------------------------------------------------------------------------------------------------------------------------------


















