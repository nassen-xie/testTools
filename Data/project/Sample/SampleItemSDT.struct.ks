{
  "name": "SampleItemSDT",
  "caption": "商品",
  "members": [
    {
      "logicalName": "商品コード",
      "physicalName": "ItemCd",
      "baseType": "String(10)",
      "dataType": "VARCHAR(10)",
      "isArray": false
    },
    {
      "logicalName": "商品名",
      "physicalName": "ItemNm",
      "baseType": "String(20)",
      "dataType": "VARCHAR(20)",
      "isArray": false
    },
    {
      "logicalName": "数量",
      "physicalName": "Quantity",
      "baseType": "Number(9)",
      "dataType": "INTEGER(9)",
      "isArray": false
    },
    {
      "logicalName": "単価",
      "physicalName": "Price",
      "baseType": "Number(10,2)",
      "dataType": "DECIMAL(12,2)",
      "isArray": false
    },
    {
      "logicalName": "金額",
      "physicalName": "Amount",
      "baseType": "Number(15,3)",
      "dataType": "DECIMAL(18,3)",
      "isArray": false
    }
  ]
}