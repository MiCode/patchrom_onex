.class Lcom/htc/music/DMCMusicPlaybackService$RendererStatusListener;
.super Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;
.source "DMCMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RendererStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCMusicPlaybackService;


# direct methods
.method private constructor <init>(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 2568
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService$RendererStatusListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/music/DMCMusicPlaybackService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2568
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService$RendererStatusListener;-><init>(Lcom/htc/music/DMCMusicPlaybackService;)V

    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 2572
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "RendererStatusListener onConnected"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    return-void
.end method

.method public onDisconnected(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 2583
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RendererStatusListener onDisconnected. ErrorReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Error ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$RendererStatusListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    const/16 v1, -0x2715

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->pluginNotifyError(I)V
    invoke-static {v0, v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$3000(Lcom/htc/music/DMCMusicPlaybackService;I)V

    .line 2587
    return-void
.end method

.method public onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 2577
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "RendererStatusListener onMirrorRendererConnected"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    return-void
.end method
