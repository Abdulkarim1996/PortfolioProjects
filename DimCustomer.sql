-- Cleansed DimCustomer Table --
SELECT 
  c.CustomerKey AS CustomerKey, 
  --[GeographyKey],
  --[CustomerAlternateKey],
  --[Title],
  c.FirstName AS [First Name], 
  --[MiddleName],
  c.LastName AS [Last Name], 
  c.FirstName + ' ' + c.LastName AS [Full Name], 
  --Concat the first name and last name colymn to create a "Full Name" column
  --[NameStyle],
  --[BirthDate],
  --[MaritalStatus],
  --[Suffix],
  -- Changed the "gender" to show "Male" & "Female" instead of "M" & "F"
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --[EmailAddress].
  --[YearlyIncome],
  --[TotalChildren],
  --[NumberChildrenAtHome],
  --[EnglishEducation],
  --[SpanishEducation],
  --[FrenchEducation],
  --[EnglishOccupation],
  --[SpanishOccupation],
  --[FrenchOccupation],
  --[HouseOwnerFlag],
  --[NumberCarsOwned],
  --[AddressLine1],
  --[AddressLine2],
  --[Phone],
  --[CommuteDistance]
  c.DateFirstPurchase AS DateFirstPurchase, 
  g.city AS [Customer City] -- Joined in Customer City from the DimGeography table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  Left Join [AdventureWorksDW2019].[dbo].[DimGeography] AS g ON g.Geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered the CustomerKey in Ascending Order