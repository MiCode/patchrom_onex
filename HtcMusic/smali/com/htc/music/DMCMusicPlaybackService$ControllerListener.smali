.class Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;
.super Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
.source "DMCMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCMusicPlaybackService;


# direct methods
.method private constructor <init>(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 2441
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/music/DMCMusicPlaybackService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2441
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;-><init>(Lcom/htc/music/DMCMusicPlaybackService;)V

    return-void
.end method


# virtual methods
.method public onAlbumArtDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"

    .prologue
    .line 2563
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;
    invoke-static {v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$700(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2564
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2565
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "adn_server"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    const-string v2, "adn_content"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    const-string v2, "adn_filepath"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2568
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2569
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;
    invoke-static {v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$700(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/music/DMCMusicPlaybackService$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2570
    return-void
.end method

.method public onControllerInfoupdated(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V
    .locals 5
    .parameter "ctlInfo"

    .prologue
    .line 2512
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    invoke-static {v2, p1}, Lcom/htc/music/DMCMusicPlaybackService;->access$3102(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 2513
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    iget-object v3, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRName:Ljava/lang/String;

    .line 2515
    iget-wide v2, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    long-to-int v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 2516
    .local v1, tempPos:I
    if-ltz v1, :cond_2

    .line 2517
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I
    invoke-static {v2, v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$3202(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 2524
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getContentID()Ljava/lang/String;

    move-result-object v0

    .line 2526
    .local v0, contentID:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2527
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mContentID:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$3302(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 2533
    :goto_0
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onControllerInfoupdated] mCurrentDMRName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    iget-object v4, v4, Lcom/htc/music/DMCMusicPlaybackService;->mCurrentDMRName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onControllerInfoupdated] mPlayPos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayPos:I
    invoke-static {v4}, Lcom/htc/music/DMCMusicPlaybackService;->access$3200(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v3}, Lcom/htc/music/DMCMusicPlaybackService;->access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getItemDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v3

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    invoke-static {v2, v3}, Lcom/htc/music/DMCMusicPlaybackService;->access$3402(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 2536
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    const-string v3, "com.htc.music.plugin.metachanged"

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/DMCMusicPlaybackService;->access$2700(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V

    .line 2538
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mRepeatMode:I
    invoke-static {v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$3500(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/DMCMusicPlaybackService;->getRepeatMode()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 2539
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/DMCMusicPlaybackService;->getRepeatMode()I

    move-result v3

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mRepeatMode:I
    invoke-static {v2, v3}, Lcom/htc/music/DMCMusicPlaybackService;->access$3502(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 2540
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/DMCMusicPlaybackService;->notifyRepeatChanged()V

    .line 2544
    :cond_0
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mShuffleMode:I
    invoke-static {v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$3600(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/DMCMusicPlaybackService;->getShuffleMode()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 2545
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    iget-object v3, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/DMCMusicPlaybackService;->getShuffleMode()I

    move-result v3

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mShuffleMode:I
    invoke-static {v2, v3}, Lcom/htc/music/DMCMusicPlaybackService;->access$3602(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 2546
    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/DMCMusicPlaybackService;->notifyShuffleChanged()V

    .line 2549
    .end local v0           #contentID:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 2520
    :cond_2
    const-string v2, "[DMCMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onControllerInfoupdated] tempPos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2530
    .restart local v0       #contentID:Ljava/lang/String;
    :cond_3
    const-string v2, "[DMCMusicPlaybackService]"

    const-string v3, "mDLNAManager.getContentID() is null or empty string!!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 2554
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLNAController onError. ErrorID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ErrorReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->handleError(I)V
    invoke-static {v0, p2}, Lcom/htc/music/DMCMusicPlaybackService;->access$3700(Lcom/htc/music/DMCMusicPlaybackService;I)V

    .line 2556
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 9
    .parameter "playState"

    .prologue
    const/4 v8, 0x1

    const/16 v7, -0x2717

    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2447
    move v0, p1

    .line 2448
    .local v0, nState:I
    const-string v1, "[DMCMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNAController onStateChanged, nState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 2452
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    const-string v2, "com.htc.music.plugin.statechanged.buffering"

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$2700(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V

    .line 2507
    :cond_0
    :goto_0
    return-void

    .line 2454
    :cond_1
    const/16 v1, 0x6a

    if-ne v0, v1, :cond_2

    .line 2456
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    const-string v2, "com.htc.music.plugin.statechanged.waiting"

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$2700(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V

    goto :goto_0

    .line 2457
    :cond_2
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3

    .line 2458
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    const-string v2, "com.htc.music.plugin.playbackcomplete"

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$2700(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V

    .line 2459
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v1, v6}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    goto :goto_0

    .line 2460
    :cond_3
    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_4

    .line 2461
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->disablePlaybakControl()V
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$2800(Lcom/htc/music/DMCMusicPlaybackService;)V

    .line 2462
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v1, v8}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    goto :goto_0

    .line 2465
    :cond_4
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v1

    if-ne v1, v8, :cond_7

    .line 2466
    if-nez p1, :cond_5

    .line 2467
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "STATE_PLAYING notify PLUGIN_PLAYSTATE_CHANGED"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->enablePlaybakControl()V
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$2900(Lcom/htc/music/DMCMusicPlaybackService;)V

    .line 2469
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    const-string v2, "com.htc.music.plugin.statechanged"

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$2700(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V

    .line 2470
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v1, v4}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    goto :goto_0

    .line 2471
    :cond_5
    const/16 v1, 0x68

    if-ne p1, v1, :cond_0

    .line 2472
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v1, v6}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 2473
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V
    invoke-static {v1, v7}, Lcom/htc/music/DMCMusicPlaybackService;->access$3000(Lcom/htc/music/DMCMusicPlaybackService;I)V

    .line 2474
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$2000(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2475
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$2000(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2476
    :cond_6
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "Playing timeout"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2478
    :cond_7
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    .line 2479
    if-ne p1, v5, :cond_8

    .line 2480
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "STATE_PAUSED notify PLUGIN_PLAYSTATE_CHANGED"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->enablePlaybakControl()V
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$2900(Lcom/htc/music/DMCMusicPlaybackService;)V

    .line 2482
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    const-string v2, "com.htc.music.plugin.statechanged"

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$2700(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V

    .line 2484
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v1, v5}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    goto/16 :goto_0

    .line 2485
    :cond_8
    const/16 v1, 0x68

    if-ne p1, v1, :cond_0

    .line 2486
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v1, v6}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 2487
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V
    invoke-static {v1, v7}, Lcom/htc/music/DMCMusicPlaybackService;->access$3000(Lcom/htc/music/DMCMusicPlaybackService;I)V

    .line 2488
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$2000(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2489
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$2000(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2490
    :cond_9
    const-string v1, "[DMCMusicPlaybackService]"

    const-string v2, "PAUSE timeout"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2495
    :cond_a
    if-ne p1, v5, :cond_b

    .line 2496
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v1, v5}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 2497
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->enablePlaybakControl()V
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$2900(Lcom/htc/music/DMCMusicPlaybackService;)V

    .line 2498
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    const-string v2, "com.htc.music.plugin.statechanged"

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$2700(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2499
    :cond_b
    if-nez p1, :cond_0

    .line 2500
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v1, v4}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 2501
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->enablePlaybakControl()V
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$2900(Lcom/htc/music/DMCMusicPlaybackService;)V

    .line 2502
    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$ControllerListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    const-string v2, "com.htc.music.plugin.statechanged"

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$2700(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
