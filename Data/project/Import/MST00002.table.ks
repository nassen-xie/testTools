{
  "no": 2,
  "logicalName": "担当者マスタ",
  "physicalName": "MST00002",
  "remarks": null,
  "primaryKey": [
    "MST00002_UserCD"
  ],
  "columns": [
    {
      "no": 1,
      "logicalName": "担当者コード",
      "physicalName": "MST00002_UserCD",
      "baseType": "UserCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": true,
      "primaryKeyOrder": 1,
      "default": null,
      "remarks": null
    },
    {
      "no": 2,
      "logicalName": "担当者名",
      "physicalName": "MST00002_UserNM",
      "baseType": "UserNM",
      "dataType": "String(50)",
      "dbType": "VARCHAR(50)",
      "notNull": true,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 3,
      "logicalName": "ログインID",
      "physicalName": "MST00002_LoginUsr",
      "baseType": "LoginUsr",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "notNull": true,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 4,
      "logicalName": "パスワード",
      "physicalName": "MST00002_LoginPwd",
      "baseType": "LoginPwd",
      "dataType": "String(100)",
      "dbType": "VARCHAR(100)",
      "notNull": true,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 5,
      "logicalName": "メールアドレス",
      "physicalName": "MST00002_MailAddress",
      "baseType": "MailAddress",
      "dataType": "String(50)",
      "dbType": "VARCHAR(50)",
      "notNull": true,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 6,
      "logicalName": "ロール",
      "physicalName": "MST00002_UserRole",
      "baseType": "UserRole",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": true,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 7,
      "logicalName": "部署コード",
      "physicalName": "MST00002_SectionCD",
      "baseType": "SectionCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": true,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 8,
      "logicalName": "削除フラグ",
      "physicalName": "MST00002_DelFlg",
      "baseType": "DelFlg",
      "dataType": "String(1)",
      "dbType": "CHAR(1)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": "0",
      "remarks": null
    },
    {
      "no": 9,
      "logicalName": "作成者",
      "physicalName": "MST00002_CreateUserCD",
      "baseType": "UserCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 10,
      "logicalName": "作成日時",
      "physicalName": "MST00002_CreateDate",
      "baseType": "DateTime3",
      "dataType": "DateTime(3)",
      "dbType": "TIMESTAMP(3)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": "Sysdate",
      "remarks": null
    },
    {
      "no": 11,
      "logicalName": "更新者",
      "physicalName": "MST00002_UpdateUserCD",
      "baseType": "UserCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 12,
      "logicalName": "更新日時",
      "physicalName": "MST00002_UpdateDate",
      "baseType": "DateTime3",
      "dataType": "DateTime(3)",
      "dbType": "TIMESTAMP(3)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": "Sysdate",
      "remarks": null
    }
  ],
  "references": [
    {
      "name": "部署",
      "table": "MST00005",
      "on": [
        {
          "column": "MST00002_SectionCD",
          "refColumn": "MST00005_SectionCD"
        }
      ],
      "remarks": "担当者の部署"
    },
    {
      "name": "権限",
      "table": "MST00001",
      "on": [
        {
          "column": "\"001\"",
          "refColumn": "MST00001_CategoryCD"
        },
        {
          "column": "MST00002_UserRole",
          "refColumn": "MST00001_CategoryKBN"
        }
      ],
      "remarks": "汎用区分の分類 001（権限）。複合キーのため 2 行"
    },
    {
      "name": "作成者",
      "table": "MST00002",
      "on": [
        {
          "column": "MST00002_CreateUserCD",
          "refColumn": "MST00002_UserCD"
        }
      ],
      "remarks": "作成した担当者（同じ表の参照）"
    }
  ],
  "ddlHistory": [
    {
      "createdAt": "2026-10-18T15:49:26.3063223+09:00",
      "kind": "create",
      "dbKind": "Oracle",
      "ddl": [
        "-- 担当者マスタ（MST00002）：テーブル作成（Oracle）",
        "",
        "CREATE TABLE MST00002 (",
        "    MST00002_UserCD CHAR(10) NOT NULL,",
        "    MST00002_UserNM VARCHAR(50) NOT NULL,",
        "    MST00002_LoginUsr VARCHAR(20) NOT NULL,",
        "    MST00002_LoginPwd VARCHAR(100) NOT NULL,",
        "    MST00002_MailAddress VARCHAR(50) NOT NULL,",
        "    MST00002_UserRole CHAR(10) NOT NULL,",
        "    MST00002_SectionCD CHAR(10) NOT NULL,",
        "    MST00002_DelFlg CHAR(1) DEFAULT 0,",
        "    MST00002_CreateUserCD CHAR(10),",
        "    MST00002_CreateDate TIMESTAMP(3) DEFAULT Sysdate,",
        "    MST00002_UpdateUserCD CHAR(10),",
        "    MST00002_UpdateDate TIMESTAMP(3) DEFAULT Sysdate,",
        "    CONSTRAINT PK_MST00002 PRIMARY KEY (MST00002_UserCD)",
        ");",
        "",
        "COMMENT ON TABLE MST00002 IS '担当者マスタ';",
        "",
        "COMMENT ON COLUMN MST00002.MST00002_UserCD IS '担当者コード';",
        "",
        "COMMENT ON COLUMN MST00002.MST00002_UserNM IS '担当者名';",
        "",
        "COMMENT ON COLUMN MST00002.MST00002_LoginUsr IS 'ログインID';",
        "",
        "COMMENT ON COLUMN MST00002.MST00002_LoginPwd IS 'パスワード';",
        "",
        "COMMENT ON COLUMN MST00002.MST00002_MailAddress IS 'メールアドレス';",
        "",
        "COMMENT ON COLUMN MST00002.MST00002_UserRole IS 'ロール';",
        "",
        "COMMENT ON COLUMN MST00002.MST00002_SectionCD IS '部署コード';",
        "",
        "COMMENT ON COLUMN MST00002.MST00002_DelFlg IS '削除フラグ';",
        "",
        "COMMENT ON COLUMN MST00002.MST00002_CreateUserCD IS '作成者';",
        "",
        "COMMENT ON COLUMN MST00002.MST00002_CreateDate IS '作成日時';",
        "",
        "COMMENT ON COLUMN MST00002.MST00002_UpdateUserCD IS '更新者';",
        "",
        "COMMENT ON COLUMN MST00002.MST00002_UpdateDate IS '更新日時';"
      ],
      "definition": {
        "physicalName": "MST00002",
        "columns": [
          {
            "physicalName": "MST00002_UserCD",
            "dataType": "CHAR(10)",
            "notNull": true,
            "primaryKeyOrder": 1
          },
          {
            "physicalName": "MST00002_UserNM",
            "dataType": "VARCHAR(50)",
            "notNull": true
          },
          {
            "physicalName": "MST00002_LoginUsr",
            "dataType": "VARCHAR(20)",
            "notNull": true
          },
          {
            "physicalName": "MST00002_LoginPwd",
            "dataType": "VARCHAR(100)",
            "notNull": true
          },
          {
            "physicalName": "MST00002_MailAddress",
            "dataType": "VARCHAR(50)",
            "notNull": true
          },
          {
            "physicalName": "MST00002_UserRole",
            "dataType": "CHAR(10)",
            "notNull": true
          },
          {
            "physicalName": "MST00002_SectionCD",
            "dataType": "CHAR(10)",
            "notNull": true
          },
          {
            "physicalName": "MST00002_DelFlg",
            "dataType": "CHAR(1)",
            "notNull": false,
            "default": "0"
          },
          {
            "physicalName": "MST00002_CreateUserCD",
            "dataType": "CHAR(10)",
            "notNull": false
          },
          {
            "physicalName": "MST00002_CreateDate",
            "dataType": "TIMESTAMP(3)",
            "notNull": false,
            "default": "Sysdate"
          },
          {
            "physicalName": "MST00002_UpdateUserCD",
            "dataType": "CHAR(10)",
            "notNull": false
          },
          {
            "physicalName": "MST00002_UpdateDate",
            "dataType": "TIMESTAMP(3)",
            "notNull": false,
            "default": "Sysdate"
          }
        ],
        "executedAt": "2026-10-18T15:49:26.3063479+09:00"
      }
    }
  ]
}
