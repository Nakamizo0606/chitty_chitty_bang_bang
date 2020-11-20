・アプリ名 Chitty Chitty Bang Bang 						
・概要(飲食業の人材派遣サービスです)						
・本番環境(デプロイ先 テストアカウント＆ID)						
・制作背景(意図)						
⇒どんな課題や不便なことを解決するためにこのアプリを作ったのか。
・今の日本の飲食業の状況はとても悪いです
しかし店舗を構えているオーナーは常に人は雇えなけど
予約等々が入って忙しい日だけ人手がほしいというオーナと
仕事を探している人、スポットで働きたい人、副業したい人を
マッチングさせるアプリです。
店側のメリット　人件費を削減できる
働く側のメリット　自分の空いている時間で働ける
　　　　　　　　　すぐに仕事が見つかる
　　　　　　　　　副業に最適
店側のデメリット　固定された人が来ないので業務説明が毎回大変
・DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)						
⇒特に、デプロイがまだできていない場合はDEMOをつけることで見た目を企業側に伝えることができます。						
・工夫したポイント						
・使用技術(開発環境)						
・課題や今後実装したい機能						
・DB設計						

# テーブル設計

## users テーブル

| Column               | Type    | Options     |
| -------------------- | ------  | ----------- |
| nickname             | string  | null: false |
| email                | string  | null: false |
| encrypted_password   | string  | null: false |
| last_name            | string  | null: false |
| first_name           | string  | null: false |
| last_name_kana       | string  | null: false |
| first_name_kana      | string  | null: false |
| sex                  | integer | null: false |
| age                  | string  | null: false |
| kitchen_id           | integer | null: false |
| hole_id              | integer | null: false |


### Association
- has_many   :  items
- has_many   :  orders

## recruitment テーブル

| Column                 | Type         | Options           |
| -----------------------| ------------ | ----------------- |
| name                   | string       | null: false       |
| date                   | string       | null: false       |
| info                   | text         | null: false       |
| area_id                | integer      | null: false       |
| salary                 | string       | null: false       |
| time                   | string       | null: false       |
| station                | string       | null: false       |
| phone                  | string       | null: false       |
| plsce                  | string       | null: false       |
| genre_id               | integer      | null: false       |
| prefecture_id          | integer      | null: false       |
| user                   | references   | foreign_key: true |

### Association
- belongs_to :  user
- has_one    :  order

## addresses テーブル

| Column          | Type         | Options                        |
| --------------- | -------------| ------------------------------ |
| postal_code     | string       | null: false                    |
| prefecture_id   | integer      | null: false                    |
| city            | string       | null: false                    |
| house_number    | string       | null: false                    |
| building_name   | string       |                                |
| phone_number    | string       | null: false                    |
| order           | references   | foreign_key: true              |


### Association
- belongs_to : order

## orders テーブル

| Column       | Type         | Options           |
| ------------ | -------------| ------------------|
| user         | references   | foreign_key: true |
| recruitment  | references   | foreign_key: true |

### Association
- belongs_to :  recruitment 
- has_one    :  address
- belongs_to :  user




## comment
| Column       | Type         | Options           |
| ------------ | -------------| ------------------|
| comment      | text         | null: false       |
| user         | references   | foreign_key: true |
| recruitment  | references   | foreign_key: true |

