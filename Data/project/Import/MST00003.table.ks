{
  "no": 3,
  "logicalName": "商品マスタ",
  "physicalName": "MST00003",
  "remarks": null,
  "primaryKey": [
    "MST00003_ItemCD"
  ],
  "columns": [
    {
      "no": 1,
      "logicalName": "商品コード",
      "physicalName": "MST00003_ItemCD",
      "baseType": "ItemCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": true,
      "primaryKeyOrder": 1,
      "default": null,
      "remarks": null
    },
    {
      "no": 2,
      "logicalName": "商品名",
      "physicalName": "MST00003_ItemNM",
      "baseType": "ItemNM",
      "dataType": "String(200)",
      "dbType": "VARCHAR(200)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 3,
      "logicalName": "メーカーコード",
      "physicalName": "MST00003_MakerCD",
      "baseType": "MakerCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 4,
      "logicalName": "品名",
      "physicalName": "MST00003_Item",
      "baseType": "Item",
      "dataType": "String(200)",
      "dbType": "VARCHAR(200)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 5,
      "logicalName": "品番",
      "physicalName": "MST00003_ItemType",
      "baseType": "ItemType",
      "dataType": "String(50)",
      "dbType": "VARCHAR(50)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 6,
      "logicalName": "重量",
      "physicalName": "MST00003_NetWeight",
      "baseType": "NetWeight",
      "dataType": "Number(15,2)",
      "dbType": "DECIMAL(15,2)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 7,
      "logicalName": "在庫管理単位",
      "physicalName": "MST00003_StockUnit",
      "baseType": "StockUnit",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 8,
      "logicalName": "備考",
      "physicalName": "MST00003_Remarks",
      "baseType": "Remarks",
      "dataType": "String(200)",
      "dbType": "VARCHAR(200)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 9,
      "logicalName": "削除フラグ",
      "physicalName": "MST00003_DelFlg",
      "baseType": "DelFlg",
      "dataType": "String(1)",
      "dbType": "CHAR(1)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": "0",
      "remarks": null
    },
    {
      "no": 10,
      "logicalName": "作成者",
      "physicalName": "MST00003_CreateUserCD",
      "baseType": "UserCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 11,
      "logicalName": "作成日時",
      "physicalName": "MST00003_CreateDate",
      "baseType": "DateTime3",
      "dataType": "DateTime(3)",
      "dbType": "TIMESTAMP(3)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": "Sysdate",
      "remarks": null
    },
    {
      "no": 12,
      "logicalName": "更新者",
      "physicalName": "MST00003_UpdateUserCD",
      "baseType": "UserCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 13,
      "logicalName": "更新日時",
      "physicalName": "MST00003_UpdateDate",
      "baseType": "DateTime3",
      "dataType": "DateTime(3)",
      "dbType": "TIMESTAMP(3)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": "Sysdate",
      "remarks": null
    }
  ],
  "references": [],
  "ddlHistory": [
    {
      "createdAt": "2026-10-18T15:49:26.5335902+09:00",
      "kind": "create",
      "dbKind": "Oracle",
      "ddl": [
        "-- 商品マスタ（MST00003）：テーブル作成（Oracle）",
        "",
        "CREATE TABLE MST00003 (",
        "    MST00003_ItemCD CHAR(10) NOT NULL,",
        "    MST00003_ItemNM VARCHAR(200),",
        "    MST00003_MakerCD CHAR(10),",
        "    MST00003_Item VARCHAR(200),",
        "    MST00003_ItemType VARCHAR(50),",
        "    MST00003_NetWeight DECIMAL(15,2),",
        "    MST00003_StockUnit VARCHAR(20),",
        "    MST00003_Remarks VARCHAR(200),",
        "    MST00003_DelFlg CHAR(1) DEFAULT 0,",
        "    MST00003_CreateUserCD CHAR(10),",
        "    MST00003_CreateDate TIMESTAMP(3) DEFAULT Sysdate,",
        "    MST00003_UpdateUserCD CHAR(10),",
        "    MST00003_UpdateDate TIMESTAMP(3) DEFAULT Sysdate,",
        "    CONSTRAINT PK_MST00003 PRIMARY KEY (MST00003_ItemCD)",
        ");",
        "",
        "COMMENT ON TABLE MST00003 IS '商品マスタ';",
        "",
        "COMMENT ON COLUMN MST00003.MST00003_ItemCD IS '商品コード';",
        "",
        "COMMENT ON COLUMN MST00003.MST00003_ItemNM IS '商品名';",
        "",
        "COMMENT ON COLUMN MST00003.MST00003_MakerCD IS 'メーカーコード';",
        "",
        "COMMENT ON COLUMN MST00003.MST00003_Item IS '品名';",
        "",
        "COMMENT ON COLUMN MST00003.MST00003_ItemType IS '品番';",
        "",
        "COMMENT ON COLUMN MST00003.MST00003_NetWeight IS '重量';",
        "",
        "COMMENT ON COLUMN MST00003.MST00003_StockUnit IS '在庫管理単位';",
        "",
        "COMMENT ON COLUMN MST00003.MST00003_Remarks IS '備考';",
        "",
        "COMMENT ON COLUMN MST00003.MST00003_DelFlg IS '削除フラグ';",
        "",
        "COMMENT ON COLUMN MST00003.MST00003_CreateUserCD IS '作成者';",
        "",
        "COMMENT ON COLUMN MST00003.MST00003_CreateDate IS '作成日時';",
        "",
        "COMMENT ON COLUMN MST00003.MST00003_UpdateUserCD IS '更新者';",
        "",
        "COMMENT ON COLUMN MST00003.MST00003_UpdateDate IS '更新日時';"
      ],
      "definition": {
        "physicalName": "MST00003",
        "columns": [
          {
            "physicalName": "MST00003_ItemCD",
            "dataType": "CHAR(10)",
            "notNull": true,
            "primaryKeyOrder": 1
          },
          {
            "physicalName": "MST00003_ItemNM",
            "dataType": "VARCHAR(200)",
            "notNull": false
          },
          {
            "physicalName": "MST00003_MakerCD",
            "dataType": "CHAR(10)",
            "notNull": false
          },
          {
            "physicalName": "MST00003_Item",
            "dataType": "VARCHAR(200)",
            "notNull": false
          },
          {
            "physicalName": "MST00003_ItemType",
            "dataType": "VARCHAR(50)",
            "notNull": false
          },
          {
            "physicalName": "MST00003_NetWeight",
            "dataType": "DECIMAL(15,2)",
            "notNull": false
          },
          {
            "physicalName": "MST00003_StockUnit",
            "dataType": "VARCHAR(20)",
            "notNull": false
          },
          {
            "physicalName": "MST00003_Remarks",
            "dataType": "VARCHAR(200)",
            "notNull": false
          },
          {
            "physicalName": "MST00003_DelFlg",
            "dataType": "CHAR(1)",
            "notNull": false,
            "default": "0"
          },
          {
            "physicalName": "MST00003_CreateUserCD",
            "dataType": "CHAR(10)",
            "notNull": false
          },
          {
            "physicalName": "MST00003_CreateDate",
            "dataType": "TIMESTAMP(3)",
            "notNull": false,
            "default": "Sysdate"
          },
          {
            "physicalName": "MST00003_UpdateUserCD",
            "dataType": "CHAR(10)",
            "notNull": false
          },
          {
            "physicalName": "MST00003_UpdateDate",
            "dataType": "TIMESTAMP(3)",
            "notNull": false,
            "default": "Sysdate"
          }
        ],
        "executedAt": "2026-10-18T15:49:26.5336008+09:00"
      }
    }
  ]
}
