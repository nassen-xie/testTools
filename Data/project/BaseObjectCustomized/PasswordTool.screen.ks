{
  "screenId": "PasswordTool",
  "screenName": "パスワードのハッシュ（開発用）",
  "baseLayout": "WebPageLayoutForUsually",
  "variables": [
    {
      "logicalName": "パスワード",
      "physicalName": "plain",
      "baseType": "String(100)",
      "dataType": "",
      "isArray": false
    },
    {
      "logicalName": "ハッシュ",
      "physicalName": "hash",
      "baseType": "String(100)",
      "dataType": "",
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
      "width": "640px",
      "children": [
        {
          "kind": "MessageView",
          "physicalName": "messageView",
          "logicalName": "メッセージ",
          "partType": "Text",
          "required": false,
          "maxLength": 0,
          "minLength": 0,
          "options": "",
          "captionVisible": false,
          "visible": true,
          "collapsed": true
        },
        {
          "kind": "Variable",
          "physicalName": "plain",
          "logicalName": "パスワード",
          "variable": "plain",
          "partType": "Password",
          "required": false,
          "maxLength": 100,
          "minLength": 0,
          "options": "",
          "captionVisible": true,
          "captionPercentage": "25%",
          "visible": true
        },
        {
          "kind": "Variable",
          "physicalName": "hash",
          "logicalName": "ハッシュ",
          "variable": "hash",
          "partType": "Text",
          "required": false,
          "maxLength": 100,
          "minLength": 0,
          "options": "",
          "captionVisible": true,
          "captionPercentage": "25%",
          "visible": true
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
          "children": [
            {
              "kind": "Button",
              "physicalName": "btnHash",
              "logicalName": "ハッシュを作る",
              "partType": "Text",
              "required": false,
              "maxLength": 0,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "visible": true,
              "icon": "ok"
            },
            {
              "kind": "Button",
              "physicalName": "btnCheck",
              "logicalName": "照合",
              "partType": "Text",
              "required": false,
              "maxLength": 0,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "visible": true,
              "icon": "search"
            }
          ]
        }
      ]
    }
  ]
}
