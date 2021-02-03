 -- Create table stock
CREATE TABLE Stock #A
(
    ProductId int,
    Size varchar(10),
    StoreId int,
    Quantity int,
    primary key (ProductId, Size)
)

-- Enable CDC at the database level 
EXEC sys.sp_cdc_enable_db #B

-- Enable CDC at the table level 
EXEC sys.sp_cdc_enable_table @source_schema = 'dbo', @source_name = 'Stock', @role_name = NULL, @supports_net_changes = 1 #B
