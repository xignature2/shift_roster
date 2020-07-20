# README
アプリ名
説明（何が出来る物なのか）
使い方
構築やインストール方法
ライセンス
作者

# Shift Roster / 当番表アプリ:calendar:

<img width="1438" alt="当番表アプリ" src="https://user-images.githubusercontent.com/58798583/87929226-0c2d0f80-cac1-11ea-9dcc-6abececae0ae.png">

## DEMO

https://gyazo.com/bbc1fb40ab68b6a8cb3ed5312c6ab3be

## Overview

登録されている全ユーザーの中で、今日の当番(掃除・日直など)が誰なのかを自動で示してくれる。
下の掲示板に連絡事項も書き込め、情報共有も出来る。

## Usage

`$ git clone https://github.com/xignature2/shift_roster.git`

## Requirement
*Ruby 2.5.1

*Ruby on Rails

## Author

* https://github.com/xignature2

## License

*MIT



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
