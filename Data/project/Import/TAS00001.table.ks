{
  "no": 6,
  "logicalName": "見積テーブル",
  "physicalName": "TAS00001",
  "remarks": null,
  "primaryKey": [
    "TAS00001_EstimateCD",
    "TAS00001_TaxRound"
  ],
  "columns": [
    {
      "no": 1,
      "logicalName": "見積番号",
      "physicalName": "TAS00001_EstimateCD",
      "baseType": "EstimateCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": true,
      "primaryKeyOrder": 1,
      "default": null,
      "remarks": null
    },
    {
      "no": 2,
      "logicalName": "取引区分",
      "physicalName": "TAS00001_TransactionKbn",
      "baseType": "TransactionKbn",
      "dataType": "String(2)",
      "dbType": "CHAR(2)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 3,
      "logicalName": "見積日",
      "physicalName": "TAS00001_EstimateDate",
      "baseType": "Date8",
      "dataType": "Date",
      "dbType": "DATE",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 4,
      "logicalName": "担当者コード",
      "physicalName": "TAS00001_UserCD",
      "baseType": "UserCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 5,
      "logicalName": "得意先コード",
      "physicalName": "TAS00001_CustomerCD",
      "baseType": "CustomerCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 6,
      "logicalName": "取引条件コード",
      "physicalName": "TAS00001_TradeTermsCD",
      "baseType": "TradeTermsCD",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 7,
      "logicalName": "支払条件コード",
      "physicalName": "TAS00001_PaymentTermsCD",
      "baseType": "PaymentTermsCD",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 8,
      "logicalName": "メーカーコード",
      "physicalName": "TAS00001_MakerCD",
      "baseType": "MakerCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 9,
      "logicalName": "仕向地コード",
      "physicalName": "TAS00001_ToPlaceCD",
      "baseType": "ToPlaceCD",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 10,
      "logicalName": "納入場所",
      "physicalName": "TAS00001_DeliveryLocation",
      "baseType": "DeliveryLocation",
      "dataType": "String(200)",
      "dbType": "VARCHAR(200)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 11,
      "logicalName": "原産地域コード",
      "physicalName": "TAS00001_RegionOfOriginCD",
      "baseType": "RegionOfOriginCD",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 12,
      "logicalName": "見積有効期限",
      "physicalName": "TAS00001_ExpirationDate",
      "baseType": "Date8",
      "dataType": "Date",
      "dbType": "DATE",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 13,
      "logicalName": "使用時期",
      "physicalName": "TAS00001_UsagePeriod",
      "baseType": "UsagePeriod",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 14,
      "logicalName": "保険コード",
      "physicalName": "TAS00001_InsuranceCD",
      "baseType": "InsuranceCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 15,
      "logicalName": "通貨",
      "physicalName": "TAS00001_Currency",
      "baseType": "Currency",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 16,
      "logicalName": "レート",
      "physicalName": "TAS00001_Rate",
      "baseType": "Rate",
      "dataType": "Number(3,2)",
      "dbType": "DECIMAL(3,2)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 17,
      "logicalName": "取引銀行コード",
      "physicalName": "TAS00001_OwnBankCode",
      "baseType": "OwnBankCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 18,
      "logicalName": "消費税端数処理区分",
      "physicalName": "TAS00001_TaxRound",
      "baseType": "TaxRoundKBN",
      "dataType": "String(2)",
      "dbType": "CHAR(2)",
      "notNull": true,
      "primaryKeyOrder": 2,
      "default": null,
      "remarks": null
    },
    {
      "no": 19,
      "logicalName": "消費税税率",
      "physicalName": "TAS00001_TaxRate",
      "baseType": "TaxRate",
      "dataType": "Number(3,2)",
      "dbType": "DECIMAL(3,2)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 20,
      "logicalName": "金額",
      "physicalName": "TAS00001_Amount",
      "baseType": "Amount",
      "dataType": "Number(15,3)",
      "dbType": "DECIMAL(15,3)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 21,
      "logicalName": "消費税金額",
      "physicalName": "TAS00001_TaxAmount",
      "baseType": "Amount",
      "dataType": "Number(15,3)",
      "dbType": "DECIMAL(15,3)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 22,
      "logicalName": "円貨換算金額",
      "physicalName": "TAS00001_YenCurrencyAmount",
      "baseType": "Amount",
      "dataType": "Number(15,3)",
      "dbType": "DECIMAL(15,3)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 23,
      "logicalName": "円貨換算消費税金額",
      "physicalName": "TAS00001_YenCurrencyTaxAmount",
      "baseType": "Amount",
      "dataType": "Number(15,3)",
      "dbType": "DECIMAL(15,3)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 24,
      "logicalName": "備考",
      "physicalName": "TAS00001_Remarks",
      "baseType": "Remarks",
      "dataType": "String(200)",
      "dbType": "VARCHAR(200)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 25,
      "logicalName": "見積ステータス",
      "physicalName": "TAS00001_EstimateStatus",
      "baseType": "EstimateStatus",
      "dataType": "String(2)",
      "dbType": "CHAR(2)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 26,
      "logicalName": "承認不要フラグ",
      "physicalName": "TAS00001_AgreementNoneedFlg",
      "baseType": "AgreementNoneedFlg",
      "dataType": "String(1)",
      "dbType": "CHAR(1)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 27,
      "logicalName": "差戻し日",
      "physicalName": "TAS00001_FbDate",
      "baseType": "Date8",
      "dataType": "Date",
      "dbType": "DATE",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 28,
      "logicalName": "差戻しコメント",
      "physicalName": "TAS00001_FbComment",
      "baseType": "Remarks",
      "dataType": "String(200)",
      "dbType": "VARCHAR(200)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 29,
      "logicalName": "申請日",
      "physicalName": "TAS00001_RequestDate",
      "baseType": "Date8",
      "dataType": "Date",
      "dbType": "DATE",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 30,
      "logicalName": "承認日",
      "physicalName": "TAS00001_AgreementDate",
      "baseType": "Date8",
      "dataType": "Date",
      "dbType": "DATE",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 31,
      "logicalName": "承認者",
      "physicalName": "TAS00001_Authorizer",
      "baseType": "UserCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 32,
      "logicalName": "最終承認日",
      "physicalName": "TAS00001_FinalAgreementDate",
      "baseType": "Date8",
      "dataType": "Date",
      "dbType": "DATE",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 33,
      "logicalName": "最終承認者",
      "physicalName": "TAS00001_FinalAuthorizer",
      "baseType": "UserCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 34,
      "logicalName": "削除フラグ",
      "physicalName": "TAS00001_DelFlg",
      "baseType": "DelFlg",
      "dataType": "String(1)",
      "dbType": "CHAR(1)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": "0",
      "remarks": null
    },
    {
      "no": 35,
      "logicalName": "作成者",
      "physicalName": "TAS00001_CreateUserCD",
      "baseType": "UserCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 36,
      "logicalName": "作成日時",
      "physicalName": "TAS00001_CreateDate",
      "baseType": "DateTime3",
      "dataType": "DateTime(3)",
      "dbType": "TIMESTAMP(3)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": "Sysdate",
      "remarks": null
    },
    {
      "no": 37,
      "logicalName": "更新者",
      "physicalName": "TAS00001_UpdateUserCD",
      "baseType": "UserCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "notNull": false,
      "primaryKeyOrder": null,
      "default": null,
      "remarks": null
    },
    {
      "no": 38,
      "logicalName": "更新日時",
      "physicalName": "TAS00001_UpdateDate",
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
      "name": "担当者",
      "table": "MST00002",
      "on": [
        {
          "column": "TAS00001_UserCD",
          "refColumn": "MST00002_UserCD"
        }
      ],
      "remarks": "見積の担当者（担当者の部署は Join 担当者.部署）"
    },
    {
      "name": "取引先",
      "table": "MST00004",
      "on": [
        {
          "column": "TAS00001_CustomerCD",
          "refColumn": "MST00004_CustomerCD"
        }
      ],
      "remarks": "見積の取引先"
    }
  ],
  "ddlHistory": [
    {
      "createdAt": "2026-10-18T15:49:28.2368557+09:00",
      "kind": "create",
      "dbKind": "Oracle",
      "ddl": [
        "-- 見積テーブル（TAS00001）：テーブル作成（Oracle）",
        "",
        "CREATE TABLE TAS00001 (",
        "    TAS00001_EstimateCD CHAR(10) NOT NULL,",
        "    TAS00001_TransactionKbn CHAR(2),",
        "    TAS00001_EstimateDate DATE,",
        "    TAS00001_UserCD CHAR(10),",
        "    TAS00001_CustomerCD CHAR(10),",
        "    TAS00001_TradeTermsCD VARCHAR(20),",
        "    TAS00001_PaymentTermsCD VARCHAR(20),",
        "    TAS00001_MakerCD CHAR(10),",
        "    TAS00001_ToPlaceCD VARCHAR(20),",
        "    TAS00001_DeliveryLocation VARCHAR(200),",
        "    TAS00001_RegionOfOriginCD VARCHAR(20),",
        "    TAS00001_ExpirationDate DATE,",
        "    TAS00001_UsagePeriod VARCHAR(20),",
        "    TAS00001_InsuranceCD CHAR(10),",
        "    TAS00001_Currency VARCHAR(20),",
        "    TAS00001_Rate DECIMAL(3,2),",
        "    TAS00001_OwnBankCode CHAR(10),",
        "    TAS00001_TaxRound CHAR(2) NOT NULL,",
        "    TAS00001_TaxRate DECIMAL(3,2),",
        "    TAS00001_Amount DECIMAL(15,3),",
        "    TAS00001_TaxAmount DECIMAL(15,3),",
        "    TAS00001_YenCurrencyAmount DECIMAL(15,3),",
        "    TAS00001_YenCurrencyTaxAmount DECIMAL(15,3),",
        "    TAS00001_Remarks VARCHAR(200),",
        "    TAS00001_EstimateStatus CHAR(2),",
        "    TAS00001_AgreementNoneedFlg CHAR(1),",
        "    TAS00001_FbDate DATE,",
        "    TAS00001_FbComment VARCHAR(200),",
        "    TAS00001_RequestDate DATE,",
        "    TAS00001_AgreementDate DATE,",
        "    TAS00001_Authorizer CHAR(10),",
        "    TAS00001_FinalAgreementDate DATE,",
        "    TAS00001_FinalAuthorizer CHAR(10),",
        "    TAS00001_DelFlg CHAR(1) DEFAULT 0,",
        "    TAS00001_CreateUserCD CHAR(10),",
        "    TAS00001_CreateDate TIMESTAMP(3) DEFAULT Sysdate,",
        "    TAS00001_UpdateUserCD CHAR(10),",
        "    TAS00001_UpdateDate TIMESTAMP(3) DEFAULT Sysdate,",
        "    CONSTRAINT PK_TAS00001 PRIMARY KEY (TAS00001_EstimateCD, TAS00001_TaxRound)",
        ");",
        "",
        "COMMENT ON TABLE TAS00001 IS '見積テーブル';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_EstimateCD IS '見積番号';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_TransactionKbn IS '取引区分';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_EstimateDate IS '見積日';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_UserCD IS '担当者コード';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_CustomerCD IS '得意先コード';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_TradeTermsCD IS '取引条件コード';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_PaymentTermsCD IS '支払条件コード';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_MakerCD IS 'メーカーコード';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_ToPlaceCD IS '仕向地コード';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_DeliveryLocation IS '納入場所';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_RegionOfOriginCD IS '原産地域コード';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_ExpirationDate IS '見積有効期限';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_UsagePeriod IS '使用時期';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_InsuranceCD IS '保険コード';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_Currency IS '通貨';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_Rate IS 'レート';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_OwnBankCode IS '取引銀行コード';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_TaxRound IS '消費税端数処理区分';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_TaxRate IS '消費税税率';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_Amount IS '金額';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_TaxAmount IS '消費税金額';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_YenCurrencyAmount IS '円貨換算金額';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_YenCurrencyTaxAmount IS '円貨換算消費税金額';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_Remarks IS '備考';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_EstimateStatus IS '見積ステータス';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_AgreementNoneedFlg IS '承認不要フラグ';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_FbDate IS '差戻し日';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_FbComment IS '差戻しコメント';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_RequestDate IS '申請日';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_AgreementDate IS '承認日';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_Authorizer IS '承認者';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_FinalAgreementDate IS '最終承認日';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_FinalAuthorizer IS '最終承認者';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_DelFlg IS '削除フラグ';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_CreateUserCD IS '作成者';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_CreateDate IS '作成日時';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_UpdateUserCD IS '更新者';",
        "",
        "COMMENT ON COLUMN TAS00001.TAS00001_UpdateDate IS '更新日時';"
      ],
      "definition": {
        "physicalName": "TAS00001",
        "columns": [
          {
            "physicalName": "TAS00001_EstimateCD",
            "dataType": "CHAR(10)",
            "notNull": true,
            "primaryKeyOrder": 1
          },
          {
            "physicalName": "TAS00001_TransactionKbn",
            "dataType": "CHAR(2)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_EstimateDate",
            "dataType": "DATE",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_UserCD",
            "dataType": "CHAR(10)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_CustomerCD",
            "dataType": "CHAR(10)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_TradeTermsCD",
            "dataType": "VARCHAR(20)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_PaymentTermsCD",
            "dataType": "VARCHAR(20)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_MakerCD",
            "dataType": "CHAR(10)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_ToPlaceCD",
            "dataType": "VARCHAR(20)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_DeliveryLocation",
            "dataType": "VARCHAR(200)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_RegionOfOriginCD",
            "dataType": "VARCHAR(20)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_ExpirationDate",
            "dataType": "DATE",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_UsagePeriod",
            "dataType": "VARCHAR(20)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_InsuranceCD",
            "dataType": "CHAR(10)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_Currency",
            "dataType": "VARCHAR(20)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_Rate",
            "dataType": "DECIMAL(3,2)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_OwnBankCode",
            "dataType": "CHAR(10)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_TaxRound",
            "dataType": "CHAR(2)",
            "notNull": true,
            "primaryKeyOrder": 2
          },
          {
            "physicalName": "TAS00001_TaxRate",
            "dataType": "DECIMAL(3,2)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_Amount",
            "dataType": "DECIMAL(15,3)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_TaxAmount",
            "dataType": "DECIMAL(15,3)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_YenCurrencyAmount",
            "dataType": "DECIMAL(15,3)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_YenCurrencyTaxAmount",
            "dataType": "DECIMAL(15,3)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_Remarks",
            "dataType": "VARCHAR(200)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_EstimateStatus",
            "dataType": "CHAR(2)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_AgreementNoneedFlg",
            "dataType": "CHAR(1)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_FbDate",
            "dataType": "DATE",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_FbComment",
            "dataType": "VARCHAR(200)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_RequestDate",
            "dataType": "DATE",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_AgreementDate",
            "dataType": "DATE",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_Authorizer",
            "dataType": "CHAR(10)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_FinalAgreementDate",
            "dataType": "DATE",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_FinalAuthorizer",
            "dataType": "CHAR(10)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_DelFlg",
            "dataType": "CHAR(1)",
            "notNull": false,
            "default": "0"
          },
          {
            "physicalName": "TAS00001_CreateUserCD",
            "dataType": "CHAR(10)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_CreateDate",
            "dataType": "TIMESTAMP(3)",
            "notNull": false,
            "default": "Sysdate"
          },
          {
            "physicalName": "TAS00001_UpdateUserCD",
            "dataType": "CHAR(10)",
            "notNull": false
          },
          {
            "physicalName": "TAS00001_UpdateDate",
            "dataType": "TIMESTAMP(3)",
            "notNull": false,
            "default": "Sysdate"
          }
        ],
        "executedAt": "2026-10-18T15:49:28.2368731+09:00"
      }
    }
  ]
}
