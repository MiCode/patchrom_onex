.class Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;
.super Ljava/lang/Object;
.source "DMCMusicPlaybackService.java"

# interfaces
.implements Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLNAMusicServiceStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCMusicPlaybackService;


# direct methods
.method private constructor <init>(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 2411
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/DMCMusicPlaybackService;Lcom/htc/music/DMCMusicPlaybackService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2411
    invoke-direct {p0, p1}, Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;-><init>(Lcom/htc/music/DMCMusicPlaybackService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    .prologue
    .line 2417
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "DLNAMusicServiceStatusListener onServiceConnected()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mIsDLNAManagerConnected:Z
    invoke-static {v0, v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$2402(Lcom/htc/music/DMCMusicPlaybackService;Z)Z

    .line 2420
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->setRenderer()V
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$2500(Lcom/htc/music/DMCMusicPlaybackService;)V

    .line 2421
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->startToPlay()V
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$2600(Lcom/htc/music/DMCMusicPlaybackService;)V

    .line 2422
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMCMusicPlaybackService;->notifyDlnaConnected()V

    .line 2424
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 2430
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "DLNAMusicServiceStatusListener onServiceDisconnected "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mIsDLNAManagerConnected:Z
    invoke-static {v0, v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$2402(Lcom/htc/music/DMCMusicPlaybackService;Z)Z

    .line 2432
    return-void
.end method

.method public onServiceError()V
    .locals 2

    .prologue
    .line 2437
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "DLNAMusicServiceStatusListener onServiceError "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    return-void
.end method
