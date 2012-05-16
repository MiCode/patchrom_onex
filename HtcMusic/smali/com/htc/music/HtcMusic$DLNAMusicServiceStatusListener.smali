.class Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLNAMusicServiceStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method private constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 7987
    iput-object p1, p0, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7987
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;-><init>(Lcom/htc/music/HtcMusic;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7992
    const-string v1, "[HtcMusic]"

    const-string v2, "DLNAMusicServiceStatusListener onServiceConnected()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7993
    iget-object v1, p0, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mIsDLNAManagerConnected:Z
    invoke-static {v1, v3}, Lcom/htc/music/HtcMusic;->access$9602(Lcom/htc/music/HtcMusic;Z)Z

    .line 7995
    iget-object v1, p0, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$9700(Lcom/htc/music/HtcMusic;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$4400(Lcom/htc/music/HtcMusic;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7996
    new-instance v0, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 7997
    .local v0, notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    iput v3, v0, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 7998
    const-string v1, "com.htc.music.PLAYBACK_VIEWER"

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 7999
    iget-object v1, p0, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 8000
    const-string v1, "HtcMusic"

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 8002
    iget-object v1, p0, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$4400(Lcom/htc/music/HtcMusic;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    .line 8003
    iget-object v1, p0, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z
    invoke-static {v1, v2}, Lcom/htc/music/HtcMusic;->access$9702(Lcom/htc/music/HtcMusic;Z)Z

    .line 8006
    .end local v0           #notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 8012
    const-string v0, "[HtcMusic]"

    const-string v1, "DLNAMusicServiceStatusListener onServiceDisconnected "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8013
    iget-object v0, p0, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mIsDLNAManagerConnected:Z
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$9602(Lcom/htc/music/HtcMusic;Z)Z

    .line 8014
    return-void
.end method

.method public onServiceError()V
    .locals 2

    .prologue
    .line 8019
    const-string v0, "[HtcMusic]"

    const-string v1, "DLNAMusicServiceStatusListener onServiceError "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8020
    iget-object v0, p0, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mIsDLNAManagerConnected:Z
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$9602(Lcom/htc/music/HtcMusic;Z)Z

    .line 8021
    return-void
.end method
