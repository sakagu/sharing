## タイトル：sharing
・URL:http://3.114.46.12/</br>
</br>
・商社側テストアカウント</br>
&emsp;アドレス:t@t</br>
&emsp;パスワード:12345678</br>
</br>
・工務店側テストアカウント</br>
&emsp;アドレス:k@k</br>
&emsp;パスワード:12345678</br>
</br>
・GitURL:https://github.com/sakagu/sharing</br>
・開発環境:haml,SCSS,Ruby,Ruby on Rails,MySQL,GitHub,AWS</br>
・内容</br>
</br>
&emsp;●概要:工務店と商社の間で納期管理を共有できるアプリです。</br>
&emsp;●実装機能:ユーザ登録,ログイン・ログアウト,発注,納期回答,履歴確認</br>
</br>
・企画背景</br>
&emsp;商社勤務の経験から実務作業を効率化を考えました。</br>

## users table
|Colm|Type|Option|
|----|----|------|
|name|string|null: false|
|company|string|null: false|
|authority|integer||
|email|string|null: false|
|password|integer|null: false|
|password_confirm|integer|null: false|

## users table
|Colm|Type|Option|
|----|----|------|
|site_name|string|null: false|
|part_number|string|null: false|
|delively_place|string|null: false|
|order_number|string||
|tel|string|null: false|
|consignee|string|null: false|
|user_id|integer|null: false|
|stage|integer|null: false|
|desired_date|string|null: false|
|delivery_date|string|null: false|