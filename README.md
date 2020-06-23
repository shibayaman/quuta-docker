# quuta-docker

チーム開発の授業で
「環境構築?」
「そこのチミdocker-composeで作ってきなさい。」
ってなった悲しみ溢れるクソース。(tini的なサムシングを使ってなくてシグナルがうまく伝搬されずに半日潰したなんて言えない。。

```
docker-compose up -d
```

でmysqlとphpのビルトインサーバーが起動する
(初回起動時はlaravelのプロジェクトを生成する。
docker-compose.ymlと同階層にquuta-serverというディレクトリがあって中身が入ってたら生成しない)

laravelのenvは

```
DB_CONNECTION=mysql
DB_HOST=quuta_mysql
DB_PORT=3306
DB_DATABASE=quuta
DB_USERNAME=quuta
DB_PASSWORD=quuta
```

でどうぞ。
