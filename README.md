トミカリDB設計

## usersテーブル
|Column|Type|Opitions|
|------|----|--------|
|id|integer|null: false|
|name|string|null: false unique: true|
|phone_number|integer|null:false|
|email|string|null:false,unique: true|
|address|string|null:false|
|introduce|text|
|todo|text|

### Asociation
has_many : transactions
has_many : comments



## transactionsテーブル
|Column|Type|Opitions|
|------|----|--------|
|id|integer|null: false|
|item_id|integer|null:false|
|transfortation_type|string|null:false|
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
|image|string|null:false|
|body|text|
|price|integer|null:false|
|category_id|integer|null:false|

### asociation
belong_to : users
belong_to : transactions
has_many : comments



## commentsテーブル
|Column|Type|Opitions|
|------|----|--------|
|user_id|integer|null: false|
|item_id|integer|null: false|
|body|text|

### association
belong_to : items
belong_to : users

