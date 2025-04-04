# 作業時間入力
- https://github.com/orgs/mik-organization/projects/7/views/6

# PJ運用
## issue対応について
- 1issue、1ブランチで作業する
- 作業完了時、プルリクを作成する
- プルリクでレビューを実施し、完了後、プルリクをクローズ（マージ）する
## ブランチの作成
- issueの画面から「Create a branch」
- リポジトリ：mik-organization edu-tsujihara
- sourceブランチ：基本的にはmain
- ブランチ名：issue番号-対応内容の概要　例）4-new-pj
## ブランチの切り替え（PowerShellで操作）
- git branch：現在の作業ブランチを確認
- git checkout ブランチ名：ブランチの切り替え
## コミットについて
- コミットメッセージは下記のようにする  
issue番号 対応内容の概要　例） #4 新規プロジェクトの追加
