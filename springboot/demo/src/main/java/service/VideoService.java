package service;

import org.springframework.stereotype.Service;

import model.Video;

/**
 * 動画をデータベースに登録する
 */

@Service
public class VideoService {

    // DBアクセス用のリポジトリ

    public VideoService(VideoRepository videoRepositry) {
    this.videoRepository = videoRepository;
}

    // データベースに登録する
    public Video register(Video video) {
        return videoRepository.save(video);
    }
}