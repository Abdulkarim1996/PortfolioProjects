-- Cleansed Internet Sales --
SELECT [ProductKey],
      [OrderDateKey],
      [DueDateKey],
      [ShipDateKey],
      [CustomerKey],
      --[PromotionKey],
      --[CurrencyKey],
      --[SalesTerritoryKey],
      [SalesOrderNumber],
      --[SalesOrderLineNumber],
      --[RevisionNumber],
      --[OrderQuantity],
      --[UnitPrice],
      --[ExtendedAmount],
      --[UnitPriceDiscountPct],
      --[DiscountAmount],
      --[ProductStandardCost],
      --[TotalProductCost],
      --[TaxAmt],
      --[Freight],
      --[CarrierTrackingNumber],
      --[CustomerPONumber],
      --[OrderDate],
      --[DueDate],
      --[ShipDate]
	    [SalesAmount]
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]
  WHERE
	LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) - 2  -- Ensures we always only bring 2 years of extraction
	ORDER BY
		OrderDate ASC
