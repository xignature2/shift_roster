# README

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