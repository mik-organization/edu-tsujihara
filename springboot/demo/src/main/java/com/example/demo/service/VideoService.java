package com.example.demo.service;

import org.springframework.stereotype.Service;

import com.example.demo.model.Video;
import com.example.demo.repository.VideoRepository;

/**
 * 動画をデータベースに登録する
 */

@Service
public class VideoService {

    // DBアクセス用のリポジトリ

    private VideoRepository videoRepository;

    public VideoService(VideoRepository videoRepository) {
        this.videoRepository = videoRepository;
    }
    // データベースに登録する
    public Video register(Video video) {
        return videoRepository.save(video);
    }
}