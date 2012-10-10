.class Lcom/htc/music/DMCMusicPlaybackService$DmcUiPlaybackServiceStub;
.super Lcom/htc/music/IDmcUiPlaybackService$Stub;
.source "DMCMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DmcUiPlaybackServiceStub"
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
    .line 2393
    invoke-direct {p0}, Lcom/htc/music/IDmcUiPlaybackService$Stub;-><init>()V

    .line 2394
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DmcUiPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 2395
    return-void
.end method


# virtual methods
.method public play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DmcUiPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->play()V

    .line 2406
    return-void
.end method

.method public setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;)V
    .locals 10
    .parameter "serverId"
    .parameter "containerId"
    .parameter "contentId"
    .parameter "startIdx"
    .parameter "endIdx"
    .parameter "dir"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2400
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DmcUiPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMCMusicPlaybackService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;)V
    invoke-static/range {v0 .. v9}, Lcom/htc/music/DMCMusicPlaybackService;->access$2300(Lcom/htc/music/DMCMusicPlaybackService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;)V

    .line 2402
    return-void
.end method
