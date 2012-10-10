.class Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;
.super Lcom/htc/music/IMusicPluginService$Stub;
.source "DMCMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DMCPlaybackServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/DMCMusicPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 2175
    invoke-direct {p0}, Lcom/htc/music/IMusicPluginService$Stub;-><init>()V

    .line 2176
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 2177
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
    .line 2305
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->clearAlbumArtRequests()V

    .line 2306
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
    .line 2309
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->clearNowplayingQueueRequests()V

    .line 2310
    return-void
.end method

.method public close(Z)V
    .locals 1
    .parameter "isPowerOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2385
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->close(Z)V
    invoke-static {v0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->access$2200(Lcom/htc/music/DMCMusicPlaybackService;Z)V

    .line 2386
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumArtByIndex(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "index"

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->getAlbumArtByIndex(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumArtPath()V
    .locals 1

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getAlbumArtPath()V

    .line 2257
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
    .line 2314
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->getAlbumArtPathByPosition(I)Ljava/lang/String;

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
    .line 2319
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

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
    .line 2375
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->getAlbumId()I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$2100(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2224
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getArtistName()Ljava/lang/String;

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
    .line 2355
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getBufferingPercent()I
    .locals 1

    .prologue
    .line 2301
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getBufferingPercent()I

    move-result v0

    return v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getComposer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getGenre()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotifyIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2268
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getNotifyIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getNowplayingQueue(I)V
    .locals 0
    .parameter "interval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2330
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
    .line 2365
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getPlayerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2264
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getPluginIcon()Landroid/graphics/Bitmap;

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
    .line 2347
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;

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
    .line 2334
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->getPositionByShufflePosition(I)I

    move-result v0

    return v0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getQueueSize()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getShuffleMode()I

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
    .line 2343
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->getShufflePositionByPosition(I)I

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
    .line 2338
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->getTrackDetails(I)V

    .line 2339
    return-void
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getTrackName()Ljava/lang/String;

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
    .line 2360
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->getVolume()I

    move-result v0

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
    .line 2380
    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->isPlaying()Z

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
    .line 2351
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->isPluginReady()Z

    move-result v0

    return v0
.end method

.method public next(Z)V
    .locals 2
    .parameter "changeSong"

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/DMCMusicPlaybackService;->next(Z)V

    .line 2205
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->pause()V

    .line 2193
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->play()V

    .line 2197
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev(Z)V
    .locals 1
    .parameter "changeSong"

    .prologue
    .line 2200
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->prev()V

    .line 2201
    return-void
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
    .line 2273
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->registerCallback(Lcom/htc/music/IPluginIPCNotify;)V

    .line 2274
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/DMCMusicPlaybackService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->setQueuePosition(I)V

    .line 2233
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->setRepeatMode(I)V

    .line 2245
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .parameter "shufflemode"

    .prologue
    .line 2236
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->setShuffleMode(I)V

    .line 2237
    return-void
.end method

.method public setVolume(I)V
    .locals 1
    .parameter "nVol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMCMusicPlaybackService;->setVolume(I)V

    .line 2371
    return-void
.end method

.method public startPluginActivity()V
    .locals 1

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->startPluginActivity()V

    .line 2282
    return-void
.end method

.method public stop(Z)V
    .locals 1
    .parameter "stateChanged"

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->stop()V

    .line 2189
    return-void
.end method

.method public unregisterCallback()V
    .locals 1

    .prologue
    .line 2277
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DMCPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->unregisterCallback()V

    .line 2278
    return-void
.end method
