## コーディングルール
- Rubocop自動コード修正

## 環境構築
- 環境構築

    - bundle install --path vendor/bundle で余計なコードをgit管理から除外する
    > https://qiita.com/Takao_/items/7fda2a51db95c4724ad5


## デザイン
- メンバーを見やすいテーブルで表示

   ![](https://i.imgur.com/5EEAVPS.png)
   
    - bootstrap tables
    > https://getbootstrap.jp/docs/5.0/content/tables/

- カルーセル
    - bootstrap carousel
    > https://getbootstrap.jp/docs/5.0/components/carousel/


## 機能
- ログイン
    - gem sourcery or devise 

- CRUD(メンバー登録やバンド登録で使用)
    - 基本的にRailsのみで実装可能. 関連付けは実装した方が扱いやすい.
    > https://qiita.com/kazukimatsumoto/items/14bdff681ec5ddac26d1

- 画像アップロード機能(プロフィールとか?想定) 
    - gem CarrierWave

- メンバーを学籍順にソート
    - gem ransack

- ページネーション
    - gem kaminari

- パスワードリセット機能
    - gem sorcery
    - gem letter_opener

- 管理者専用ページ
    - enum 
    - AdminLTEとかある? (デザイン)
    - ルーティング namaspase使用して /adminへ変更する.
