.class Lcom/htc/music/DMCMusicPlaybackService$2;
.super Landroid/os/Handler;
.source "DMCMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCMusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService$2;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 1053
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$2;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$2;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mServiceInUse:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1500(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$2;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1600(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$2;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0, v1}, Lcom/htc/music/DMCMusicPlaybackService;->stopForeground(Z)V

    .line 1061
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$2;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    iget-object v1, p0, Lcom/htc/music/DMCMusicPlaybackService$2;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mServiceStartId:I
    invoke-static {v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$1700(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/music/DMCMusicPlaybackService;->stopSelf(I)V

    goto :goto_0
.end method
