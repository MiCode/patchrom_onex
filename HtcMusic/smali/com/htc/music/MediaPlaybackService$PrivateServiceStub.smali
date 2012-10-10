.class Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;
.super Lcom/htc/music/IMediaPlaybackService$Stub;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrivateServiceStub"
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
    .line 6707
    invoke-direct {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;-><init>()V

    .line 6708
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 6709
    return-void
.end method


# virtual methods
.method public activityGoSleep()V
    .locals 1

    .prologue
    .line 6969
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6970
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->activityGoSleep()V

    .line 6971
    :cond_0
    return-void
.end method

.method public activityWakeup()V
    .locals 1

    .prologue
    .line 6974
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6975
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->activityWakeup()V

    .line 6976
    :cond_0
    return-void
.end method

.method public addToQueue(II)V
    .locals 1
    .parameter "type"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7290
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7291
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->addToQueue(II)V
    invoke-static {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->access$11100(Lcom/htc/music/MediaPlaybackService;II)V

    .line 7293
    :cond_0
    return-void
.end method

.method public addToQueueByDbTable(III)V
    .locals 1
    .parameter "table"
    .parameter "type"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7297
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7298
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->addToQueueByDbTable(III)V
    invoke-static {v0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->access$11200(Lcom/htc/music/MediaPlaybackService;III)V

    .line 7300
    :cond_0
    return-void
.end method

.method public addToQueueForMultiConditions(III)V
    .locals 1
    .parameter "type"
    .parameter "id"
    .parameter "albumId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7303
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7304
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->addToQueueForMultiConditions(III)V
    invoke-static {v0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->access$11300(Lcom/htc/music/MediaPlaybackService;III)V

    .line 7306
    :cond_0
    return-void
.end method

.method public addToQueueForMultiConditionsByDbTable(IIII)V
    .locals 1
    .parameter "table"
    .parameter "type"
    .parameter "id"
    .parameter "albumId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7310
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7311
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->addToQueueForMultiConditionsByDbTable(IIII)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/htc/music/MediaPlaybackService;->access$11400(Lcom/htc/music/MediaPlaybackService;IIII)V

    .line 7313
    :cond_0
    return-void
.end method

.method public bindPluginService(Ljava/lang/String;)V
    .locals 1
    .parameter "pluginClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7196
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7197
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->bindPluginService(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService;->access$10100(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 7198
    :cond_0
    return-void
.end method

.method public clearAlbumArtRequests()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7147
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7148
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->clearAlbumArtRequests()V

    .line 7149
    :cond_0
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
    .line 7178
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7179
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->clearNowplayingQueueRequests()V

    .line 7181
    :cond_0
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 6855
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6856
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    .line 6858
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public endAnimation()V
    .locals 1

    .prologue
    .line 6938
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6939
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->endAnimation()V

    .line 6940
    :cond_0
    return-void
.end method

.method public enqueue([II)V
    .locals 1
    .parameter "list"
    .parameter "action"

    .prologue
    .line 6817
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6818
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->enqueue([II)V

    .line 6819
    :cond_0
    return-void
.end method

.method public getAlbumArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7024
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7025
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v0

    .line 7027
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 7152
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7153
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 7155
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 1
    .parameter "shufflePosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7159
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7160
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    .line 7162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumId()I
    .locals 1

    .prologue
    .line 6796
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6797
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v0

    .line 6799
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6789
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6790
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 6792
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumQueue()[I
    .locals 1

    .prologue
    .line 6955
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6956
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumQueue()[I

    move-result-object v0

    .line 6958
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumQueuePosition()I
    .locals 1

    .prologue
    .line 6962
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6963
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumQueuePosition()I

    move-result v0

    .line 6965
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAlbumQueueSize()I
    .locals 1

    .prologue
    .line 6986
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6987
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumQueueSize()I

    move-result v0

    .line 6989
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimationStatus()Z
    .locals 1

    .prologue
    .line 6943
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6944
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAnimationStatus()Z

    move-result v0

    .line 6946
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArtistId()I
    .locals 1

    .prologue
    .line 6810
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6811
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getArtistId()I

    move-result v0

    .line 6813
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6803
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6804
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 6806
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioEffect()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7326
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7327
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getAudioEffect()Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$11600(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v0

    .line 7329
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioId()I
    .locals 1

    .prologue
    .line 6841
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6842
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v0

    .line 6844
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7274
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7275
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v0

    .line 7277
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferingPercent()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7133
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7134
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getBufferingPercent()I

    move-result v0

    .line 7136
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7105
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7106
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getComposer()Ljava/lang/String;

    move-result-object v0

    .line 7108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExternalPluginCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7140
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7141
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getExternalPluginCount()I

    move-result v0

    .line 7143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7112
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7113
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 7115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7119
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7120
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getGenre()Ljava/lang/String;

    move-result-object v0

    .line 7122
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastAudioEffect()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7342
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7343
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getLastAudioEffect()Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$11800(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v0

    .line 7345
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7126
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7127
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 7129
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 6926
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6927
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getMediaMountedCount()I

    move-result v0

    .line 6929
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNowplaying()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7266
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7267
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getNowplaying()[I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10900(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v0

    .line 7269
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNowplayingQueue(I)V
    .locals 1
    .parameter "interval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7184
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7185
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->getNowplayingQueue(I)V

    .line 7186
    :cond_0
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6834
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6835
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 6837
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7350
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7351
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getPlayerName()Ljava/lang/String;

    move-result-object v0

    .line 7352
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginClass(I)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7201
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7202
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getPluginClass(I)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService;->access$10200(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;

    move-result-object v0

    .line 7204
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginCount()I
    .locals 1

    .prologue
    .line 7043
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7044
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getPluginCount()I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9300(Lcom/htc/music/MediaPlaybackService;)I

    move-result v0

    .line 7046
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginDescription(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 7076
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7077
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getPluginDescription(I)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService;->access$9700(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;

    move-result-object v0

    .line 7079
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7069
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7070
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getPluginIcon()Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9600(Lcom/htc/music/MediaPlaybackService;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7072
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 7050
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7051
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getPluginName(I)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService;->access$9400(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;

    move-result-object v0

    .line 7053
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginNotReadyMsg()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7216
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7217
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10300(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v0

    .line 7219
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 7166
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7167
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v0

    .line 7169
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getQueue()[I
    .locals 1

    .prologue
    .line 6822
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6823
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getQueue()[I

    move-result-object v0

    .line 6825
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 6738
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6739
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getQueuePosition()I

    move-result v0

    .line 6741
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 6979
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6980
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getQueueSize()I

    move-result v0

    .line 6982
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecentAlbumId()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7232
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7233
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getRecentAlbumId()[I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10500(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v0

    .line 7236
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecentAlbumartPath([I)[Ljava/lang/String;
    .locals 1
    .parameter "albumIds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7250
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7251
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getRecentAlbumartPath([I)[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService;->access$10700(Lcom/htc/music/MediaPlaybackService;[I)[Ljava/lang/String;

    move-result-object v0

    .line 7254
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecentPlayedPlaylist()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7282
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7283
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getRecentPlayedPlaylist()[I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$11000(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v0

    .line 7285
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 6907
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6908
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 6910
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShortcutInfoList()[Landroid/content/ContentValues;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7241
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7242
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getShortcutInfoList()[Landroid/content/ContentValues;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10600(Lcom/htc/music/MediaPlaybackService;)[Landroid/content/ContentValues;

    move-result-object v0

    .line 7245
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 6874
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6875
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 6877
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 7189
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7190
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->getShufflePositionByPosition(I)I

    move-result v0

    .line 7192
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSongInfo(I)Ljava/lang/String;
    .locals 1
    .parameter "infoType"

    .prologue
    .line 6712
    const/4 v0, 0x0

    return-object v0
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
    .line 7173
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7174
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->getTrackDetails(I)V

    .line 7175
    :cond_0
    return-void
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6782
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6783
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    .line 6785
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 6914
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6915
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getVolume()I

    move-result v0

    .line 6917
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDmcOrPushMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7208
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7209
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$4100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    .line 7211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 6750
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6751
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    .line 6753
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPluginMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7062
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7063
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$4500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    .line 7065
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPluginReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7224
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7225
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginReady()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    .line 7227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceConnected()Z
    .locals 1

    .prologue
    .line 7098
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7099
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceConnected()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10000(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    .line 7101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemReady()Z
    .locals 1

    .prologue
    .line 7003
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7004
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->isSystemReady()Z

    move-result v0

    .line 7006
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveQueueItem(II)V
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 6829
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6830
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->moveQueueItem(II)V

    .line 6831
    :cond_0
    return-void
.end method

.method public next()V
    .locals 2

    .prologue
    .line 6777
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6778
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->next(Z)V

    .line 6779
    :cond_0
    return-void
.end method

.method public nextAlbum()V
    .locals 2

    .prologue
    .line 6998
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6999
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->nextAlbum(Z)V

    .line 7000
    :cond_0
    return-void
.end method

.method public onPluginSelected(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 7031
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7032
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->onPluginSelected(I)V

    .line 7033
    :cond_0
    return-void
.end method

.method public open([II)V
    .locals 1
    .parameter "list"
    .parameter "position"

    .prologue
    .line 6733
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6734
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openWithoutCategory([II)V
    invoke-static {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->access$9200(Lcom/htc/music/MediaPlaybackService;[II)V

    .line 6735
    :cond_0
    return-void
.end method

.method public openWithCategory([IILcom/htc/music/NpCategory;)V
    .locals 1
    .parameter "list"
    .parameter "position"
    .parameter "npc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7260
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7261
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openWithCategory([IILcom/htc/music/NpCategory;)V
    invoke-static {v0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->access$10800(Lcom/htc/music/MediaPlaybackService;[IILcom/htc/music/NpCategory;)V

    .line 7263
    :cond_0
    return-void
.end method

.method public openfile(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 6728
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6729
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/music/MediaPlaybackService;->open(Ljava/lang/String;Z)V

    .line 6730
    :cond_0
    return-void
.end method

.method public openfileAsync(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 6723
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6724
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->openAsync(Ljava/lang/String;)V

    .line 6725
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 6762
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6763
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 6764
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 6767
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6768
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 6769
    :cond_0
    return-void
.end method

.method public playAlbum(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 6716
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6717
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->playAlbum(I)I

    move-result v0

    .line 6719
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 6848
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6849
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v0

    .line 6851
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 6772
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6773
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->prev()V

    .line 6774
    :cond_0
    return-void
.end method

.method public prevAlbum()V
    .locals 1

    .prologue
    .line 6993
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6994
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->prevAlbum()V

    .line 6995
    :cond_0
    return-void
.end method

.method public refreshPlugin()V
    .locals 1

    .prologue
    .line 7057
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7058
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->refreshPlugin()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9500(Lcom/htc/music/MediaPlaybackService;)V

    .line 7059
    :cond_0
    return-void
.end method

.method public reloadQueue()V
    .locals 1

    .prologue
    .line 7010
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7011
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->reloadQueue()V

    .line 7012
    :cond_0
    return-void
.end method

.method public removeQueueTracks([I)I
    .locals 1
    .parameter "list"

    .prologue
    .line 6895
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6896
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->removeQueueTracks([I)I

    move-result v0

    .line 6898
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTrack(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 6888
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6889
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->removeTrack(I)I

    move-result v0

    .line 6891
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTracks(II)I
    .locals 1
    .parameter "first"
    .parameter "last"

    .prologue
    .line 6881
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6882
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->removeTracks(II)I

    move-result v0

    .line 6884
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTracksReduceBroadcast([I)I
    .locals 1
    .parameter "list"

    .prologue
    .line 7356
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7357
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->removeTracksReduceBroadcast([I)I

    move-result v0

    .line 7359
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 6862
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6863
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    move-result-wide v0

    .line 6865
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setAlbumQueue([I)V
    .locals 1
    .parameter "list"

    .prologue
    .line 6950
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6951
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->setAlbumQueue([I)V

    .line 6952
    :cond_0
    return-void
.end method

.method public setAudioEffect(Ljava/lang/String;ZI)V
    .locals 1
    .parameter "setting"
    .parameter "applySong"
    .parameter "saveStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7318
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7319
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->setAudioEffect(Ljava/lang/String;ZI)V
    invoke-static {v0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->access$11500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;ZI)V

    .line 7322
    :cond_0
    return-void
.end method

.method public setLastAudioEffect(Ljava/lang/String;)V
    .locals 1
    .parameter "setting"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7334
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7335
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->setLastAudioEffect(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService;->access$11700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 7338
    :cond_0
    return-void
.end method

.method public setMediaMode(Z)V
    .locals 0
    .parameter "mediaMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7016
    return-void
.end method

.method public setNpCategory(Lcom/htc/music/NpCategory;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 7088
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7089
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService;->access$9900(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/NpCategory;)V

    .line 7090
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "nOrientation"

    .prologue
    .line 7083
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7084
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->setOrientation(I)V
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService;->access$9800(Lcom/htc/music/MediaPlaybackService;I)V

    .line 7085
    :cond_0
    return-void
.end method

.method public setPlaylist([I)V
    .locals 2
    .parameter "list"

    .prologue
    .line 7093
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7094
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    .line 7095
    :cond_0
    return-void
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 6745
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6746
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->setQueuePosition(I)V

    .line 6747
    :cond_0
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 6902
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6903
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->setRepeatMode(I)V

    .line 6904
    :cond_0
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .parameter "shufflemode"

    .prologue
    .line 6869
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6870
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->setShuffleMode(I)V

    .line 6871
    :cond_0
    return-void
.end method

.method public setVolume(I)V
    .locals 1
    .parameter "nVol"

    .prologue
    .line 6921
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6922
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->setVolume(I)V

    .line 6923
    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 6933
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6934
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->startAnimation()V

    .line 6935
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 6757
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6758
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->stop()V

    .line 6759
    :cond_0
    return-void
.end method

.method public stopActivePlugin()V
    .locals 2

    .prologue
    .line 7036
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7037
    const/4 v0, 0x1

    .line 7038
    .local v0, isPowerOff:Z
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V
    invoke-static {v1, v0}, Lcom/htc/music/MediaPlaybackService;->access$4300(Lcom/htc/music/MediaPlaybackService;Z)V

    .line 7040
    .end local v0           #isPowerOff:Z
    :cond_0
    return-void
.end method

.method public syncNowPlayingQueue([I)V
    .locals 1
    .parameter "list"

    .prologue
    .line 7019
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7020
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->syncNowPlayingQueue([I)V

    .line 7021
    :cond_0
    return-void
.end method
