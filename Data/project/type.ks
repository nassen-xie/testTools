{
  "types": [
    {
      "logicalName": "画面モード",
      "physicalName": "TrnMode",
      "dataType": "String(50)",
      "dbType": "VARCHAR(50)",
      "length": 50,
      "scale": null,
      "isEnum": true,
      "values": [
        { "cd": "NEW", "value": "NEW", "name": "新規" },
        { "cd": "VIEW", "value": "VIEW", "name": "詳細" },
        { "cd": "EDIT", "value": "EDIT", "name": "編集" },
        { "cd": "COPY", "value": "COPY", "name": "複製" },
        { "cd": "DEL", "value": "DEL", "name": "削除" },
        { "cd": "APPROVE", "value": "APPROVE", "name": "承認" }
      ]
    },
    {
      "logicalName": "取引先区分",
      "physicalName": "CustomerKbn",
      "dataType": "String(2)",
      "dbType": "CHAR(2)",
      "length": 2,
      "scale": null,
      "isEnum": true,
      "values": [
        { "cd": "CUSTOMER", "value": "01", "name": "得意先" },
        { "cd": "VENDOR", "value": "02", "name": "仕入先" },
        { "cd": "PARTNER", "value": "03", "name": "業者" }
      ]
    },
    {
      "logicalName": "取引区分",
      "physicalName": "TransactionKbn",
      "dataType": "String(2)",
      "dbType": "CHAR(2)",
      "length": 2,
      "scale": null,
      "isEnum": true,
      "values": [
        { "cd": "IMPORT", "value": "01", "name": "輸入" },
        { "cd": "EXPORT", "value": "02", "name": "輸出" }
      ]
    },
    {
      "logicalName": "削除フラグ",
      "physicalName": "DelFlg",
      "dataType": "String(1)",
      "dbType": "CHAR(1)",
      "length": 1,
      "scale": null,
      "isEnum": true,
      "values": [
        { "cd": "Act", "value": "0", "name": "輸入" },
        { "cd": "Del", "value": "1", "name": "輸出" }
      ]
    },
    {
      "logicalName": "担当者コード",
      "physicalName": "UserCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "length": 10,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "担当者名",
      "physicalName": "UserNM",
      "dataType": "String(50)",
      "dbType": "VARCHAR(50)",
      "length": 50,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "ログインID",
      "physicalName": "LoginUsr",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "length": 20,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "パスワード",
      "physicalName": "LoginPwd",
      "dataType": "String(100)",
      "dbType": "VARCHAR(100)",
      "length": 100,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "メールアドレス",
      "physicalName": "MailAddress",
      "dataType": "String(50)",
      "dbType": "VARCHAR(50)",
      "length": 50,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "ロール",
      "physicalName": "UserRole",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "length": 10,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "部署コード",
      "physicalName": "SectionCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "length": 10,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "商品コード",
      "physicalName": "ItemCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "length": 10,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "商品名",
      "physicalName": "ItemNM",
      "dataType": "String(200)",
      "dbType": "VARCHAR(200)",
      "length": 200,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "メーカーコード",
      "physicalName": "MakerCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "length": 10,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "品名",
      "physicalName": "Item",
      "dataType": "String(200)",
      "dbType": "VARCHAR(200)",
      "length": 200,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "品番",
      "physicalName": "ItemType",
      "dataType": "String(50)",
      "dbType": "VARCHAR(50)",
      "length": 50,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "重量",
      "physicalName": "NetWeight",
      "dataType": "Number(15,2)",
      "dbType": "DECIMAL(15,2)",
      "length": 15,
      "scale": 2,
      "isEnum": false
    },
    {
      "logicalName": "在庫管理単位",
      "physicalName": "StockUnit",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "length": 20,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "備考",
      "physicalName": "Remarks",
      "dataType": "String(200)",
      "dbType": "VARCHAR(200)",
      "length": 200,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "分類",
      "physicalName": "CategoryCD",
      "dataType": "String(3)",
      "dbType": "CHAR(3)",
      "length": 3,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "区分",
      "physicalName": "CategoryKBN",
      "dataType": "String(2)",
      "dbType": "CHAR(2)",
      "length": 2,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "分類名",
      "physicalName": "CategoryNM",
      "dataType": "String(50)",
      "dbType": "VARCHAR(50)",
      "length": 50,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "区分名",
      "physicalName": "CategoryKBNNM",
      "dataType": "String(100)",
      "dbType": "VARCHAR(100)",
      "length": 100,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "取引先コード",
      "physicalName": "CustomerCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "length": 10,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "取引先請求コード",
      "physicalName": "CustomerInvoiceCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "length": 10,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "取引先名",
      "physicalName": "CustomerNM",
      "dataType": "String(100)",
      "dbType": "VARCHAR(100)",
      "length": 100,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "取引先略称",
      "physicalName": "CustomerOmission",
      "dataType": "String(100)",
      "dbType": "VARCHAR(100)",
      "length": 100,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "地域コード",
      "physicalName": "AreaCD",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "length": 20,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "住所1",
      "physicalName": "Address1",
      "dataType": "String(100)",
      "dbType": "VARCHAR(100)",
      "length": 100,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "住所2",
      "physicalName": "Address2",
      "dataType": "String(100)",
      "dbType": "VARCHAR(100)",
      "length": 100,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "住所3",
      "physicalName": "Address3",
      "dataType": "String(100)",
      "dbType": "VARCHAR(100)",
      "length": 100,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "電話番号",
      "physicalName": "Tel",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "length": 20,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "FAX",
      "physicalName": "Fax",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "length": 20,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "郵便番号",
      "physicalName": "Zip",
      "dataType": "String(200)",
      "dbType": "VARCHAR(200)",
      "length": 200,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "発地コード",
      "physicalName": "FromPlaceCD",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "length": 20,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "仕向地コード",
      "physicalName": "ToPlaceCD",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "length": 20,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "支払条件コード",
      "physicalName": "PaymentTermsCD",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "length": 20,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "納入場所",
      "physicalName": "DeliveryLocation",
      "dataType": "String(200)",
      "dbType": "VARCHAR(200)",
      "length": 200,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "取引条件コード",
      "physicalName": "TradeTermsCD",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "length": 20,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "通貨",
      "physicalName": "Currency",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "length": 20,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "部署名",
      "physicalName": "SectionNM",
      "dataType": "String(200)",
      "dbType": "VARCHAR(200)",
      "length": 200,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "消費税端数処理区分",
      "physicalName": "TaxRoundKBN",
      "dataType": "String(2)",
      "dbType": "CHAR(2)",
      "length": 2,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "税額通知区分",
      "physicalName": "TaxCalcKBN",
      "dataType": "String(2)",
      "dbType": "CHAR(2)",
      "length": 2,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "請求書作成フラグ",
      "physicalName": "InvoiceCreateFlg",
      "dataType": "String(1)",
      "dbType": "CHAR(1)",
      "length": 1,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "原産地域コード",
      "physicalName": "RegionOfOriginCD",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "length": 20,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "見積番号",
      "physicalName": "EstimateCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "length": 10,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "日付",
      "physicalName": "Date8",
      "dataType": "Date",
      "dbType": "DATE",
      "length": null,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "日時",
      "physicalName": "DateTime3",
      "dataType": "DateTime(3)",
      "dbType": "TIMESTAMP(3)",
      "length": 3,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "使用時期",
      "physicalName": "UsagePeriod",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "length": 20,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "保険コード",
      "physicalName": "InsuranceCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "length": 10,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "レート",
      "physicalName": "Rate",
      "dataType": "Number(3,2)",
      "dbType": "DECIMAL(3,2)",
      "length": 3,
      "scale": 2,
      "isEnum": false
    },
    {
      "logicalName": "取引銀行コード",
      "physicalName": "OwnBankCD",
      "dataType": "String(10)",
      "dbType": "CHAR(10)",
      "length": 10,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "見積ステータス",
      "physicalName": "EstimateStatus",
      "dataType": "String(2)",
      "dbType": "CHAR(2)",
      "length": 2,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "承認不要フラグ",
      "physicalName": "AgreementNoneedFlg",
      "dataType": "String(1)",
      "dbType": "CHAR(1)",
      "length": 1,
      "scale": null,
      "isEnum": false
    },
    {
      "logicalName": "数量",
      "physicalName": "Quantity",
      "dataType": "Number(10,2)",
      "dbType": "DECIMAL(10,2)",
      "length": 10,
      "scale": 2,
      "isEnum": false
    },
    {
      "logicalName": "単価",
      "physicalName": "Price",
      "dataType": "Number(10,2)",
      "dbType": "DECIMAL(10,2)",
      "length": 10,
      "scale": 2,
      "isEnum": false
    },
    {
      "logicalName": "金額",
      "physicalName": "Amount",
      "dataType": "Number(15,3)",
      "dbType": "DECIMAL(15,3)",
      "length": 15,
      "scale": 3,
      "isEnum": false
    },
    {
      "logicalName": "消費税税率",
      "physicalName": "TaxRate",
      "dataType": "Number(3,2)",
      "dbType": "DECIMAL(3,2)",
      "length": 3,
      "scale": 2,
      "isEnum": false
    },
    {
      "logicalName": "単位",
      "physicalName": "Unit",
      "dataType": "String(20)",
      "dbType": "VARCHAR(20)",
      "length": 20,
      "scale": null,
      "isEnum": false
    }
  ]
}
