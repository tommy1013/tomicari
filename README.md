トミカリDB設計

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
