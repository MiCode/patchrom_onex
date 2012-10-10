.class public Lcom/android/camera/AlarmIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmIntentReceiver.java"


# static fields
.field public static final MediaCount:Ljava/lang/String; = "android.intent.action.camera.ulog.MEDIACOUNT"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    const-string v0, "AlarmIntentReceiver"

    iput-object v0, p0, Lcom/android/camera/AlarmIntentReceiver;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/camera/AlarmIntentReceiver;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.camera.ulog.MEDIACOUNT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 67
    iget-object v5, p0, Lcom/android/camera/AlarmIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "pref_bi_photo_mode_setting_snap_history"

    invoke-static {v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, photo_settings:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/AlarmIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "pref_bi_video_setting_recording_history"

    invoke-static {v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, video_settings:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/AlarmIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "pref_bi_continuousburst_history"

    invoke-static {v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, continuousburst_count:Ljava/lang/String;
    const-string v5, "null"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const-string v5, "null"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 104
    .end local v1           #continuousburst_count:Ljava/lang/String;
    .end local v2           #photo_settings:Ljava/lang/String;
    .end local v4           #video_settings:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 81
    .restart local v1       #continuousburst_count:Ljava/lang/String;
    .restart local v2       #photo_settings:Ljava/lang/String;
    .restart local v4       #video_settings:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v3

    .line 84
    .local v3, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v5, "com.android.camera"

    invoke-virtual {v3, v5}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "Camera_settings"

    invoke-interface {v5, v6}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "photo_settings"

    invoke-interface {v5, v6, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "video_settings"

    invoke-interface {v5, v6, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "continuousburst_count"

    invoke-interface {v5, v6, v1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 90
    invoke-static {v3}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 91
    invoke-virtual {v3}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 94
    iget-object v5, p0, Lcom/android/camera/AlarmIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "pref_bi_photo_mode_setting_snap_history"

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 95
    iget-object v5, p0, Lcom/android/camera/AlarmIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "pref_bi_video_setting_recording_history"

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 96
    iget-object v5, p0, Lcom/android/camera/AlarmIntentReceiver;->mContext:Landroid/content/Context;

    const-string v6, "pref_bi_continuousburst_history"

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    .end local v1           #continuousburst_count:Ljava/lang/String;
    .end local v2           #photo_settings:Ljava/lang/String;
    .end local v3           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    .end local v4           #video_settings:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/camera/AlarmIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected intent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
