.class Lcom/htc/music/HtcMusic$16;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1419
    iget-object v2, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return-void

    .line 1422
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAnimationStatus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1423
    iget-object v2, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 1427
    .local v1, isMirrorPlayOnTV:Z
    :goto_1
    if-eqz v1, :cond_3

    .line 1428
    const-string v2, "[HtcMusic]"

    const-string v3, "mNextListener TV is on"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    iget-object v2, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 1430
    iget-object v2, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->next()V

    .line 1431
    iget-object v2, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->handleTVReadyToPlay()V
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$300(Lcom/htc/music/HtcMusic;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1439
    .end local v1           #isMirrorPlayOnTV:Z
    :catch_0
    move-exception v0

    .line 1440
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1423
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1434
    .restart local v1       #isMirrorPlayOnTV:Z
    :cond_3
    :try_start_1
    const-string v2, "[HtcMusic]"

    const-string v3, "mNextListener TV is off"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    iget-object v2, p0, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->next()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
