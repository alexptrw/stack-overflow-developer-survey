use role accountadmin;
create database if not exists stackdev_db;
use database stackdev_db;

create warehouse if not exists stackdev_wh with warehouse_size='x-small';
create role if not exists dbt_role;
show grants on warehouse stackdev_wh;

grant usage on warehouse stackdev_wh to role dbt_role;
grant role dbt_role to user ALEXPTRW;
grant all on database stackdev_db to role dbt_role;