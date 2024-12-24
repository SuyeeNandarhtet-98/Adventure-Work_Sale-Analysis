--- create view dim_products as
select 
	ProductID,
	PP.Name ProductName, PM.Name ProductModelName,
	CASE MakeFlag WHEN 0 THEN 'Purchased Product' WHEN 1 THEN 'Manufactured Product' ELSE 'Unknown' END As "Product Make",
	CASE FinishedGoodsFlag WHEN 0 THEN 'Not Salesable' WHEN 1 THEN 'Salesable' ELSE 'Unknown' END As "FinishGoods",
	CASE WHEN Color IS NULL THEN 'NA' ELSE Color END AS Color,
	StandardCost,
	ListPrice,
	ProductSubcategoryID
from production.product PP
left join Production.ProductModel PM on pp.ProductmodelID = pm.ProductModelID

-- create view dim_productsubcategories as
select 
	ProductSubcategoryID,
	ProductCategoryID,
	Name ProductsubcategoryName
from production.ProductSubcategory

-- create view dim_productcategories as
Select 
	ProductCategoryID,
	Name AS ProductcategoryName
from production.ProductCategory

--- create view dim_salespersons as
select 
	sp.BusinessEntityID AS "SalespersonID",
	concat(p.firstname, ' ', p.middlename, ' ', p.lastname) as SalespersonName,
	sp.CommissionPct,
	he.OrganizationLevel,
	he.JobTitle,
	he.BirthDate,
	he.MaritalStatus,
	he.gender,
	he.HireDate,
	sp.TerritoryID, st.name TerritoryName, st.CountryRegionCode, cr.name CountryName, st.[Group] Continent,
	ea.EmailAddress
from sales.salesperson sp
left join HumanResources.Employee he on sp.BusinessEntityID = he.BusinessEntityID
left join person.person p on sp.BusinessEntityID = p.BusinessEntityID
left join sales.SalesTerritory ST on sp.TerritoryID = st.TerritoryID
left join person.CountryRegion cr on st.CountryRegionCode = cr.CountryRegionCode
left join person.EmailAddress ea on sp.BusinessEntityID = ea.BusinessEntityID

UNION 

Select
	'999'			as "SalespersonID",
	'Online Sales'	as SalespersonName,
	0				as CommissionPct,
	0				as OrganizationLevel,
	'Online Sales'	as JobTitle,
	'1968-12-25'	as BirthDate,
	'' MaritalStatus,
	'' gender,
	'2011-01-04'	as HireDate,
	'' TerritoryID, 
	'' TerritoryName, 
	'' CountryRegionCode, 
	'' CountryName, 
	'' Continent,
	'' EmailAddress 

create view dim_customers as
select 
	sc.CustomerID, pp.PersonType,
	concat(pp.firstname, ' ', pp.middlename, ' ', pp.lastname) CustomerName,
	sc.PersonID,
	sc.StoreID, s.name StoreName, s.SalesPersonID,
	sc.TerritoryID,
	st.name TerritoryName, cr.name Country, st.[Group] Continent
from sales.customer sc
left join person.person pp on sc.PersonID = pp.BusinessEntityID
left join sales.SalesTerritory st on sc.TerritoryID = st.TerritoryID
left join person.CountryRegion cr on st.CountryRegionCode = cr.CountryRegionCode
left join sales.store s on sc.storeid = s.BusinessEntityID
where sc.PersonID is not null 

create view dim_addresses as 
select
	bea.AddressID,
	bea.BusinessEntityID,
	bea.AddressTypeID,
	ad.AddressLine1, 
	ad.AddressLine2, 
	ad.city City, 
	ad.StateProvinceID, 
	sp.StateProvinceCode, 
	sp.name StateProvinceName, 
	sp.CountryRegionCode, 
	cr.name Country, 
	st.[group] Continent, 
	sp.TerritoryID, 
	st.name TerritoryName,
	ad.PostalCode
from person.BusinessEntityAddress BEA
left join person.Address AD on bea.AddressID = ad.AddressID
left join person.StateProvince sp on ad.StateProvinceID = sp.StateProvinceID
left join person.CountryRegion cr on sp.CountryRegionCode = cr.CountryRegionCode
left join sales.SalesTerritory st on sp.TerritoryID = st.TerritoryID  


select * from sales.SalesOrderHeader where salesorderid ='43659'
select * from sales.SalesOrderDetail where productid = '772'
select * from Production.product where productid = '772'
select * from production.ProductCostHistory where productid = '707'

-- Line Total = OrderQty x UnitPrice ?????
-- Line Total Formula
-- Line Tax Amount
-- Line Freight Amount
-- Cost ????? ----
-- costhistory -- how to join ???