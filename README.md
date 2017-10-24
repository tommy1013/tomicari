# コピカリ

## 概要

プログラミング学習のために、メルカリを目コピしたWEBアプリです。
学習目的ですので実際に売買はできません。

## 詳細

株式会社divによるプログラミング学習コース「TECH::EXPERT」の一環として、
学習目的で、製作期間は３週間で既存サービスの目コピを行いました。
本アプリはメルカリを目コピしたものです。

### 主にバックエンド開発の学習を目的としているため、以下のような制約があります。

+ サポートするブラウザはChromeです。
+ リンクがテキストの内容と一致しないもの存在しないものがあります。
  （利用規約などがルートパスになっていたります。）
+ ユーザー機能は簡易的なものです。セキュリティは担保されません。

## 基本機能

+ ユーザ登録
+ 商品の出品：出品するとマイページの出品リストに追加されます。
+ 商品の購入：購入するとマイページの購入リストに追加されます。

## 追加オリジナル機能

+

## 開発環境

Ruby  : v2.3.1
Rails : 5.0.3
Haml
SCSS
JavaScript
jQuery

サーバ             : AWS EC2
画像ストレージ      : AWS S3
データベース        : MySQL
WEBサーバ          : Nginx
アプリケションサーバ : Unicorn

#コピカリDB設計

## usersテーブル
|Column|Type|Opitions|
|------|----|--------|
|id|integer|null: false|
|nickname|string|null: false|
|email|string|null: false,unique: true|
|name|string|null: false unique: true|
|postal_code|integer|null: false|
|address|string|null:false|
|phone_number|integer|null:false|
|card_infomation|integer|null:false|

### Asociation
has_many : trades
has_many : comments



## tradesテーブル
|Column|Type|Opitions|
|------|----|--------|
|id|integer|null: false|
|item_id|integer|null:false|
|fee_type|string|null:false|
|trade_type|string|null:false|
|area|string|null:false|
|days|integer|null:false|
|status|integer|null:false|

### asociation
has_one : items
belongs_to : users


## コメント
statusカラムはenumを使う


## itemsテーブル
|Column|Type|Opitions|
|------|----|--------|
|user_id|integer|
|name|sritng|null: false unique: true|
|body|text|
|price|integer|null:false|

### asociation
belongs_to : users
belongs_to : trades
has_many : comments
has_many : items_image

## items_imageテーブル
|Column|Type|Opitions|
|------|----|--------|
|image|string|null:false|
|item_id|integer|null:false|

### asociation
belongs_to : items

## commentsテーブル
|Column|Type|Opitions|
|------|----|--------|
|user_id|integer|null: false|
|item_id|integer|null: false|
|body|text|

### association
belongs_to : items
belongs_to : users
