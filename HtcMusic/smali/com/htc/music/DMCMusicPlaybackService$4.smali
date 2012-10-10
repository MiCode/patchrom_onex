.class Lcom/htc/music/DMCMusicPlaybackService$4;
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
    .line 2622
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService$4;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2625
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2633
    :cond_0
    :goto_0
    return-void

    .line 2627
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$4;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    iget-boolean v0, v0, Lcom/htc/music/DMCMusicPlaybackService;->isPlaybackDisabled:Z

    if-eqz v0, :cond_0

    .line 2628
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$4;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->enablePlaybakControl()V
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$2900(Lcom/htc/music/DMCMusicPlaybackService;)V

    .line 2629
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$4;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    const/4 v1, -0x1

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0, v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    goto :goto_0

    .line 2625
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
