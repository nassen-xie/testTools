{
  "name": "OptimisticLockingCheck",
  "caption": "楽観排他の確認",
  "variables": [
    {
      "logicalName": "楽観排他の情報",
      "physicalName": "piOptimistic",
      "baseType": "Optimistic",
      "dataType": "",
      "scope": "interface",
      "isArray": false,
      "direction": "in"
    },
    {
      "logicalName": "結果（True：保存してよい）",
      "physicalName": "poResult",
      "baseType": "Boolean",
      "dataType": "BOOLEAN",
      "scope": "interface",
      "isArray": false,
      "direction": "out"
    },
    {
      "logicalName": "メッセージ（False のとき）",
      "physicalName": "poMessage",
      "baseType": "String(200)",
      "dataType": "VARCHAR(200)",
      "scope": "interface",
      "isArray": false,
      "direction": "out"
    }
  ],
  "interface": [
    {
      "logicalName": "楽観排他の情報",
      "physicalName": "piOptimistic",
      "baseType": "Optimistic",
      "dataType": "",
      "isArray": false,
      "direction": "in"
    },
    {
      "logicalName": "結果（True：保存してよい）",
      "physicalName": "poResult",
      "baseType": "Boolean",
      "dataType": "BOOLEAN",
      "isArray": false,
      "direction": "out"
    },
    {
      "logicalName": "メッセージ（False のとき）",
      "physicalName": "poMessage",
      "baseType": "String(200)",
      "dataType": "VARCHAR(200)",
      "isArray": false,
      "direction": "out"
    }
  ]
}
