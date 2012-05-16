.class Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;
.super Lcom/htc/music/IMusicPluginService$Stub;
.source "DMPMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DMPPlaybackServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/DMPMusicPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/music/DMPMusicPlaybackService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 3415
    invoke-direct {p0}, Lcom/htc/music/IMusicPluginService$Stub;-><init>()V

    .line 3416
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 3417
    return-void
.end method


# virtual methods
.method public clearAlbumArtRequests()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3572
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->clearAlbumArtRequests()V

    .line 3573
    return-void
.end method

.method public clearNowplayingQueueRequests()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3576
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->clearNowplayingQueueRequests()V

    .line 3577
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3647
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 3476
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumArtByIndex(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "index"

    .prologue
    .line 3528
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getAlbumArtByIndex(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumArtPath()V
    .locals 1

    .prologue
    .line 3524
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getAlbumArtPath()V

    .line 3525
    return-void
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3580
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3584
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3636
    const/4 v0, -0x1

    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3492
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3496
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3617
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getBufferingPercent()I
    .locals 1

    .prologue
    .line 3568
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getBufferingPercent()I

    move-result v0

    return v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3560
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getComposer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3552
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3556
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getGenre()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3564
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotifyIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3536
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getNotifyIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getNowplayingQueue(I)V
    .locals 4
    .parameter "interval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3589
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v2

    const/16 v3, 0x2aff

    invoke-virtual {v2, v3}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3590
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3591
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "interval"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3592
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3593
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3594
    return-void
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3631
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3532
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPluginNotReadyMsg()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3609
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionByShufflePosition(I)I
    .locals 1
    .parameter "shufflePosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3597
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getPositionByShufflePosition(I)I

    move-result v0

    return v0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 3420
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 3520
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getQueueSize()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 3516
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 3508
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getShufflePositionByPosition(I)I
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3605
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getShufflePositionByPosition(I)I

    move-result v0

    return v0
.end method

.method public getTrackDetails(I)V
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3601
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getTrackDetails(I)V

    .line 3602
    return-void
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3488
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3622
    const/4 v0, 0x0

    return v0
.end method

.method public isDmcOrPushMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3641
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 3424
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPluginReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3613
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->isPluginReady()Z

    move-result v0

    return v0
.end method

.method public next(Z)V
    .locals 4
    .parameter "changeSong"

    .prologue
    const/4 v2, 0x0

    .line 3460
    if-nez p1, :cond_0

    .line 3461
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/DMPMusicPlaybackService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/htc/music/DMPMusicPlaybackService;->next(ZZ)V

    .line 3473
    :goto_0
    return-void

    .line 3464
    :cond_0
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/DMPMusicPlaybackService;

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->checkBeforeNextOrPre()Z
    invoke-static {v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$5300(Lcom/htc/music/DMPMusicPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3465
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static {v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v1

    const/16 v3, 0x2afa

    invoke-virtual {v1, v3}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3466
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_1

    const v1, 0x1f8b1

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3467
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static {v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    move v1, v2

    .line 3466
    goto :goto_1

    .line 3471
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "** Press next button too fast, ignore this time..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 3432
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->pause()V

    .line 3433
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 3436
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->play()V

    .line 3437
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 3480
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev(Z)V
    .locals 4
    .parameter "changeSong"

    .prologue
    const/4 v2, 0x0

    .line 3442
    if-nez p1, :cond_0

    .line 3443
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v1, v2}, Lcom/htc/music/DMPMusicPlaybackService;->prev(Z)V

    .line 3455
    :goto_0
    return-void

    .line 3446
    :cond_0
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/DMPMusicPlaybackService;

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->checkBeforeNextOrPre()Z
    invoke-static {v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$5300(Lcom/htc/music/DMPMusicPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3447
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static {v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v1

    const/16 v3, 0x2af9

    invoke-virtual {v1, v3}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3448
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_1

    const v1, 0x1f8b1

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3449
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static {v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    move v1, v2

    .line 3448
    goto :goto_1

    .line 3453
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "** Press prev button too fast, ignore this time..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerCallback(Lcom/htc/music/IPluginIPCNotify;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3540
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->registerCallback(Lcom/htc/music/IPluginIPCNotify;)V

    .line 3541
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 3484
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/DMPMusicPlaybackService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3500
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->setQueuePosition(I)V

    .line 3501
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 3512
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->setRepeatMode(I)V

    .line 3513
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .parameter "shufflemode"

    .prologue
    .line 3504
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->setShuffleMode(I)V

    .line 3505
    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .parameter "nVol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3627
    return-void
.end method

.method public startPluginActivity()V
    .locals 1

    .prologue
    .line 3548
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->startPluginActivity()V

    .line 3549
    return-void
.end method

.method public stop(Z)V
    .locals 1
    .parameter "stateChanged"

    .prologue
    .line 3428
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->stop(Z)V
    invoke-static {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->access$2400(Lcom/htc/music/DMPMusicPlaybackService;Z)V

    .line 3429
    return-void
.end method

.method public unregisterCallback()V
    .locals 1

    .prologue
    .line 3544
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->unregisterCallback()V

    .line 3545
    return-void
.end method
