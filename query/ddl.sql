DROP SCHEMA IF EXISTS video CASCADE;
CREATE SCHEMA video;

CREATE TYPE video.vod_type AS enum('NETFLIX', 'D_ANIME_STORE', 'HULU', 'AMAZON_PRIME_VIDEO', 'U_NEXT', 'DISNEY_PLUS');
CREATE TYPE video.category_type AS enum('DOMESTIC_DRAMA', 'DOMESTIC_MOVIE', 'FOREIGN_DRAMA', 'FOREIGN_MOVIE', 'KOREAN_DRAMA', 'VARIETY', 'ANIME');

CREATE TABLE video.video (
id INT,
title VARCHAR(100),
vod_service vod_type,
category category_type,
PRIMARY KEY(id)
);

COMMENT ON TABLE video.video IS '動画';
COMMENT ON COLUMN video.video.id IS 'ID';
COMMENT ON COLUMN video.video.title IS 'タイトル';
COMMENT ON COLUMN video.video.vod_service IS 'VODサービス';
COMMENT ON COLUMN video.video.category IS '種類';

CREATE TABLE video.review(
id int,
video_id int REFERENCES video(id),
review VARCHAR(256),
user_name VARCHAR(100)
);

COMMENT ON TABLE video.review IS 'レビュー';
COMMENT ON COLUMN video.review.id IS 'ID';
COMMENT ON COLUMN video.review.video_id IS '動画ID';
COMMENT ON COLUMN video.review.review IS 'レビュー';
COMMENT ON COLUMN video.review.user_name IS 'ユーザー名';