.class Lcom/htc/music/MediaPlaybackService$6;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 8
    .parameter "focusChange"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1455
    packed-switch p1, :pswitch_data_0

    .line 1513
    :pswitch_0
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Unknown audio focus change code"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    :cond_0
    :goto_0
    return-void

    .line 1457
    :pswitch_1
    const-string v2, "[MediaPlaybackService]"

    const-string v4, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v2

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1459
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$4902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1460
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$3702(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1461
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v2

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V

    .line 1463
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1464
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1465
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    goto :goto_0

    .line 1469
    :pswitch_2
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v4

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1471
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$4902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1472
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3, v2}, Lcom/htc/music/MediaPlaybackService;->access$3702(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1473
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v3

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$5000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V

    .line 1474
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->printATSStopMusicByPhoneCallLog()V

    .line 1477
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1478
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1479
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 1480
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3, v2}, Lcom/htc/music/MediaPlaybackService;->access$3702(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 1484
    :pswitch_3
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v4

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1486
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v4, v2}, Lcom/htc/music/MediaPlaybackService;->access$4902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1487
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$3702(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1488
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 1489
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Mute since received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1493
    :pswitch_4
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1495
    .local v1, tm:Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 1496
    .local v0, isPhoneHook:Z
    if-eqz v1, :cond_3

    .line 1497
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    move v0, v2

    .line 1499
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v2

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$3700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1500
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$3702(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1501
    if-nez v0, :cond_0

    .line 1502
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$3900(Lcom/htc/music/MediaPlaybackService;)V

    goto/16 :goto_0

    :cond_4
    move v0, v3

    .line 1497
    goto :goto_1

    .line 1504
    :cond_5
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$4900(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1505
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$4902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1506
    if-nez v0, :cond_6

    .line 1507
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$6;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 1509
    :cond_6
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "Unmute since received AUDIOFOCUS_GAIN"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1455
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
