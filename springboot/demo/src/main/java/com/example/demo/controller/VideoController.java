package com.example.demo.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.Video;
import com.example.demo.service.VideoService;

@RestController
@RequestMapping("/video")
public class VideoController {

    private final VideoService videoService;

    public VideoController(VideoService videoService) {
        this.videoService = videoService;
    }

    // Postリクエストを受けて、動画をDBに登録する。
    @PostMapping("/video")
    public ResponseEntity<String> registerVideo(@RequestBody Video video) {
        videoService.register(video);
   // 成功したら「201 Created」を返す
        return new ResponseEntity<>(HttpStatus.CREATED);
    }
}
