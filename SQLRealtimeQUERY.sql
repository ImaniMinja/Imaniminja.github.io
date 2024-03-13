
-------Inserting the initial Values for Revenue and Orders--------
insert [Realtime Database 2].[dbo].[Revenue Vs Orders] values (0,0)
select * from [Realtime Database 2].[dbo].[Revenue Vs Orders];


--------Continuos Query for Data presentation in PowerBi------
declare @i int = 1
while (@i<=1000)
begin
waitfor delay '00:00:01'
update [Realtime Database 2].[dbo].[Revenue Vs Orders] set Revenues = @i
update [Realtime Database 2].[dbo].[Revenue Vs Orders] set Orders = rand()*100
set @i = @i + 1
end
