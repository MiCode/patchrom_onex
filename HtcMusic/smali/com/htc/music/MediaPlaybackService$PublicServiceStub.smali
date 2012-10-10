.class Lcom/htc/music/MediaPlaybackService$PublicServiceStub;
.super Lcom/htc/music/IHtcMediaPlaybackService$Stub;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PublicServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/MediaPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 7367
    invoke-direct {p0}, Lcom/htc/music/IHtcMediaPlaybackService$Stub;-><init>()V

    .line 7368
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 7369
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 7460
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7461
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    .line 7463
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getAlbumArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7452
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7453
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v0

    .line 7455
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumId()I
    .locals 1

    .prologue
    .line 7417
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7418
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v0

    .line 7420
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7410
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7411
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 7413
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArtistId()I
    .locals 1

    .prologue
    .line 7431
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7432
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getArtistId()I

    move-result v0

    .line 7434
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7424
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7425
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 7427
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioId()I
    .locals 1

    .prologue
    .line 7445
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7446
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v0

    .line 7448
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7438
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7439
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 7441
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 7498
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7499
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 7501
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 7486
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7487
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 7489
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7403
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7404
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    .line 7406
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 7505
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7506
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getVolume()I

    move-result v0

    .line 7508
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 7371
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7372
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    .line 7374
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 7398
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7399
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->next(Z)V

    .line 7400
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 7383
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7384
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 7385
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 7388
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7389
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 7390
    :cond_0
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 7467
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7468
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v0

    .line 7470
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 7393
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7394
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->prev()V

    .line 7395
    :cond_0
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 7474
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7475
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    move-result-wide v0

    .line 7477
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 7493
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7494
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->setRepeatMode(I)V

    .line 7495
    :cond_0
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .parameter "shufflemode"

    .prologue
    .line 7481
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7482
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->setShuffleMode(I)V

    .line 7483
    :cond_0
    return-void
.end method

.method public setVolume(I)V
    .locals 1
    .parameter "nVol"

    .prologue
    .line 7512
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7513
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->setVolume(I)V

    .line 7514
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 7378
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7379
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->stop()V

    .line 7380
    :cond_0
    return-void
.end method
