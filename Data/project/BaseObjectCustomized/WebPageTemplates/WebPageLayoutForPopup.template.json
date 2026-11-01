{
  "screenId": "WebPageLayoutForPopup",
  "screenName": "ポップアップ画面（標準）",
  "popup": true,
  "popupWidth": "1200px",
  "popupHeight": "860px",
  "variables": [
    {
      "logicalName": "担当者コード",
      "physicalName": "pioUserCd",
      "baseType": "String(10)",
      "dataType": "VARCHAR(10)",
      "scope": "interface",
      "isArray": false,
      "direction": "inout"
    },
    {
      "logicalName": "担当者名",
      "physicalName": "poUserNm",
      "baseType": "String(20)",
      "dataType": "VARCHAR(20)",
      "scope": "interface",
      "isArray": false,
      "direction": "out"
    },
    {
      "logicalName": "ユーザー情報",
      "physicalName": "SampleUserInfo",
      "baseType": "SampleUserInfo",
      "dataType": "",
      "isArray": false
    },
    {
      "logicalName": "ユーザー情報",
      "physicalName": "SampleUserInfo_tmp",
      "baseType": "SampleUserInfo",
      "dataType": "",
      "isArray": false
    },
    {
      "logicalName": "ユーザー情報",
      "physicalName": "SampleUserInfos",
      "baseType": "SampleUserInfo",
      "dataType": "",
      "isArray": true
    },
    {
      "logicalName": "",
      "physicalName": "i",
      "baseType": "Number(9)",
      "dataType": "INTEGER(9)",
      "isArray": false
    }
  ],
  "interface": [
    {
      "logicalName": "担当者コード",
      "physicalName": "pioUserCd",
      "baseType": "String(10)",
      "dataType": "VARCHAR(10)",
      "isArray": false,
      "direction": "inout"
    },
    {
      "logicalName": "担当者名",
      "physicalName": "poUserNm",
      "baseType": "String(20)",
      "dataType": "VARCHAR(20)",
      "isArray": false,
      "direction": "out"
    }
  ],
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
      "captionVisible": false,
      "visible": true,
      "children": [
        {
          "kind": "Panel",
          "physicalName": "SearchPanel",
          "logicalName": "検索条件",
          "partType": "Text",
          "required": false,
          "maxLength": 0,
          "minLength": 0,
          "options": "",
          "captionVisible": false,
          "className": "",
          "visible": true,
          "children": [
            {
              "kind": "Variable",
              "physicalName": "UserCd",
              "logicalName": "担当者コード",
              "variable": "SampleUserInfo.UserCd",
              "partType": "Text",
              "required": false,
              "maxLength": 10,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "captionPercentage": "25%",
              "visible": true
            },
            {
              "kind": "Variable",
              "physicalName": "UserNm",
              "logicalName": "担当者名",
              "variable": "SampleUserInfo.UserNm",
              "partType": "Text",
              "required": false,
              "maxLength": 20,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "captionPercentage": "25%",
              "visible": true
            }
          ]
        },
        {
          "kind": "DataGrid",
          "physicalName": "SampleUserInfos",
          "logicalName": "ユーザー情報",
          "variable": "SampleUserInfos",
          "partType": "Text",
          "required": false,
          "maxLength": 0,
          "minLength": 0,
          "options": "",
          "captionVisible": false,
          "visible": true,
          "children": [
            {
              "kind": "RowNumber",
              "physicalName": "SEQ",
              "logicalName": "No",
              "partType": "Text",
              "required": false,
              "maxLength": 0,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "visible": true
            },
            {
              "kind": "Variable",
              "physicalName": "UserCd",
              "logicalName": "担当者コード",
              "variable": "SampleUserInfos.UserCd",
              "partType": "Text",
              "required": false,
              "maxLength": 10,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "visible": true
            },
            {
              "kind": "Variable",
              "physicalName": "UserNm",
              "logicalName": "担当者名",
              "variable": "SampleUserInfos.UserNm",
              "partType": "Text",
              "required": false,
              "maxLength": 20,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "visible": true
            },
            {
              "kind": "Variable",
              "physicalName": "Address",
              "logicalName": "住所",
              "variable": "SampleUserInfos.Address",
              "partType": "Text",
              "required": false,
              "maxLength": 50,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "visible": true
            },
            {
              "kind": "Variable",
              "physicalName": "Contact",
              "logicalName": "連絡先",
              "variable": "SampleUserInfos.Contact",
              "partType": "Text",
              "required": false,
              "maxLength": 0,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "visible": true,
              "children": [
                {
                  "kind": "Variable",
                  "physicalName": "Mail",
                  "logicalName": "メールアドレス",
                  "variable": "SampleUserInfos.Contact.Mail",
                  "partType": "Text",
                  "required": false,
                  "maxLength": 50,
                  "minLength": 0,
                  "options": "",
                  "captionVisible": true,
                  "visible": true
                },
                {
                  "kind": "Variable",
                  "physicalName": "Tel",
                  "logicalName": "電話番号",
                  "variable": "SampleUserInfos.Contact.Tel",
                  "partType": "Text",
                  "required": false,
                  "maxLength": 20,
                  "minLength": 0,
                  "options": "",
                  "captionVisible": true,
                  "visible": true
                }
              ]
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
          "foreColor": "#C91DC9",
          "underline": true,
          "strikeout": true,
          "verticalAlign": "Center",
          "children": [
            {
              "kind": "Button",
              "physicalName": "btnEnter",
              "logicalName": "確定",
              "partType": "Text",
              "required": false,
              "maxLength": 0,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "visible": true,
              "skipValidation": true,
              "buttonStyle": "Primary"
            }
          ]
        },
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
        }
      ]
    }
  ]
}
