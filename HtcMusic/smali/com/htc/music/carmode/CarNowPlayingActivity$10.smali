.class Lcom/htc/music/carmode/CarNowPlayingActivity$10;
.super Ljava/lang/Object;
.source "CarNowPlayingActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 1046
    const-string v0, "[CarNowPlayingActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected classname= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,IBinder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-static {p2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 1052
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsSeriveBinded:Z

    .line 1056
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->onServiceConnectedHandle()V
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2200(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1058
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "onServiceConnected finished"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 1062
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsSeriveBinded:Z

    .line 1064
    return-void
.end method
