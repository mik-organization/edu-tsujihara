-- テーブルの作成
CREATE TABLE video (
id INT,
title VARCHAR(100),
contents contents_type,
category category_type,
PRIMARY KEY(id)
);

CREATE TABLE review(
id int,
video_id int REFERENCES video(id),
review VARCHAR(256),
user_name VARCHAR(100)
);


