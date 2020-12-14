# アプリケーション名
diver

# アプリケーション概要
スキューバダイビングは非常に魅力的なレジャーであるが、時間とお金がかかるため、友人との日程が合わない等の問題がある。
また、潜るためにライセンスが必要なため、敷居が高く感じられ、興味があっても行動できないことがある。
このアプリケーションは、これらの問題を解決するためにダイバー同士のコミュニケーションを円滑にすること、
また、ダイビングに興味がある人への後押しを行うものを目的とする。

# URL

# テスト用アカウント
## ID/Pass
ID: hiro
Pass: 0213
## テスト用アカウント等
ログイン用
メールアドレス: hiro@hiro
パスワード: hiro1111

# 利用方法
ユーザーはまず、基本の情報（Emailアドレス、パスワード等のユーザー情報）を入力してもらう。
また、居住地、経験年数、ライセンスのランク等のプロフィールを入力してもらう。
その後、ユーザー検索ページにてお気に入りのユーザーを選ぶ。
気に入ったユーザーがいれば、メッセージを送る。
さらに、トピックページにて、登録者は写真を投稿することができる。
トピックページは、ログインしていなくても写真は見ることができる。

# 目指した課題解決
①ダイバー同士の交流を深める。
ダイビングは1日を費やすレジャーであるため、友人と行く場合、日程のマッチングが取りにくいことがある。
また、お金がかかる、気軽に行けない、ダイバー人口が少ない等の理由があり、行きたいという気持ちがあっても仲間が少ないため、行けなくなってしまう。
このアプリケーションにより、ダイバーの友人を作り、ダイビングに行きやすくする。
②新規ダイバーの獲得
ダイビングは敷居が高いと考えられがちだが、3日あれば、一番下のランクのライセンスは取得できる。
しかし、現実的には周りにダイバーが少なく、どうすれば良いか分からないため、諦めるパターンは多いと考えられる。
ダイビングに興味がある人と現役のダイバーをつなげることで、ダイビングを楽しめる環境を作る。

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

# 実装した機能についてのGIFと説明
##　トップページ
本アプリケーションのトップページ。
特に機能は無いが、どういったアプリなのかと、使い方の説明が表示される。
https://gyazo.com/c85bccd1d27e07e9cf0b6c6143a00bc2

##　ユーザー登録ページ
ユーザー情報を登録するためのページ。
最初に、ニックネーム、アドレス、パスワード、生年月日を登録してもらう。
また、ウィザード形式によって、プロフィール画面に飛び、
主にダイビングに関する趣向について、Active hashを用いたセレクトボックスで選択してもらう。
https://gyazo.com/bfaa8b798756dcb94691f6684b44a589

##　ユーザー検索ページ
登録しているユーザーの検索が行えるページ。
ユーザーは、ransackによる複数条件の検索ができ、自分でユーザーを検索できる。
また、「ユーザー登録」で登録したプロフィールで共通点の多いユーザーを
画面左側に表示することができる。
https://gyazo.com/5f242baa9cff61c17f2f4530dba423ef

##　メッセージページ
ユーザー登録ページで検索したお気に入りユーザーに対して、メッセージを送信できる。
https://gyazo.com/90bbfd71bbb84e942c2108b0ae0e0ea9

##　トピックページ
撮影した写真を投稿することができる。
自分の投稿以外に「いいね！」を押すことができ、さらに全体の投稿のうち、「いいね！」が多い順にBest3までの投稿を画面左側に表示させる。
https://gyazo.com/dc685b248849f78103d056a9f5aa5d73

# 実装予定の機能
・トップページ
・ユーザー登録ページ
・ユーザー検索ページ
・コミュニケーションページ
・トピックページ

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
