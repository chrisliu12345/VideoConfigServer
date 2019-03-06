package com.gd.domain.windowmode;

/**
 * Created by Administrator on 2018/5/3 0003.
 */
public class WinToChannel {
    private int id;
    private String channel_id;
    private String mod_id;
    private int win_seq;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getChannel_id() {
        return channel_id;
    }

    public void setChannel_id(String channel_id) {
        this.channel_id = channel_id;
    }

    public String getMod_id() {
        return mod_id;
    }

    public void setMod_id(String mod_id) {
        this.mod_id = mod_id;
    }

    public int getWin_seq() {
        return win_seq;
    }

    public void setWin_seq(int win_seq) {
        this.win_seq = win_seq;
    }
}
