DROP SCHEMA IF EXISTS video;
CREATE SCHEMA video;

-- eumu中身
CREATE TYPE contents_type AS enum('Netflix','dアニメストア','Hulu','Amazon prime video','U-NEXT','Disney+');
CREATE TYPE category_type AS enum('国内ドラマ','国内映画','海外ドラマ','海外映画','韓国ドラマ','バラエティ','アニメ');

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

-- テーブルに日本語名称を付与
COMMENT ON TABLE video.video IS '動画';
COMMENT ON TABLE video.review IS '感想';

-- カラムに日本語名称を付与
COMMENT ON COLUMN video.video.title IS '名前';
COMMENT ON COLUMN video.video.contents IS '配信サイト';
COMMENT ON COLUMN video.video.category IS '種類';
COMMENT ON COLUMN video.review.review IS '感想';