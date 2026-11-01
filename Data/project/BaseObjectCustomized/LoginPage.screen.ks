{
  "screenId": "LoginPage",
  "screenName": "",
  "noBaseTemplate": true,
  "variables": [
    {
      "logicalName": "ログイン ID",
      "physicalName": "loginId",
      "baseType": "String(100)",
      "dataType": "VARCHAR(100)",
      "isArray": false
    },
    {
      "logicalName": "パスワード",
      "physicalName": "password",
      "baseType": "String(100)",
      "dataType": "VARCHAR(100)",
      "isArray": false
    },
    {
      "logicalName": "ログイン状態を保つ",
      "physicalName": "rememberMe",
      "baseType": "Boolean",
      "dataType": "BOOLEAN",
      "isArray": false
    }
  ],
  "interface": [],
  "nodes": [
    {
      "kind": "Table",
      "physicalName": "TableMain",
      "logicalName": "メイン",
      "partType": "Text",
      "required": false,
      "maxLength": 0,
      "minLength": 0,
      "options": "",
      "captionVisible": true,
      "visible": true,
      "width": "360px",
      "verticalAlign": "Center",
      "children": [
        {
          "kind": "Panel",
          "physicalName": "panel",
          "logicalName": "ログイン",
          "partType": "Text",
          "required": false,
          "maxLength": 0,
          "minLength": 0,
          "options": "",
          "captionVisible": true,
          "visible": true,
          "children": [
            {
              "kind": "Label",
              "physicalName": "loginError",
              "logicalName": "ログイン ID またはパスワードが違います。",
              "partType": "Text",
              "required": false,
              "maxLength": 0,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "captionPercentage": "100%",
              "visible": true
            },
            {
              "kind": "Label",
              "physicalName": "loginLogout",
              "logicalName": "ログアウトしました。",
              "partType": "Text",
              "required": false,
              "maxLength": 0,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "captionPercentage": "100%",
              "visible": true
            },
            {
              "kind": "Label",
              "physicalName": "devNotice",
              "logicalName": "開発環境：ログイン ID admin・パスワード password でログインできます。",
              "partType": "Text",
              "required": false,
              "maxLength": 0,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "captionPercentage": "100%",
              "visible": true
            },
            {
              "kind": "Variable",
              "physicalName": "loginId",
              "logicalName": "ログイン ID",
              "variable": "loginId",
              "partType": "Text",
              "required": true,
              "maxLength": 100,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "captionPercentage": "25%",
              "visible": true
            },
            {
              "kind": "Variable",
              "physicalName": "password",
              "logicalName": "パスワード",
              "variable": "password",
              "partType": "Password",
              "required": true,
              "maxLength": 100,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "captionPercentage": "25%",
              "visible": true
            },
            {
              "kind": "Variable",
              "physicalName": "rememberMe",
              "logicalName": "ログイン状態を保つ",
              "variable": "rememberMe",
              "partType": "Checkbox",
              "required": false,
              "maxLength": 0,
              "minLength": 0,
              "options": "",
              "captionVisible": false,
              "captionPercentage": "25%",
              "visible": true
            }
          ]
        },
        {
          "kind": "ButtonGroup",
          "physicalName": "buttonGroup",
          "logicalName": "ボタン",
          "partType": "Text",
          "required": false,
          "maxLength": 0,
          "minLength": 0,
          "options": "",
          "captionVisible": false,
          "visible": true,
          "textAlign": "Center",
          "children": [
            {
              "kind": "Button",
              "physicalName": "btnLogin",
              "logicalName": "ログイン",
              "partType": "Text",
              "required": false,
              "maxLength": 0,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "visible": true
            }
          ]
        }
      ]
    }
  ]
}
