.class Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;
.super Ljava/lang/Object;
.source "MusicMaActivity.java"

# interfaces
.implements Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicMaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLNAMusicServiceStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicMaActivity;


# direct methods
.method private constructor <init>(Lcom/htc/music/widget/MusicMaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 790
    iput-object p1, p0, Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/widget/MusicMaActivity;Lcom/htc/music/widget/MusicMaActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 790
    invoke-direct {p0, p1}, Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;-><init>(Lcom/htc/music/widget/MusicMaActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 795
    const-string v1, "[MusicMaActivity]"

    const-string v2, "DLNAMusicServiceStatusListener onServiceConnected()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #setter for: Lcom/htc/music/widget/MusicMaActivity;->mIsDLNAManagerConnected:Z
    invoke-static {v1, v3}, Lcom/htc/music/widget/MusicMaActivity;->access$802(Lcom/htc/music/widget/MusicMaActivity;Z)Z

    .line 798
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mNeedSetRendererAsDongle:Z
    invoke-static {v1}, Lcom/htc/music/widget/MusicMaActivity;->access$900(Lcom/htc/music/widget/MusicMaActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v1}, Lcom/htc/music/widget/MusicMaActivity;->access$500(Lcom/htc/music/widget/MusicMaActivity;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 799
    new-instance v0, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 800
    .local v0, notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    iput v3, v0, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 801
    const-string v1, "com.htc.music.PLAYBACK_VIEWER"

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 802
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v1}, Lcom/htc/music/widget/MusicMaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 803
    const-string v1, "HtcMusic"

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 805
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v1}, Lcom/htc/music/widget/MusicMaActivity;->access$500(Lcom/htc/music/widget/MusicMaActivity;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    .line 806
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/widget/MusicMaActivity;->mNeedSetRendererAsDongle:Z
    invoke-static {v1, v2}, Lcom/htc/music/widget/MusicMaActivity;->access$902(Lcom/htc/music/widget/MusicMaActivity;Z)Z

    .line 809
    .end local v0           #notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 815
    const-string v0, "[MusicMaActivity]"

    const-string v1, "DLNAMusicServiceStatusListener onServiceDisconnected "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/widget/MusicMaActivity;->mIsDLNAManagerConnected:Z
    invoke-static {v0, v1}, Lcom/htc/music/widget/MusicMaActivity;->access$802(Lcom/htc/music/widget/MusicMaActivity;Z)Z

    .line 817
    return-void
.end method

.method public onServiceError()V
    .locals 2

    .prologue
    .line 822
    const-string v0, "[MusicMaActivity]"

    const-string v1, "DLNAMusicServiceStatusListener onServiceError "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/widget/MusicMaActivity;->mIsDLNAManagerConnected:Z
    invoke-static {v0, v1}, Lcom/htc/music/widget/MusicMaActivity;->access$802(Lcom/htc/music/widget/MusicMaActivity;Z)Z

    .line 824
    return-void
.end method
