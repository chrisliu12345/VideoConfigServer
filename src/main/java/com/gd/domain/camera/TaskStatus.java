package com.gd.domain.camera;

import java.sql.Timestamp;
import java.util.Date;

public class TaskStatus {
    private int TaskID;
    private int Type;
    private Timestamp CommitTime;
    private Timestamp BeginTime;
    private int ExpectEndTime;
    private int Status;
    private int ConsumTime;
    private int Progress;

    public int getTaskID() {
        return TaskID;
    }

    public void setTaskID(int taskID) {
        TaskID = taskID;
    }

    public int getType() {
        return Type;
    }

    public void setType(int type) {
        Type = type;
    }

    public Timestamp getCommitTime() {

        return CommitTime;
    }

    public void setCommitTime(Timestamp commitTime) {
        CommitTime = commitTime;
    }

    public Timestamp getBeginTime() {
        return BeginTime;
    }

    public void setBeginTime(Timestamp beginTime) {
        BeginTime = beginTime;
    }

    public int getExpectEndTime() {
        return ExpectEndTime;
    }

    public void setExpectEndTime(int expectEndTime) {
        ExpectEndTime = expectEndTime;
    }

    public int getStatus() {
        return Status;
    }

    public void setStatus(int status) {

        Status = status;
    }

    public int getConsumTime() {
        return ConsumTime;
    }

    public void setConsumTime(int consumTime) {
        ConsumTime = consumTime;
    }

    public int getProgress() {
        return Progress;
    }

    public void setProgress(int progress) {
        Progress = progress;
    }
}
