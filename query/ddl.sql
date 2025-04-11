-- テーブルの作成
CREATE TABLE video (
id INT,
title CHAR(30),
contents VARCHAR(100),
category VARCHAR(100),
review VARCHAR(256),
PRIMARY KEY(id)
);

-- テーブルデータへの追加
INSERT INTO video values(1, penthouse, null, null, null);

