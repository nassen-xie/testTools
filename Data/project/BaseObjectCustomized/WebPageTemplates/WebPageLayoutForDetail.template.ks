{
  "screenId": "WebPageLayoutForDetail",
  "screenName": "詳細画面（標準）",
  "baseLayout": "WebPageBaseLayout",
  "variables": [
    {
      "logicalName": "画面モード",
      "physicalName": "piTrnMode",
      "baseType": "TrnMode",
      "dataType": "VARCHAR(50)",
      "scope": "interface",
      "isArray": false,
      "direction": "in"
    },
    {
      "logicalName": "見積番号",
      "physicalName": "piEstimateCD",
      "baseType": "String(20)",
      "dataType": "VARCHAR(20)",
      "scope": "interface",
      "isArray": false,
      "direction": "in"
    },
    {
      "logicalName": "メッセージStruct",
      "physicalName": "poMessage",
      "baseType": "Message",
      "dataType": "MESSAGE",
      "scope": "interface",
      "isArray": false,
      "direction": "out"
    },
    {
      "logicalName": "見積",
      "physicalName": "SampleEstimate",
      "baseType": "SampleEstimateSDT",
      "dataType": "",
      "isArray": false
    },
    {
      "logicalName": "見積明細",
      "physicalName": "SampleEstimateDetails",
      "baseType": "SampleEstimateDetailSDT",
      "dataType": "",
      "isArray": true
    },
    {
      "logicalName": "見積明細",
      "physicalName": "SampleEstimateDetail",
      "baseType": "SampleEstimateDetailSDT",
      "dataType": "",
      "isArray": false
    },
    {
      "logicalName": "Res",
      "physicalName": "Res",
      "baseType": "Boolean",
      "dataType": "BOOLEAN",
      "isArray": false
    },
    {
      "logicalName": "楽観排他の情報",
      "physicalName": "Info",
      "baseType": "Optimistic",
      "dataType": "",
      "isArray": false
    },
    {
      "logicalName": "メッセージ",
      "physicalName": "Message",
      "baseType": "String(200)",
      "dataType": "VARCHAR(200)",
      "isArray": false
    },
    {
      "logicalName": "新しい更新日時",
      "physicalName": "NewDate",
      "baseType": "DateTime(3)",
      "dataType": "DATETIME(3)",
      "isArray": false
    },
    {
      "logicalName": "ログインしている担当者",
      "physicalName": "UserCd",
      "baseType": "String(20)",
      "dataType": "VARCHAR(20)",
      "isArray": false
    },
    {
      "logicalName": "セッション",
      "physicalName": "Session",
      "baseType": "Session",
      "dataType": "SESSION",
      "isArray": false
    },
    {
      "logicalName": "メッセージ",
      "physicalName": "ErrorMsgs",
      "baseType": "Message",
      "dataType": "MESSAGE",
      "isArray": true
    },
    {
      "logicalName": "",
      "physicalName": "i",
      "baseType": "Number(9)",
      "dataType": "INTEGER(9)",
      "isArray": false
    },
    {
      "logicalName": "採番見積番号",
      "physicalName": "NewEstimateCD",
      "baseType": "String(20)",
      "dataType": "VARCHAR(20)",
      "isArray": false
    }
  ],
  "interface": [
    {
      "logicalName": "画面モード",
      "physicalName": "piTrnMode",
      "baseType": "TrnMode",
      "dataType": "VARCHAR(50)",
      "isArray": false,
      "direction": "in"
    },
    {
      "logicalName": "見積番号",
      "physicalName": "piEstimateCD",
      "baseType": "String(20)",
      "dataType": "VARCHAR(20)",
      "isArray": false,
      "direction": "in"
    },
    {
      "logicalName": "メッセージStruct",
      "physicalName": "poMessage",
      "baseType": "Message",
      "dataType": "MESSAGE",
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
      "cellWidthAuto": true,
      "mergeWithPrevious": true,
      "children": [
        {
          "kind": "Panel",
          "physicalName": "panelDetail",
          "logicalName": "パネル",
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
              "physicalName": "btnBack",
              "logicalName": "戻る",
              "partType": "Text",
              "required": false,
              "maxLength": 0,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "visible": true,
              "skipValidation": true,
              "buttonStyle": "Primary",
              "icon": "back"
            },
            {
              "kind": "Variable",
              "physicalName": "SampleEstimate",
              "logicalName": "見積",
              "variable": "SampleEstimate",
              "partType": "Text",
              "required": false,
              "maxLength": 0,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "visible": true,
              "columns": 3,
              "border": "Show",
              "children": [
                {
                  "kind": "Variable",
                  "physicalName": "EstimateCD",
                  "logicalName": "見積番号",
                  "variable": "SampleEstimate.EstimateCD",
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
                  "physicalName": "TransactionKbn",
                  "logicalName": "取引区分",
                  "variable": "SampleEstimate.TransactionKbn",
                  "partType": "ComboBox",
                  "required": false,
                  "maxLength": 2,
                  "minLength": 0,
                  "options": "01=輸入, 02=輸出",
                  "captionVisible": true,
                  "captionPercentage": "25%",
                  "visible": true
                },
                {
                  "kind": "Variable",
                  "physicalName": "EstimateDate",
                  "logicalName": "見積日",
                  "variable": "SampleEstimate.EstimateDate",
                  "partType": "Date",
                  "required": false,
                  "maxLength": 0,
                  "minLength": 0,
                  "options": "",
                  "captionVisible": true,
                  "captionPercentage": "25%",
                  "visible": true
                },
                {
                  "kind": "Variable",
                  "physicalName": "UserCD",
                  "logicalName": "担当者コード",
                  "variable": "SampleEstimate.UserCD",
                  "partType": "Text",
                  "required": false,
                  "maxLength": 10,
                  "minLength": 0,
                  "options": "",
                  "captionVisible": true,
                  "captionPercentage": "25%",
                  "visible": true,
                  "children": [
                    {
                      "kind": "PopupScreen",
                      "physicalName": "SampleUserPopup",
                      "logicalName": "ユーザ選択画面",
                      "partType": "Text",
                      "required": false,
                      "maxLength": 0,
                      "minLength": 0,
                      "options": "",
                      "captionVisible": true,
                      "visible": true,
                      "popupScreen": "SampleUserPopup",
                      "children": [
                        {
                          "kind": "PopupParameters",
                          "physicalName": "Parameters",
                          "logicalName": "引数",
                          "partType": "Text",
                          "required": false,
                          "maxLength": 0,
                          "minLength": 0,
                          "options": "",
                          "captionVisible": true,
                          "visible": true,
                          "children": [
                            {
                              "kind": "PopupParameter",
                              "physicalName": "pioUserCd",
                              "logicalName": "inout：String",
                              "partType": "Text",
                              "required": false,
                              "maxLength": 0,
                              "minLength": 0,
                              "options": "",
                              "captionVisible": true,
                              "visible": true,
                              "direction": "inout",
                              "parameterType": "String",
                              "parameterVariable": "SampleEstimate.UserCD"
                            },
                            {
                              "kind": "PopupParameter",
                              "physicalName": "poUserNm",
                              "logicalName": "out：String",
                              "partType": "Text",
                              "required": false,
                              "maxLength": 0,
                              "minLength": 0,
                              "options": "",
                              "captionVisible": true,
                              "visible": true,
                              "direction": "out",
                              "parameterType": "String",
                              "parameterVariable": "SampleEstimate.UserNm"
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "kind": "Variable",
                  "physicalName": "UserNm",
                  "logicalName": "担当者名",
                  "variable": "SampleEstimate.UserNm",
                  "partType": "Text",
                  "required": false,
                  "maxLength": 20,
                  "minLength": 0,
                  "options": "",
                  "captionVisible": true,
                  "captionPercentage": "25%",
                  "visible": true
                },
                {
                  "kind": "Variable",
                  "physicalName": "CustomerCD",
                  "logicalName": "得意先コード",
                  "variable": "SampleEstimate.CustomerCD",
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
                  "physicalName": "Amount",
                  "logicalName": "金額",
                  "variable": "SampleEstimate.Amount",
                  "partType": "Number",
                  "required": false,
                  "maxLength": 0,
                  "minLength": 0,
                  "options": "",
                  "captionVisible": true,
                  "captionPercentage": "25%",
                  "visible": true
                }
              ]
            },
            {
              "kind": "Button",
              "physicalName": "btnAdd",
              "logicalName": "行追加",
              "partType": "Text",
              "required": false,
              "maxLength": 0,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "visible": true,
              "skipValidation": true,
              "icon": "add"
            },
            {
              "kind": "DataGrid",
              "physicalName": "SampleEstimateDetails",
              "logicalName": "見積明細",
              "variable": "SampleEstimateDetails",
              "partType": "Text",
              "required": false,
              "maxLength": 0,
              "minLength": 0,
              "options": "",
              "captionVisible": true,
              "visible": true,
              "hidePagerTotal": true,
              "hidePagerPageSize": true,
              "hidePagerPages": true,
              "totalRow": true,
              "totalCaption": "小計",
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
                  "variable": "SampleEstimateDetails.ItemCd",
                  "partType": "Text",
                  "required": false,
                  "maxLength": 10,
                  "minLength": 0,
                  "options": "",
                  "captionVisible": true,
                  "visible": true,
                  "total": "Label",
                  "editable": true,
                  "children": [
                    {
                      "kind": "PopupScreen",
                      "physicalName": "SampleItemPopup",
                      "logicalName": "商品選択画面",
                      "partType": "Text",
                      "required": false,
                      "maxLength": 0,
                      "minLength": 0,
                      "options": "",
                      "captionVisible": true,
                      "visible": true,
                      "popupScreen": "SampleItemPopup",
                      "children": [
                        {
                          "kind": "PopupParameters",
                          "physicalName": "Parameters",
                          "logicalName": "引数",
                          "partType": "Text",
                          "required": false,
                          "maxLength": 0,
                          "minLength": 0,
                          "options": "",
                          "captionVisible": true,
                          "visible": true,
                          "children": [
                            {
                              "kind": "PopupParameter",
                              "physicalName": "pioItemCd",
                              "logicalName": "inout：String",
                              "partType": "Text",
                              "required": false,
                              "maxLength": 0,
                              "minLength": 0,
                              "options": "",
                              "captionVisible": true,
                              "visible": true,
                              "direction": "inout",
                              "parameterType": "String",
                              "parameterVariable": "SampleEstimateDetails.ItemCd"
                            },
                            {
                              "kind": "PopupParameter",
                              "physicalName": "poItemNm",
                              "logicalName": "out：String",
                              "partType": "Text",
                              "required": false,
                              "maxLength": 0,
                              "minLength": 0,
                              "options": "",
                              "captionVisible": true,
                              "visible": true,
                              "direction": "out",
                              "parameterType": "String",
                              "parameterVariable": "SampleEstimateDetails.ItemNm"
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "kind": "Variable",
                  "physicalName": "ItemNm",
                  "logicalName": "商品名",
                  "variable": "SampleEstimateDetails.ItemNm",
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
                  "physicalName": "unit",
                  "logicalName": "単位",
                  "variable": "SampleEstimateDetails.unit",
                  "partType": "Text",
                  "required": false,
                  "maxLength": 0,
                  "minLength": 0,
                  "options": "",
                  "captionVisible": true,
                  "visible": true,
                  "total": "Sum",
                  "editable": true
                },
                {
                  "kind": "Variable",
                  "physicalName": "Price",
                  "logicalName": "単価",
                  "variable": "SampleEstimateDetails.Price",
                  "partType": "Number",
                  "required": false,
                  "maxLength": 0,
                  "minLength": 0,
                  "options": "",
                  "captionVisible": true,
                  "visible": true,
                  "editable": true
                },
                {
                  "kind": "Variable",
                  "physicalName": "Quantity",
                  "logicalName": "数量",
                  "variable": "SampleEstimateDetails.Quantity",
                  "partType": "Number",
                  "required": false,
                  "maxLength": 0,
                  "minLength": 0,
                  "options": "",
                  "captionVisible": true,
                  "visible": true,
                  "editable": true
                },
                {
                  "kind": "Variable",
                  "physicalName": "Amount",
                  "logicalName": "金額",
                  "variable": "SampleEstimateDetails.Amount",
                  "partType": "Number",
                  "required": false,
                  "maxLength": 0,
                  "minLength": 0,
                  "options": "",
                  "captionVisible": true,
                  "visible": true
                },
                {
                  "kind": "BtnPanel",
                  "physicalName": "btnPanel",
                  "logicalName": "削除",
                  "partType": "Text",
                  "required": false,
                  "maxLength": 0,
                  "minLength": 0,
                  "options": "",
                  "captionVisible": true,
                  "visible": true,
                  "children": [
                    {
                      "kind": "Button",
                      "physicalName": "btnDelete",
                      "logicalName": "削除",
                      "partType": "Text",
                      "required": false,
                      "maxLength": 0,
                      "minLength": 0,
                      "options": "",
                      "captionVisible": true,
                      "className": "btn-del",
                      "visible": true,
                      "confirm": "削除してもよろしいですか？",
                      "skipValidation": true,
                      "icon": "delete",
                      "iconOnly": true
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
              "className": "actions",
              "visible": true,
              "children": [
                {
                  "kind": "Button",
                  "physicalName": "btnOK",
                  "logicalName": "確定",
                  "partType": "Text",
                  "required": false,
                  "maxLength": 0,
                  "minLength": 0,
                  "options": "",
                  "captionVisible": true,
                  "visible": true,
                  "skipValidation": true,
                  "icon": "ok"
                },
                {
                  "kind": "Button",
                  "physicalName": "btnCancel",
                  "logicalName": "キャンセル",
                  "partType": "Text",
                  "required": false,
                  "maxLength": 0,
                  "minLength": 0,
                  "options": "",
                  "captionVisible": true,
                  "className": "btn-clear",
                  "visible": true,
                  "skipValidation": true,
                  "icon": "cancel"
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}
