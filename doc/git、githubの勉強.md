- git：ファイルの「バージョン管理システム」のこと。様々なファイルの追加・編集・削除などの内容を保存しておき、別のコンピュータでも同じ状況を再現することができる。
（イメージ図）
![image.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/4052390/0ea9c03a-a340-41ff-8ac8-0b7fe468586c.png)

  - キーワード
     - リポジトリ：ファイルやディレクトリ（フォルダ）の保管場所。
&nbsp;    
    - ブランチ （mainと作業用ブランチ(issue対応用ブランチ)をどのように運用していくか）：ブランチを派生させることで、mainに影響を与えずにプログラムの修正や機能の追加が可能。 
    
    ![image.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/4052390/5c535e19-8bb7-4a38-b829-141c9ce8e44d.png)

  - コマンド
    - clone（リモートリポジトリを複製する）
    ![image.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/4052390/d775deaf-83f9-4d7b-9596-30df1b35d98f.png)

    - pull（fetchとの違い）
        - pull：リモートリポジトリからローカルリポジトリに最新の変更履歴をダウンロードし、自動的にマージ（統合）する。
      - fetch：リモートリポジトリからローカルリポジトリに最新の変更内容を取り込むだけで、自動的にマージ（統合）されない。
![image.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/4052390/4744fca0-e2ec-4cdb-8ec2-b854aa434405.png)
    - status：ディレクトリの現在の状態を確認する
    1. 未追跡ファイル（コミットされていない、新規に作成されたファイル）が存在するか  
    2. git addされていない変更が存在するか
    3. git commitされていない変更が存在するか
    - add （. を使用してステージングする際の注意点）：ワーキングツリーをインデックスに反映させる操作。「add . 」は、階層のファイルがまとめてインデックスに登録されるため、ファイル指定がある場合は要注意。   　
    - commit：インデックスをローカルリポジトリに反映させる
    - push：ローカルリポジトリの内容をリモートリポジトリに反映させる
    - checkout（swithcでもほぼ同様のことができる）：ブランチを切り替える
&nbsp;  
 - github：Gitで管理されたコードを公開・共有するためのプラットフォームのこと。
   - pull request（githubを使用しない場合、どのように対応するか）：pull requestとは、実際にコードを反映させる前に、ローカルリポジトリでの変更を他の開発者に通知する機能。

#### 【参考】
- [gitの仕組み](https://tetoblog.org/2021/06/git-how/)
- [ブランチとは](https://www.sejuku.net/blog/71071)
