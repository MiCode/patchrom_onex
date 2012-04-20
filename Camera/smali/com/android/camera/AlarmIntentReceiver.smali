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
    .locals 9
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
    const-string v6, "android.intent.action.camera.ulog.MEDIACOUNT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 32
    iget-object v6, p0, Lcom/android/camera/AlarmIntentReceiver;->mContext:Landroid/content/Context;

    const-string v7, "pref_bi_photo_taken"

    invoke-static {v6, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, photo_taken:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/AlarmIntentReceiver;->mContext:Landroid/content/Context;

    const-string v7, "pref_bi_video_taken"

    invoke-static {v6, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, video_taken:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/AlarmIntentReceiver;->mContext:Landroid/content/Context;

    const-string v7, "pref_bi_actionburst_pohto_taken"

    invoke-static {v6, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, actionburst_taken:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/AlarmIntentReceiver;->mContext:Landroid/content/Context;

    const-string v7, "pref_bi_snapbooth_taken"

    invoke-static {v6, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, snapbooth_taken:Ljava/lang/String;
    const-string v6, "null"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    const-string v6, "null"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    const-string v6, "null"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 41
    :cond_3
    iget-object v6, p0, Lcom/android/camera/AlarmIntentReceiver;->TAG:Ljava/lang/String;

    const-string v7, "No picture, just return"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v1           #actionburst_taken:Ljava/lang/String;
    .end local v2           #photo_taken:Ljava/lang/String;
    .end local v3           #snapbooth_taken:Ljava/lang/String;
    .end local v5           #video_taken:Ljava/lang/String;
    :goto_0
    return-void

    .line 47
    .restart local v1       #actionburst_taken:Ljava/lang/String;
    .restart local v2       #photo_taken:Ljava/lang/String;
    .restart local v3       #snapbooth_taken:Ljava/lang/String;
    .restart local v5       #video_taken:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v4

    .line 50
    .local v4, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v6, "com.android.camera"

    invoke-virtual {v4, v6}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v6

    const-string v7, "photo_video_taken"

    invoke-interface {v6, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v6

    const-string v7, "photo"

    invoke-interface {v6, v7, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v6

    const-string v7, "video"

    invoke-interface {v6, v7, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v6

    const-string v7, "snapbooth_photo"

    invoke-interface {v6, v7, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v6

    const-string v7, "burst_photo"

    invoke-interface {v6, v7, v1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 56
    invoke-static {v4}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 57
    invoke-virtual {v4}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 60
    iget-object v6, p0, Lcom/android/camera/AlarmIntentReceiver;->mContext:Landroid/content/Context;

    const-string v7, "pref_bi_photo_taken"

    const-string v8, "0"

    invoke-static {v6, v7, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 61
    iget-object v6, p0, Lcom/android/camera/AlarmIntentReceiver;->mContext:Landroid/content/Context;

    const-string v7, "pref_bi_video_taken"

    const-string v8, "0"

    invoke-static {v6, v7, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 62
    iget-object v6, p0, Lcom/android/camera/AlarmIntentReceiver;->mContext:Landroid/content/Context;

    const-string v7, "pref_bi_actionburst_pohto_taken"

    const-string v8, "0"

    invoke-static {v6, v7, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 63
    iget-object v6, p0, Lcom/android/camera/AlarmIntentReceiver;->mContext:Landroid/content/Context;

    const-string v7, "pref_bi_snapbooth_taken"

    const-string v8, "0"

    invoke-static {v6, v7, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v1           #actionburst_taken:Ljava/lang/String;
    .end local v2           #photo_taken:Ljava/lang/String;
    .end local v3           #snapbooth_taken:Ljava/lang/String;
    .end local v4           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    .end local v5           #video_taken:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/camera/AlarmIntentReceiver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected intent : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
