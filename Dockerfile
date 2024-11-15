# ベースイメージにOpenJDKを使用
FROM openjdk:11-jre-slim

# ビルドされたJARファイルをコピー
COPY dev/target/dev-0.0.1.jar /app.jar

# アプリケーションのエントリーポイント
ENTRYPOINT ["java", "-jar", "/app.jar"]
