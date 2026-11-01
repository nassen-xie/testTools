{
  "name": "getUsers",
  "caption": "取引先マスタモジュール",
  "variables": [
    {
      "logicalName": "ユーザコード",
      "physicalName": "UserCD",
      "baseType": "MST00002.MST00002_UserCD",
      "dataType": "VARCHAR(10)",
      "scope": "interface",
      "isArray": false,
      "direction": "in"
    },
    {
      "logicalName": "ユーザ名",
      "physicalName": "UserNm",
      "baseType": "MST00002.MST00002_UserNM",
      "dataType": "VARCHAR(50)",
      "scope": "interface",
      "isArray": false,
      "direction": "in"
    },
    {
      "logicalName": "担当者マスタ",
      "physicalName": "Users",
      "baseType": "MST00002",
      "dataType": "",
      "scope": "interface",
      "isArray": true,
      "direction": "out"
    }
  ],
  "interface": [
    {
      "logicalName": "ユーザコード",
      "physicalName": "UserCD",
      "baseType": "MST00002.MST00002_UserCD",
      "dataType": "VARCHAR(10)",
      "isArray": false,
      "direction": "in"
    },
    {
      "logicalName": "ユーザ名",
      "physicalName": "UserNm",
      "baseType": "MST00002.MST00002_UserNM",
      "dataType": "VARCHAR(50)",
      "isArray": false,
      "direction": "in"
    },
    {
      "logicalName": "担当者マスタ",
      "physicalName": "Users",
      "baseType": "MST00002",
      "dataType": "",
      "isArray": true,
      "direction": "out"
    }
  ]
}
