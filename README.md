# SQL 文から ER 図を自動生成してくれる SchemaSpy を docker-compose でやってみた

### 環境

- Docker が稼働する Windows/macOS/Linux 等のマシン

---

### 実行手順

1. mysql フォルダに拡張子が.sql の SQL ファイルを配置する
   ※サンプルで [MYSQL 公式の SQL 文](https://dev.mysql.com/doc/refman/5.6/ja/create-table-foreign-keys.html)table.sql を配置しています。
2. コマンド実行: `docker-compose build`
3. コマンド実行: `docker-compose up`
4. output フォルダに HTML,CSS,JS が生成される

配置する**SQL ファイル内に`CREATE DATABASE [DATABASE名]`や`USE [DATABASE名]`は含めないでください。**

---

### ファイル構成

```
SchemaSpy/
├── README.md
├── Dockerfile
├── docker-compose.yml
├── mysql
│   └── table.sql   /xxxx.sql と拡張子がsqlになっているSQL文のファイルを配置する
└── output   /このフォルダにHTML,CSS,JSが生成される
```

---

### 参考記事

- [まだ ER 図の管理で消耗してるの？ SchemaSpy で ER 図を自動生成して管理する](https://qiita.com/ap8322/items/b93dfb2ff29b026ffa72)
- [Docker でサクッと MySQL 8 から ER 図を作成する](https://qiita.com/ngyuki/items/4efa0734e8d8582bfc16)
