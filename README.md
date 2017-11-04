# Twitterクローン作製課題
## 要件
- Ruby on Railsを使ったアプリケーションであること
- tweetの投稿・投稿確認・編集・一覧表示・削除機能があること
- 1文字以上140文字以下しかつぶやけないようにすること
- 140文字より多い文字数、または内容が空で登録した場合エラーメッセージがでるようにすること
- tweetsテーブルは、本文（content）のみカラムを有すること（id,timestampはデフォルトで生成されるのでそのままで良い）
- Githubにソースコードを送信し、そのリポジトリのURLを提出すること
- Herokuにアップロードしてある状態であること

## サブ要件
- HTML,CSS,Bootstrapを使用して、現実のTwitterに似せたデザインにすること。  

## 実装
- ページ上部に新規投稿
- 投稿確認を行う
- テーブルは、{アカウント、投稿内容、投稿日時}


### 進捗
- 2017/10/24
  - 雛形の作成
  - routesの設定
  - モデルの作成
  - 次回はviewの作成から！

- 2017/10/27
  - ヘッダーのデザイン
    - 一覧
    - 削除
    - 新規

- 2017/11/1
  - タイムスタンプ実装(t.timestamps null: false)の記載
  - 更新時にタイムスタンプが更新されない!!!

- 2017/11/4[本日のタスク]@DIC
  - タイムスタンプが更新時に書き換わるように
  - ツイートの投稿機能->DONE
  - ツイート一覧のデザイン->DONE
  - @tweet.saveを走らせるようにして、updated_atを更新することに成功->課題提出の時に聞いてみる
  - 各画面のデザイン->DONE
  - バリデーションの設定
  - 