// 動作の実装（NewBehaviors1.behaviors.json の動作を Keystone.behavior で登録する）
// el：動作を付けた項目の要素（data-node）。入力欄・ボタンは Keystone.control(el)。p：パラメーター（型は定義の type のとおり。Item は要素）
Keystone.behavior('new-behaviors1-example', (el, p) => {
  Keystone.control(el).addEventListener('click', () => alert(p.message));
});
