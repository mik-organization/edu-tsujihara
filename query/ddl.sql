DROP SCHEMA IF EXISTS video;
CREATE SCHEMA video;

-- テーブルの作成
CREATE TABLE video.video (
id INT,
title VARCHAR(100),
contents contents_type,
category category_type,
PRIMARY KEY(id)
);

CREATE TABLE video.review(
id int,
video_id int REFERENCES video(id),
review VARCHAR(256),
user_name VARCHAR(100)
);

-- eumu中身
CREATE TYPE contents_type AS enum('Netflix','dアニメストア','Hulu','Amazon prime video','U-NEXT','Disney+');

CREATE TYPE category_type AS enum('国内ドラマ','国内映画','海外ドラマ','海外映画','韓国ドラマ','バラエティ','アニメ');






