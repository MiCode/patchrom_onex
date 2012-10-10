.class Lcom/htc/music/MediaPlaybackService$8;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


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
    .line 1535
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    .line 1538
    const-string v1, "album_id"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1541
    .local v0, albumId:I
    if-gez v0, :cond_1

    .line 1542
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal Arguments - albumId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    :cond_0
    :goto_0
    return-void

    .line 1546
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v2

    .line 1547
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$5100(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1548
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, -0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mLastAlbumId:I
    invoke-static {v1, v3}, Lcom/htc/music/MediaPlaybackService;->access$5102(Lcom/htc/music/MediaPlaybackService;I)I

    .line 1549
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mLastAlbumArtPath:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/htc/music/MediaPlaybackService;->access$5202(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 1551
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1553
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1554
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "action_complete_one_download"

    #calls: Lcom/htc/music/MediaPlaybackService;->updateRemoteControlClient(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$5300(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0

    .line 1551
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
