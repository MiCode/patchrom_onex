.class Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 6244
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 10
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const-wide/16 v6, 0x7d0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6246
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6247
    sparse-switch p2, :sswitch_data_0

    .line 6296
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const v3, 0x7f070068

    #calls: Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V
    invoke-static {v1, v3, v2}, Lcom/htc/music/MediaPlaybackService;->access$7500(Lcom/htc/music/MediaPlaybackService;II)V

    .line 6297
    const-string v1, "[MediaPlaybackService]"

    const-string v3, "unhandled error"

    invoke-static {v1, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v1, v2

    .line 6301
    :cond_0
    :goto_1
    return v1

    .line 6249
    :sswitch_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 6250
    .local v0, status:Landroid/app/Notification;
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v3, v3, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3, v1, v0}, Lcom/htc/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 6259
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #setter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z
    invoke-static {v3, v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7302(Lcom/htc/music/MediaPlaybackService$MultiPlayer;Z)Z

    .line 6260
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v2

    .line 6262
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v3, v3, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v4, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$1602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6264
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7400(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 6268
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3, v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7402(Lcom/htc/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 6269
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7400(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 6270
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6271
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7200(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7200(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 6270
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 6275
    .end local v0           #status:Landroid/app/Notification;
    :sswitch_1
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #setter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z
    invoke-static {v3, v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7302(Lcom/htc/music/MediaPlaybackService$MultiPlayer;Z)Z

    .line 6276
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7400(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 6277
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const v3, 0x7f070094

    #calls: Lcom/htc/music/MediaPlaybackService;->showToast(II)V
    invoke-static {v2, v3, v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;II)V

    .line 6278
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7200(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7200(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 6283
    :sswitch_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7200(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7200(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6284
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7200(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 6286
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #setter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z
    invoke-static {v3, v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7302(Lcom/htc/music/MediaPlaybackService$MultiPlayer;Z)Z

    .line 6287
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7400(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 6288
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7200(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7200(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->access$7200(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 6292
    :sswitch_3
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v3, v3, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const v4, 0x7f070061

    #calls: Lcom/htc/music/MediaPlaybackService;->showToast(II)V
    invoke-static {v3, v4, v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;II)V

    goto/16 :goto_0

    .line 6247
    nop

    :sswitch_data_0
    .sparse-switch
        -0x26 -> :sswitch_2
        0x1 -> :sswitch_3
        0x64 -> :sswitch_0
        0x12c -> :sswitch_1
    .end sparse-switch
.end method
