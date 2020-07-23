# README

# Shift Roster / 当番表アプリ:calendar:

<img width="1438" alt="当番表アプリ" src="https://user-images.githubusercontent.com/58798583/87929226-0c2d0f80-cac1-11ea-9dcc-6abececae0ae.png">

## DEMO

https://gyazo.com/bbc1fb40ab68b6a8cb3ed5312c6ab3be

## 概要

登録されている全ユーザーの中で、今日の当番(掃除・日直など)が誰なのかを自動で示してくれる。
下の掲示板に連絡事項も書き込め、情報共有も出来る。

## 本番環境

* URL: http://54.250.75.236/

* GitURL: https://github.com/xignature2/shift_roster

##### テストアカウント & ID

* メールアドレス:bbb@bbb.com

* Pass:00000000

## 制作背景
製造工場で働いていた時、掃除当番表があったのだが、短期パートが入ったり辞めたりする度に当番表を作り直していた。
それなら、その人が辞めたら自動で表から名前が削除され、また新しく入って来た人の名前が自動で表に追加されるシステムならいちいち作り直す時間のロスがないと思い作成した。

## 工夫したポイント

どのユーザーでも使い易いように、シンプルな作りにしたこと。当番表の存在自体が一目見ただけで分からないと意味がないと思ったので、アプリ自体も一目見ただけで何のアプリか分かるように作成した。また実際の当番表では出来ない、その当番に関する伝達事項をシェアしやすいように、メッセージを書き込める欄も作成した。

## 使用技術(開発環境)

* Ruby

* Ruby on Rails

* MySQL

* Github 

* AWS

* Visual Studio Code

## 課題や今後実装したい機能

* ログインしているユーザーと当番のユーザーが同じなら、「今日はあなたが当番です！」と表示するようにしたい。


# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :posts
- has_many :comments

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|text|content|null: false|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments
- has_many :images

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|text|null: false|
|post|references|foreign_key: true|

### Association
- belongs_to : post

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|content|null: false|
|user|references|null: false, foreign_key: true|
|post|references|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :user
