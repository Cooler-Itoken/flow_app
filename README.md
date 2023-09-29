# Flow Appとは
https://flow-app-1iqj.onrender.com/
![logoのコピー](https://github.com/Cooler-Itoken/flow_app/assets/121410648/aaccad99-2f85-45ac-8255-44468c256b7a)

## 概要
* 自分の強みとその現状を入力すると、人工知能(ChatGPT)が最適な課題アクションを提示してくれるSNS
* 人生を生き生きと生きるために必要なフロー（夢中）状態を生み出すソーシャルメディア

https://github.com/Cooler-Itoken/flow_app/assets/121410648/bd8ab875-7bd4-4e81-8ea9-6223f40d2029


# 開発経緯
## 家族の話
自身の話を公にするのは好きではありません。ですが勇気を持って打ち明ける必要があると思います。
実は、私の家族の内のひとりに、重度のPTSDのうつ病患者がいます。
誰よりも身近で共に過ごしているからこそわかることですが、うつ病は病院に通院して薬をもらうだけで治るわけではありません。

## ポジティブ心理学
ところが、近年は「ポジティブ心理学」という名の新たな学問が注目を浴びています。
「ポジティブ心理学」は、以下の原則を元に成り立っています。

−　→ 　0　→　＋
* 従来の鬱病治療：−（マイナス）　→ 　0
* ポジティブ心理学：0　→　＋（プラス）

…つまり、うつ病というマイナスを0にしたところでその人の人生が幸福になれるとは限らない。
0をプラスにすることが重要ではないだろうか？
では、0をプラスにするにはどうすればよいのでしょうか？それが以下の方程式です。

幸福の方程式：
自分の強み×最適な課題＝フロー（夢中）状態

ポジティブ心理学における幸福の定義とは：
ポジティブ心理学の権威であるマーティン・セリグマン教授は
「幸福な人生とは、己の強みを認識して、自分以外の誰かのために役立て感謝され満ち足りた気持ちになること。己の強みを活かして、最適な課題を挑戦することで夢中状態（フロー）に突入して、人生への満足度を高められる。」
と言いました。

たとえば、自分の強みが「創造性」なら、理想の商品やサービスの企画に挑戦し、上司にプレゼンテーションしてみる。
自分の強みが「勇敢さ」なら、皆が尻込みするようなテーマを設定し、果敢にチャレンジしてみる。
※まるでゲームにハマるように最適な課題設定がキモとなります🎮
![P220](https://github.com/Cooler-Itoken/flow_app/assets/121410648/50fa2ae0-c331-426c-9f01-dd59a70d7e59)

## 課題設定の限界
ですが、適切な課題設定は誰でもできるのでしょうか？
たとえば、一流アスリートである大谷翔平選手の場合は、本人の天賦の才能もさることながら、周囲に有能なメンターや指導者に恵まれていました。

精神的な病を抱えて生きる人にとって、「強みに応じて課題設定しろ」と言うのはあまり現実的とは言えません。
ではどうすれば、誰もが自分の強みの現状に適切な課題設定をできるようになれるのでしょうか？

そこで、私は単純かつ確実な方法を閃きました。
今もっともホットな人工知能ChatGPTです。

人工知能なら、プロンプトのやり取りを通じて学習して、課題設定の精度を高めることができます。
そこで、強みとその現状を入力すると、それに応じて最適なアクションを提案するサービスになったのです。

# 詳細
## ペルソナ
* 抑うつ症状
* 憂鬱に生きる人

## 課題
* 最適な課題設定の難しさ
* 抑うつ症状の人同士の横のつながりの薄さ

## 今後の展望
* ユーザーインタビュー
* フィードバック
* 機能改善

## 機能一覧
| 機能 | 説明 |
| ---- | ---- |
| ユーザー登録 | ユーザーの新規登録・編集・削除ができます(CRUD処理使用) |
| ログイン機能 | サインアップ・サインイン・ログアウト (deviseを使用せず実装) |
| マイページ | 名前、アイコン、自分の投稿一覧が表示されます |
| 投稿機能 | ChatGPTからの返信が投稿されます(CRUD処理使用) |
| レスポンシブ対応 | 画面サイズに合わせて表示されます(Bootstrap使用) |

## ER図
![スクリーンショット 2023-09-29 12 05 38](https://github.com/Cooler-Itoken/flow_app/assets/121410648/6e9b1fd0-06af-475c-a875-8a00deaefe5d)

## 使用技術
### フロントエンド
* HTML
* CSS
* JavaScript
* Bootstrap
### バックエンド
* Ruby 3.2.2
* SQLite
* Ruby on Rails 7.0.6
### インフラ
* Render
### テスト
* Rspec
### その他
* GitHub
* OpenAI API

## 全体設計
![FlowApp-Diagram 001](https://github.com/Cooler-Itoken/flow_app/assets/121410648/c4330e86-2401-4b80-a1f4-18e858404e95)
