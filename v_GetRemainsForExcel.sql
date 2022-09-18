SELECT n.id, n.name AS ItemName, '' AS ItemNameInURL, '' AS URL, n.name AS ShortDescription, REPLACE(REPLACE(n.description, CHAR(13), ''), CHAR(10), '') AS FullDescription, 'выставлен' AS Visibility, '' AS Discount, '' AS TegTitle, 
                  '' AS MetaTegKeywords, '' AS MetaTegDescription, CASE n.categoryId WHEN n.categoryId THEN
                      (SELECT TOP 1 'Общий каталог/' + cp.categoryName + '/' + cc.categoryName
                       /*+ '/' + nn.categoryName*/ FROM nomenclature nn JOIN
                                         [ItemsCategory] c ON c.CategoryId = nn.categoryId CROSS apply
                                             (SELECT TOP 1 categoryName, CategoryId, parent_id
                                              FROM      [ItemsCategory]
                                              WHERE   c.parent_id = categoryId) cc CROSS apply
                                             (SELECT TOP 1 a.categoryName
                                              FROM      [ItemsCategory] a
                                              WHERE   a.categoryId = cc.parent_id) cp
                       WHERE   nn.categoryId = n.categoryId) ELSE '' END AS CategoryInSite, uw.name AS WeightCoefficient, 'RUR' AS Currancy, 'Включая НДС: 20.00 %' AS NDS, u.name AS Measure, CAST(p.volume AS nvarchar(10)) 
                  + ' ' + CAST(u.name AS nvarchar(10)) AS Gabarit, isnull(i.concatLinks, i.link) AS ImageURL, y.code AS [Ссылка на видео], '' AS [ID варианта], n.articulElevel AS VendorCode, b.barcode, '' AS GabaritVariant, 
                  s.PriceBasic AS [Цена продажи], s.Price AS [Старая цена], PriceRetail = dbo.MarginCalc(s.Price), s.Stockamount AS Remain, w.unitCount AS Weight, '' AS [Изображения варианта], n.brandName AS Param1, 
                  CASE n.categoryId WHEN n.categoryId THEN
                      (SELECT TOP 1 nn.categoryName
                       FROM      nomenclature nn JOIN
                                         [ItemsCategory] c ON c.CategoryId = nn.categoryId CROSS apply
                                             (SELECT TOP 1 categoryName, CategoryId, parent_id
                                              FROM      [ItemsCategory]
                                              WHERE   c.parent_id = categoryId) cc CROSS apply
                                             (SELECT TOP 1 a.categoryName
                                              FROM      [ItemsCategory] a
                                              WHERE   a.categoryId = cc.parent_id) cp
                       WHERE   nn.categoryId = n.categoryId) ELSE '' END AS Param2, 'Кол-во в упаковке' + ' ' + cast(p.amountInPack AS nvarchar(10)) + '. ' + p.name AS Param3, techchar.techchar AS Param4, n.typeOfProduct, '' AS YaMCategory, 
                  '' AS GCategory, '' AS OzCategory
FROM     dbo.nomenclature AS n LEFT JOIN
                  dbo.packs AS p ON p.nomenclatureId = n.id AND p.name LIKE '%малая%' LEFT JOIN
                  dbo.barcode AS b ON b.nomenclatureId = n.id INNER JOIN
                  dbo.StockOfGoods AS s ON s.Id = n.id LEFT JOIN
                  dbo.weight AS w ON w.nomenclatureId = n.id LEFT JOIN
                  dbo.unit AS u ON u.weightId = w.weightId LEFT JOIN
                  dbo.youtube y ON y.nomenclatureId = n.id /*Inner join attributes att ON att.nomenclatureId = n.id*/ LEFT JOIN
                  dbo.unit AS uw ON uw.weightId = w.weightId OUTER apply
                      (SELECT TOP 1 nomenclatureId, concatLinks, link
                       FROM      images
                       WHERE   nomenclatureId = n.id) i OUTER apply
                      (SELECT substring
                                             ((SELECT a.name + ': ' + CASE value WHEN 'true' THEN 'да. ' ELSE value + c.measure + '. ' END
                                               FROM      attributes a JOIN
                                                                 attributesCatalog c ON c.attributeId = a.attributeId
                                               WHERE   nomenclatureId = n.id AND value <> '' AND value <> 'false' FOR xml path('')), 1, 9999) AS techchar) techchar --1