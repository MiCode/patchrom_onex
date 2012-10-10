.class Lcom/htc/music/MediaPlaybackService$4;
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
    .line 1331
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1335
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "htcTVDisplayTVOnOff : onReceive"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    if-nez p2, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return-void

    .line 1337
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1338
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1339
    const-string v5, "mirror_display_status"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1340
    .local v1, inMirror:Z
    const-string v5, "mirror_display_state"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1342
    .local v4, state:I
    const/4 v3, 0x0

    .line 1343
    .local v3, needToResetPlayer:Z
    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-boolean v5, v5, Lcom/htc/music/MediaPlaybackService;->mIsInMirror:Z

    if-nez v5, :cond_3

    .line 1344
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    iput-boolean v7, v5, Lcom/htc/music/MediaPlaybackService;->mIsInMirror:Z

    .line 1345
    const/4 v3, 0x1

    .line 1349
    :cond_2
    :goto_1
    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "htcTVDisplayTVOnOff : inMirror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", MIRROR_DISPLAY_STATE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mIsInMirror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-boolean v7, v7, Lcom/htc/music/MediaPlaybackService;->mIsInMirror:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", needToResetPlayer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    if-eqz v3, :cond_0

    .line 1351
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 1352
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1353
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$4500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1354
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v6, "htcTVDisplayTVOnOff"

    #calls: Lcom/htc/music/MediaPlaybackService;->resetPlayerForWirelessConnect(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/music/MediaPlaybackService;->access$4600(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1346
    :cond_3
    if-ne v4, v7, :cond_2

    .line 1347
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    iput-boolean v8, v5, Lcom/htc/music/MediaPlaybackService;->mIsInMirror:Z

    goto :goto_1

    .line 1357
    :cond_4
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "htcTVDisplayTVOnOff: mPlayer.isInitialized() == false"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1360
    :cond_5
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    const-string v2, ""

    .line 1361
    .local v2, length:Ljava/lang/String;
    :goto_2
    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "htcTVDisplayTVOnOff error : mPlayer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mFileToPlay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1360
    .end local v2           #length:Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFileToPlay.length() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$4;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1367
    .end local v1           #inMirror:Z
    .end local v3           #needToResetPlayer:Z
    .end local v4           #state:I
    :cond_7
    const-string v5, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "htcTVDisplayTVOnOff : action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
