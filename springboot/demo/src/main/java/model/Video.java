package model;

public class Video {

    private Integer id;

    private String title;

    private VodService vodService;

    private Category category;

    public enum VodService {
        Netflix, dアニメストア, Hulu, Amazon_prime_video, U_NEXT, DisneyPlus
    }

    public enum Category {
        国内ドラマ, 国内映画, 海外ドラマ, 海外映画, 韓国ドラマ, バラエティ, アニメ
    }
}
