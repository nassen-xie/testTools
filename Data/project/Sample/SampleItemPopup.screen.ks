{
  "screenId": "SampleItemPopup",
  "screenName": "商品選択画面",
  "baseLayout": "WebPageLayoutForPopup",
  "noBaseTemplate": true,
  "popup": true,
  "popupWidth": "1200px",
  "popupHeight": "860px",
  "variables": [
    {
      "logicalName": "商品コード",
      "physicalName": "pioItemCd",
      "baseType": "String(10)",
      "dataType": "VARCHAR(10)",
      "scope": "interface",
      "isArray": false,
      "direction": "inout"
    },
    {
      "logicalName": "商品名",
      "physicalName": "poItemNm",
      "baseType": "String(20)",
      "dataType": "VARCHAR(20)",
      "scope": "interface",
      "isArray": false,
      "direction": "out"
    },
    {
      "logicalName": "商品情報",
      "physicalName": "SampleItem",
      "baseType": "SampleItemSDT",
      "dataType": "",
      "isArray": false
    },
    {
      "logicalName": "商品情報",
      "physicalName": "SampleItem_tmp",
      "baseType": "SampleItemSDT",
      "dataType": "",
      "isArray": false
    },
    {
      "logicalName": "商品情報",
      "physicalName": "SampleItems",
      "baseType": "SampleItemSDT",
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
      "logicalName": "商品コード",
      "physicalName": "pioItemCd",
      "baseType": "String(10)",
      "dataType": "VARCHAR(10)",
      "isArray": false,
      "direction": "inout"
    },
    {
      "logicalName": "商品名",
      "physicalName": "poItemNm",
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
              "physicalName": "ItemCd",
              "logicalName": "商品コード",
              "variable": "SampleItem.ItemCd",
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
              "physicalName": "ItemNm",
              "logicalName": "商品名",
              "variable": "SampleItem.ItemNm",
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
          "kind": "DataGrid",
          "physicalName": "SampleItems",
          "logicalName": "ユーザー情報",
          "variable": "SampleItems",
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
              "physicalName": "ItemCd",
              "logicalName": "商品コード",
              "variable": "SampleItems.ItemCd",
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
              "physicalName": "ItemNm",
              "logicalName": "商品名",
              "variable": "SampleItems.ItemNm",
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
              "physicalName": "Quantity",
              "logicalName": "数量",
              "variable": "SampleItems.Quantity",
              "partType": "Number",
              "required": false,
              "maxLength": 0,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "visible": true
            },
            {
              "kind": "Variable",
              "physicalName": "Price",
              "logicalName": "単価",
              "variable": "SampleItems.Price",
              "partType": "Number",
              "required": false,
              "maxLength": 0,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "visible": true
            },
            {
              "kind": "Variable",
              "physicalName": "Amount",
              "logicalName": "金額",
              "variable": "SampleItems.Amount",
              "partType": "Number",
              "required": false,
              "maxLength": 0,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
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
              "buttonStyle": "Primary"
            }
          ]
        }
      ]
    }
  ]
}
