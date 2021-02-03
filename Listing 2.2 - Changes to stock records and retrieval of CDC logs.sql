-- Some changes to stock records 
insert into Stock values(153854, 'XS', 914, 1) 
update Stock set Quantity = 2 where ProductId = 153854 and Size = 'XS' 
insert into Stock values(153854, 'S', 914, 1) 
delete from Stock where ProductId = 153854 and Size = 'S' 

-- Fetch changes
SELECT * FROM [cdc].[dbo_Stock_CT] where __$start_lsn > 0x00001058000007110003 