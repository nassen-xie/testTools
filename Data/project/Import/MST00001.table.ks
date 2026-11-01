{
  "no": 1,
  "logicalName": "汎用区分マスタ",
  "physicalName": "MST00001",
  "remarks": null,
  "primaryKey": [
    "MST00001_CategoryCD",
    "MST00001_CategoryKBN"
  ],
  "columns": [
    {
      "no": 1,
      "logicalName": "分類",
      "physicalName": "MST00001_CategoryCD",
      "baseType": "CategoryCD",
      "dataType": "String(3)",
      "dbType": "CHAR(3)",
      "notNull": true,
      "primaryKeyOrder": 1,
      "default": null,
      "remarks": null
    },
    {
      "no": 2,
      "logicalName": "区分",
      "physicalName": "MST00001_CategoryKBN",
      "baseType": "CategoryKBN",
      "dataType": "String(2)",
      "dbType": "CHAR(2)",
      "notNull": true,
      "primaryKeyOrder": 2,
      "default": null,
      "remarks": null
    },
    {
      "no": 3,
      "logicalName": "分類名",
      "physicalName": "MST00001_CategoryNM",
      "baseType": "CategoryNM",
      "dataType": "String(50)",
      "dbType": "VARCHAR(50)",
      "notNull": true,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 4,
      "logicalName": "区分名",
      "physicalName": "MST00001_CategoryKBNNM",
      "baseType": "CategoryKBNNM",
      "dataType": "String(100)",
      "dbType": "VARCHAR(100)",
      "notNull": true,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 5,
      "logicalName": "削除フラグ",
      "physicalName": "MST00001_DelFlg",
      "baseType": "DelFlg",
      "dataType": "String(1)",
      "dbType": "CHAR(1)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": "0",
      "remarks": null
    },
    {
      "no": 6,
      "logicalName": "作成者",
      "physicalName": "MST00001_CreateUserCD",
      "baseType": "UserCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 7,
      "logicalName": "作成日時",
      "physicalName": "MST00001_CreateDate",
      "baseType": "DateTime3",
      "dataType": "DateTime(3)",
      "dbType": "TIMESTAMP(3)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": "Sysdate",
      "remarks": null
    },
    {
      "no": 8,
      "logicalName": "更新者",
      "physicalName": "MST00001_UpdateUserCD",
      "baseType": "UserCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 9,
      "logicalName": "更新日時",
      "physicalName": "MST00001_UpdateDate",
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
      "createdAt": "2026-10-18T15:49:26.0129164+09:00",
      "kind": "create",
      "dbKind": "Oracle",
      "ddl": [
        "-- 汎用区分マスタ（MST00001）：テーブル作成（Oracle）",
        "",
        "CREATE TABLE MST00001 (",
        "    MST00001_CategoryCD CHAR(3) NOT NULL,",
        "    MST00001_CategoryKBN CHAR(2) NOT NULL,",
        "    MST00001_CategoryNM VARCHAR(50) NOT NULL,",
        "    MST00001_CategoryKBNNM VARCHAR(100) NOT NULL,",
        "    MST00001_DelFlg CHAR(1) DEFAULT 0,",
        "    MST00001_CreateUserCD CHAR(10),",
        "    MST00001_CreateDate TIMESTAMP(3) DEFAULT Sysdate,",
        "    MST00001_UpdateUserCD CHAR(10),",
        "    MST00001_UpdateDate TIMESTAMP(3) DEFAULT Sysdate,",
        "    CONSTRAINT PK_MST00001 PRIMARY KEY (MST00001_CategoryCD, MST00001_CategoryKBN)",
        ");",
        "",
        "COMMENT ON TABLE MST00001 IS '汎用区分マスタ';",
        "",
        "COMMENT ON COLUMN MST00001.MST00001_CategoryCD IS '分類';",
        "",
        "COMMENT ON COLUMN MST00001.MST00001_CategoryKBN IS '区分';",
        "",
        "COMMENT ON COLUMN MST00001.MST00001_CategoryNM IS '分類名';",
        "",
        "COMMENT ON COLUMN MST00001.MST00001_CategoryKBNNM IS '区分名';",
        "",
        "COMMENT ON COLUMN MST00001.MST00001_DelFlg IS '削除フラグ';",
        "",
        "COMMENT ON COLUMN MST00001.MST00001_CreateUserCD IS '作成者';",
        "",
        "COMMENT ON COLUMN MST00001.MST00001_CreateDate IS '作成日時';",
        "",
        "COMMENT ON COLUMN MST00001.MST00001_UpdateUserCD IS '更新者';",
        "",
        "COMMENT ON COLUMN MST00001.MST00001_UpdateDate IS '更新日時';"
      ],
      "definition": {
        "physicalName": "MST00001",
        "columns": [
          {
            "physicalName": "MST00001_CategoryCD",
            "dataType": "CHAR(3)",
            "notNull": true,
            "primaryKeyOrder": 1
          },
          {
            "physicalName": "MST00001_CategoryKBN",
            "dataType": "CHAR(2)",
            "notNull": true,
            "primaryKeyOrder": 2
          },
          {
            "physicalName": "MST00001_CategoryNM",
            "dataType": "VARCHAR(50)",
            "notNull": true
          },
          {
            "physicalName": "MST00001_CategoryKBNNM",
            "dataType": "VARCHAR(100)",
            "notNull": true
          },
          {
            "physicalName": "MST00001_DelFlg",
            "dataType": "CHAR(1)",
            "notNull": false,
            "default": "0"
          },
          {
            "physicalName": "MST00001_CreateUserCD",
            "dataType": "CHAR(10)",
            "notNull": false
          },
          {
            "physicalName": "MST00001_CreateDate",
            "dataType": "TIMESTAMP(3)",
            "notNull": false,
            "default": "Sysdate"
          },
          {
            "physicalName": "MST00001_UpdateUserCD",
            "dataType": "CHAR(10)",
            "notNull": false
          },
          {
            "physicalName": "MST00001_UpdateDate",
            "dataType": "TIMESTAMP(3)",
            "notNull": false,
            "default": "Sysdate"
          }
        ],
        "executedAt": "2026-10-18T15:49:26.0133669+09:00"
      }
    }
  ]
}
