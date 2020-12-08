# アプリケーション名
diver

# アプリケーション概要
スキューバダイビングは非常に魅力的なレジャーであるが、時間とお金がかかるため、友人との日程が合わない等の問題がある。
また、潜るためにライセンスが必要なため、敷居が高く感じられ、興味があっても行動できないことがある。
このアプリケーションは、これらの問題を解決するためにダイバー同士のコミュニケーションを円滑にすること、
また、ダイビングに興味がある人への後押しを行うものを目的とする。

# URL

# テスト用アカウント

# 利用方法
ユーザーはまず、基本の情報（Emailアドレス、パスワード等のユーザー情報）を入力してもらう。
また、居住地、経験年数、ライセンスのランク等のプロフィールを入力してもらう。
記入した情報を元に共通点が多い人をおすすめする機能がある。
また、お互いが気にいった場合は、お互いにコミュニケーションを取ることができる。
さらに、登録者は写真を投稿することができ、この写真はユーザーでなくてもみることができる。

# 目指した課題解決
①ダイバー同士の交流を深める。
ダイビングは1日を費やすレジャーであるため、友人と行く場合、日程のマッチングが取りにくいことがある。
また、お金がかかる、気軽に行けない、ダイバー人口が少ない等の理由があり、行きたいという気持ちがあっても仲間が少ないため、行けなくなってしまう。
このアプリケーションにより、ダイバーの友人を作り、ダイビングに行きやすくする。
②新規ダイバーの獲得
ダイビングは敷居が高いと考えられがちだが、3日あれば、一番下のランクのライセンスは取得できる。
しかし、現実的には周りにダイバーが少なく、どうすれば良いか分からないため、諦めるパターンは多いと思う。
ダイビングに興味がある人と現役のダイバーをつなげることで、ダイビングを取得できる環境を作る。

# 洗い出した要件
## トップページ(top)
【ボタン】
・サインイン/ログインページへ遷移できるボタンがある。
・ログイン時はログアウトできるボタンがある。
・ユーザー一覧ページへ遷移できるボタンがある。
・マイページへ遷移できるボタンがある。
・コミュニケーションページへ遷移できるボタンがある。
・トピック一覧ページへ遷移できるボタンがある。

## マイページ(user show)
【ボタン】
・プロフィール編集画面がある。
【表示】
・プロフィール一覧が表示される。
・自分が投稿したトピック一覧が表示される。
【備考】
・ユーザーの詳細ページも同じ構造だが、マイページ出なければ、編集ができない。

## ユーザー一覧ページ(user index)
【ボタン】
・ユーザー検索用のボタンがある。
・検索条件はプルダウンで出現される。
【表示】
・ユーザー一覧が表示される。
・おすすめのユーザーが表示される。

## コミュニケーションページ(room)
【ボタン】
・ルーム作成ボタンがある。
・ルーム削除ボタンがある。
・ユーザー選択ボタンがある。
・メッセージ送信ボタンがある。
【表示】
・ルーム一覧が表示される。
・プレビューが表示される。
・ユーザー検索結果が表示される。
・メッセージ履歴が表示される。

## トピック一覧ページ(topic index)
【ボタン】
・トピック作成ボタンがある。
・いいねボタンがある。
【表示】
・トピック一覧が表示される。
・おすすめのトピックが表示される。

## トピック詳細ページ(topic show)
【ボタン】
・自分の投稿であればトピック編集ボタンがある。
・自分の投稿であればトピック削除ボタンがある。
・いいねボタンがある。
【表示】
・コメント一覧が表示される。

## 未定だけど実装したい機能（案も含める）
・旅費計算
・インストラクター専用の有料コンテンツ
　500円でダイバーと動画で繋がる。


# 実装した機能についてのGIFと説明

# 実装予定の機能
・トップページ
・トピックページ
・コミュニケーションページ
・ユーザーページ

# ローカルでの動作方法

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| birth              | date   | null: false |

### Association

- has_one  :profiles
- has_many :topics
- has_many :likes
- has_many :room_users
- has_many :rooms, through: :room_user
- has_many :messages

## profile テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| license_id         | integer    | null: false                    |
| career_id          | integer    | null: false                    |
| prefecture_id      | integer    | null: false                    |
| holiday_id         | integer    | null: false                    |
| marriage_id        | integer    | null: false                    |
| favorite_diving_id | integer    | null: false                    |
| favorite_fish_id   | integer    | null: false                    |
| favorite_place_id  | integer    | null: false                    |
| favorite_sea_id    | integer    | null: false                    |
| introduction       | text       | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :license
- belongs_to :career
- belongs_to :prefecture
- belongs_to :holiday
- belongs_to :marriage
- belongs_to :favorite_diving
- belongs_to :favorite_fish
- belongs_to :favorite_place
- belongs_to :favorite_sea
- belongs_to :user

## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages

## room_users テーブル

| Column | Type       | Options     |
| ------ | ---------- | ----------- |
| user   | references | null: false |
| room   | references | null: false |

### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages

## messages テーブル

| Column  | Type       | Options                        |
| ------  | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
_ belongs_to :user

## topics テーブル

| Column     | Type       | Options     |
| ---------- | ---------- | ----------- |
| title      | string     | null: false |
| place      | string     | null: false |
| impression | text       | null: false |
| user       | references | null: false |

### Association

- has_many   :likes
- belongs_to :user

## likes テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| topic  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :topic

## addresses テーブル

| Column         | Type       | Options                        |
| -------------- | -------    | ------------------------------ |
| postal_code    | string     | null: false                    |
| prefecture_id  | integer    | null: false                    |
| municipality   | string     | null: false                    |
| house_number   | string     | null: false                    |
| building       | string     |                                |
| phone_number   | string     | null: false                    |
| purchase       | references | null: false, foreign_key: true |

### Association

- belongs_to :purchase
- belongs_to_active_hash :prefecture
