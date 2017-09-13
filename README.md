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
|card_infomation|integer|nell:false|

### Asociation
has_many : transactions
has_many : comments



## transactionsテーブル
|Column|Type|Opitions|
|------|----|--------|
|id|integer|null: false|
|item_id|integer|null:false|
|fee_type|string|nuull:false|
|transfortation_type|string|null:false|
|area|string|null:false|
|days|integer|null:false|
|status|integer|null:false|

### asociation
has_one : items
belong_to : users


## コメント
statusカラムはenumを使う


## itemsテーブル
|Column|Type|Opitions|
|------|----|--------|
|name|sritng|null: false unique: true|
|body|text|
|price|integer|null:false|
|category_id|integer|null:false|

### asociation
belong_to : users
belong_to : transactions
has_many : comments
has_many : items_image

## items_imageテーブル
|Column|Type|Opitions|
|------|----|--------|
|image|string|null:false|
|item_id|integer|null:false|

### asociation
belong_to : items

## commentsテーブル
|Column|Type|Opitions|
|------|----|--------|
|user_id|integer|null: false|
|item_id|integer|null: false|
|body|text|

### association
belong_to : items
belong_to : users

