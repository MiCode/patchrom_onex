.class final Lcom/htc/music/MediaPlaybackService$NonUiHandler;
.super Landroid/os/Handler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lcom/htc/music/MediaPlaybackService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 510
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    .line 511
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 512
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .parameter "msg"

    .prologue
    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 763
    :pswitch_0
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Something wrong in NonUiHandler.handleMessage()."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 520
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager;->play()V

    goto :goto_0

    .line 524
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v5, 0x7bd

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Lcom/htc/music/MusicPluginManager;->stop(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 528
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager;->pause()V

    goto :goto_0

    .line 532
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPluginManager;->stop(Z)V

    .line 534
    const/16 v25, 0x0

    .line 535
    .local v25, playAnim:Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    .line 536
    .local v19, data:Landroid/os/Bundle;
    if-eqz v19, :cond_3

    .line 537
    const-string v2, "playAnim"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    .line 540
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v25, :cond_4

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPluginManager;->prev(Z)V

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v3, "com.htc.music.rotateleft"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$502(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 546
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPluginManager;->prev(Z)V

    goto/16 :goto_0

    .line 552
    .end local v19           #data:Landroid/os/Bundle;
    .end local v25           #playAnim:Z
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPluginManager;->stop(Z)V

    .line 554
    const/16 v25, 0x0

    .line 555
    .restart local v25       #playAnim:Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    .line 556
    .restart local v19       #data:Landroid/os/Bundle;
    if-eqz v19, :cond_5

    .line 557
    const-string v2, "playAnim"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    .line 560
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v25, :cond_6

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPluginManager;->next(Z)V

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v3, "com.htc.music.rotateright"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$502(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 566
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPluginManager;->next(Z)V

    goto/16 :goto_0

    .line 572
    .end local v19           #data:Landroid/os/Bundle;
    .end local v25           #playAnim:Z
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->enableCurrentSoundEffect(Landroid/content/Context;I)V

    .line 575
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$600(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HeadSetHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2, v3, v5}, Lcom/htc/music/util/HeadSetHelper;->startMonitor(Landroid/content/Context;Lcom/htc/music/util/IMonitorHeadSetStatus;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HdmiPlugReceiver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2, v3, v5}, Lcom/htc/music/util/HdmiPlugReceiver;->initInstance(Landroid/content/Context;Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;)Z

    goto/16 :goto_0

    .line 580
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->disableSoundEffect(Landroid/content/Context;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$600(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HeadSetHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/HeadSetHelper;->stopMonitor(Landroid/content/Context;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HdmiPlugReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/util/HdmiPlugReceiver;->deInitInstance()Z

    goto/16 :goto_0

    .line 586
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService;->reloadQueue()V

    goto/16 :goto_0

    .line 590
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService;->play()V

    goto/16 :goto_0

    .line 594
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v3, "com.htc.music.queuechanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v3, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 599
    :pswitch_b
    const/16 v26, 0x0

    .line 600
    .local v26, salbumartpath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v26

    .line 601
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NonUiHandler salbumartpath: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    if-nez v26, :cond_8

    .line 604
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "NonUiHandler salbumartpath == null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 608
    :cond_8
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "case CMD_DECODE_NOTIFICATION_ALBUMART: +++"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #setter for: Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$802(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$800(Lcom/htc/music/MediaPlaybackService;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 611
    .local v16, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v16

    #calls: Lcom/htc/music/MediaPlaybackService;->showNotificationAlbumArtInUiThread(Landroid/graphics/Bitmap;I)V
    invoke-static {v2, v0, v3}, Lcom/htc/music/MediaPlaybackService;->access$900(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V

    .line 612
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "case CMD_DECODE_NOTIFICATION_ALBUMART: ---"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 616
    .end local v16           #bitmap:Landroid/graphics/Bitmap;
    .end local v26           #salbumartpath:Ljava/lang/String;
    :pswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 617
    .local v29, uLogType:I
    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_0

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getDefaultTracks()Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1000(Lcom/htc/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v18

    .line 619
    .local v18, cursor:Landroid/database/Cursor;
    if-eqz v18, :cond_b

    .line 620
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 621
    .local v17, currentMusicCount:I
    const/16 v24, -0x1

    .line 624
    .local v24, lastMusicCount:I
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    const/16 v18, 0x0

    .line 631
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "musiccount"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "musiccount"

    const/4 v5, -0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 635
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v5, "Music"

    const/4 v8, 0x3

    invoke-virtual {v3, v5, v8}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$1102(Lcom/htc/music/MediaPlaybackService;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 637
    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 639
    .local v21, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "musiccount"

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 641
    :try_start_1
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 647
    :goto_3
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v28

    .line 650
    .local v28, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v2, "com.htc.music"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "storage"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "total_music"

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 655
    invoke-static/range {v28 .. v28}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 658
    invoke-virtual/range {v28 .. v28}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    goto/16 :goto_0

    .line 627
    .end local v21           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v28           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :catch_0
    move-exception v22

    .line 628
    .local v22, ex:Ljava/lang/Exception;
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "case CMD_USER_PROFILING_LOG: cursor close fail, ex: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 642
    .end local v22           #ex:Ljava/lang/Exception;
    .restart local v21       #ed:Landroid/content/SharedPreferences$Editor;
    :catch_1
    move-exception v20

    .line 643
    .local v20, e:Ljava/lang/Exception;
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "CMD_USER_PROFILING_LOG, Exception in ed.commit: "

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 661
    .end local v20           #e:Ljava/lang/Exception;
    .end local v21           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_a
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "CMD_USER_PROFILING_LOG, The music count is the same. Do nothing."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 665
    .end local v17           #currentMusicCount:I
    .end local v24           #lastMusicCount:I
    :cond_b
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "CMD_USER_PROFILING_LOG, cursor is null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 671
    .end local v18           #cursor:Landroid/database/Cursor;
    .end local v29           #uLogType:I
    :pswitch_d
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "CMD_REFRESH_PLAYLIST"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->refreshPlaylist()V
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1200(Lcom/htc/music/MediaPlaybackService;)V

    goto/16 :goto_0

    .line 700
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 701
    .local v4, bundle:Landroid/os/Bundle;
    const-string v2, "command"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 702
    .local v27, szCommand:Ljava/lang/String;
    const-string v2, "id"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 703
    .local v23, iID:I
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_PLAY_ALL, cmd = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", iID = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v2, "play_artist"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 706
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v6, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v6, v2

    .line 709
    .local v6, ccols:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "artist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is_music>=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 712
    .local v7, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    if-eqz v2, :cond_0

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    const/16 v3, 0x14

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const-string v9, "album COLLATE NOCASE ASC,track"

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/MediaPlaybackService$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 719
    .end local v6           #ccols:[Ljava/lang/String;
    .end local v7           #where:Ljava/lang/String;
    :cond_c
    const-string v2, "play_album"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 720
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v6, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v6, v2

    .line 723
    .restart local v6       #ccols:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is_music>=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 726
    .restart local v7       #where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    if-eqz v2, :cond_0

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    const/16 v3, 0x14

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const-string v9, "track"

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/MediaPlaybackService$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 733
    .end local v6           #ccols:[Ljava/lang/String;
    .end local v7           #where:Ljava/lang/String;
    :cond_d
    const-string v2, "play_playlist"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 734
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio_id"

    aput-object v3, v6, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v6, v2

    .line 738
    .restart local v6       #ccols:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    if-eqz v2, :cond_0

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v8, v2, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    const/16 v9, 0x14

    const-string v2, "external"

    move/from16 v0, v23

    int-to-long v10, v0

    invoke-static {v2, v10, v11}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "play_order"

    move-object v10, v4

    move-object v12, v6

    invoke-virtual/range {v8 .. v15}, Lcom/htc/music/MediaPlaybackService$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 745
    .end local v6           #ccols:[Ljava/lang/String;
    :cond_e
    const-string v2, "play_track"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 746
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v6, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v6, v2

    .line 749
    .restart local v6       #ccols:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is_music>=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 752
    .restart local v7       #where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    if-eqz v2, :cond_0

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService;->mQueryHandler:Lcom/htc/music/MediaPlaybackService$QueryHandler;

    const/16 v3, 0x14

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const-string v9, "track"

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/MediaPlaybackService$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 518
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method
