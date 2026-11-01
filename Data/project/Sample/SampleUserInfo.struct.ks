{
  "name": "SampleUserInfo",
  "caption": "ユーザー情報",
  "members": [
    {
      "logicalName": "担当者コード",
      "physicalName": "UserCd",
      "baseType": "String(10)",
      "dataType": "VARCHAR(10)",
      "isArray": false
    },
    {
      "logicalName": "担当者名",
      "physicalName": "UserNm",
      "baseType": "String(20)",
      "dataType": "VARCHAR(20)",
      "isArray": false
    },
    {
      "logicalName": "住所",
      "physicalName": "Address",
      "baseType": "String(50)",
      "dataType": "VARCHAR(50)",
      "isArray": false
    },
    {
      "logicalName": "連絡先",
      "physicalName": "Contact",
      "dataType": "",
      "isArray": false,
      "members": [
        {
          "logicalName": "メールアドレス",
          "physicalName": "Mail",
          "baseType": "String(50)",
          "dataType": "VARCHAR(50)",
          "isArray": false
        },
        {
          "logicalName": "電話番号",
          "physicalName": "Tel",
          "baseType": "String(20)",
          "dataType": "VARCHAR(20)",
          "isArray": false
        }
      ]
    }
  ]
}