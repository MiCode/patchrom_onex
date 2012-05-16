.class Lcom/htc/music/MediaPlaybackService$LocalPlayer;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalPlayer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method private constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 6238
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6238
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 6238
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6238
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6238
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 6238
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6238
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V

    return-void
.end method

.method static synthetic access$6000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6238
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->play()V

    return-void
.end method

.method static synthetic access$6100(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6238
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->prev(Z)V

    return-void
.end method

.method static synthetic access$6200(Lcom/htc/music/MediaPlaybackService$LocalPlayer;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 6238
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->next(ZZ)V

    return-void
.end method

.method static synthetic access$6300(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 6238
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 6238
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method private duration()J
    .locals 2

    .prologue
    .line 6565
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6566
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 6568
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private getAudioSessionId()I
    .locals 1

    .prologue
    .line 6585
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6586
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->getAudioSessionId()I

    move-result v0

    .line 6588
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlaying()Z
    .locals 1

    .prologue
    .line 6581
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    return v0
.end method

.method private next(ZZ)V
    .locals 4
    .parameter "force"
    .parameter "playAnim"

    .prologue
    const/4 v3, 0x2

    .line 6260
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7000(Lcom/htc/music/MediaPlaybackService;)V

    .line 6261
    monitor-enter p0

    .line 6262
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 6263
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "No play queue"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6264
    monitor-exit p0

    .line 6345
    :goto_0
    return-void

    .line 6267
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAnimation:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-boolean v1, v1, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6268
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "==========skip one next"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6269
    monitor-exit p0

    goto :goto_0

    .line 6344
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6272
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAnimation:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6273
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.rotatequickly"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6277
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7600(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 6278
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7700(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7600(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 6280
    :cond_3
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7700(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_4

    .line 6281
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7700(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 6284
    :cond_4
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7600(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_a

    .line 6286
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-nez v1, :cond_8

    if-nez p1, :cond_8

    .line 6288
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7200(Lcom/htc/music/MediaPlaybackService;)V

    .line 6289
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6290
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "Track end. Set mPausedByTransientLossOfFocus = false;"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6291
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$3602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6293
    :cond_5
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$1602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6294
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.playbackcomplete"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6295
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$7602(Lcom/htc/music/MediaPlaybackService;I)I

    .line 6305
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7300(Lcom/htc/music/MediaPlaybackService;)V

    .line 6310
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V

    .line 6311
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz p2, :cond_b

    .line 6313
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 6321
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.rotateright"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6323
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$502(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6344
    :cond_7
    :goto_2
    monitor-exit p0

    goto/16 :goto_0

    .line 6297
    :cond_8
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-eq v1, v3, :cond_9

    if-eqz p1, :cond_6

    .line 6298
    :cond_9
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$7602(Lcom/htc/music/MediaPlaybackService;I)I

    goto :goto_1

    .line 6301
    :cond_a
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7608(Lcom/htc/music/MediaPlaybackService;)I

    goto :goto_1

    .line 6327
    :cond_b
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openCurrent()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1700(Lcom/htc/music/MediaPlaybackService;)V

    .line 6328
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "next mPlayOnNextPrev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1900(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6329
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1900(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 6330
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->play()V

    .line 6332
    :cond_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6333
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "animationtype"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6334
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/htc/music/MediaPlaybackService;->access$3000(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6336
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez p2, :cond_7

    .line 6337
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.changeart"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private pause()V
    .locals 4

    .prologue
    .line 6241
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$7000(Lcom/htc/music/MediaPlaybackService;)V

    .line 6242
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v1

    .line 6243
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6244
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$1902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6245
    const-string v0, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause() mPlayOnNextPrev= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1900(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6246
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->pause()V

    .line 6248
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$7100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6249
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$7200(Lcom/htc/music/MediaPlaybackService;)V

    .line 6250
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$1602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6251
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.playstatechanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6254
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$7300(Lcom/htc/music/MediaPlaybackService;)V

    .line 6256
    :cond_1
    monitor-exit v1

    .line 6257
    return-void

    .line 6256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private play()V
    .locals 9

    .prologue
    const/16 v8, 0x12

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 6366
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "!!!!! @@@@@ play() - 1"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6368
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$8000(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$7900(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 6370
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v5, v2}, Lcom/htc/music/MediaPlaybackService;->access$3602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6372
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$7000(Lcom/htc/music/MediaPlaybackService;)V

    .line 6373
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 6374
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "call play() and mediaplayer is initialized"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6378
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v5

    if-ne v5, v4, :cond_0

    .line 6379
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v5, v2}, Lcom/htc/music/MediaPlaybackService;->access$4702(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6380
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v5

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 6383
    :cond_0
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$8100(Lcom/htc/music/MediaPlaybackService;)V

    .line 6399
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$4200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$2000(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 6400
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "Check if the DRM File to play is legal"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6401
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$4200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    #calls: Lcom/htc/music/MediaPlaybackService;->checkExpirationAndConsumeRights(Landroid/net/Uri;)Z
    invoke-static {v5, v6}, Lcom/htc/music/MediaPlaybackService;->access$8200(Lcom/htc/music/MediaPlaybackService;Landroid/net/Uri;)Z

    move-result v1

    .line 6402
    .local v1, isLegal:Z
    if-nez v1, :cond_3

    .line 6403
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "Cannot play drm file because the rights has been expired."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6404
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const v6, 0x7f070096

    #calls: Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V
    invoke-static {v5, v6, v2}, Lcom/htc/music/MediaPlaybackService;->access$8300(Lcom/htc/music/MediaPlaybackService;II)V

    .line 6405
    const/16 v3, 0xa

    .line 6406
    .local v3, min:I
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$7400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_1

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$7400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v5

    if-le v5, v4, :cond_1

    .line 6407
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$7400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v3

    .line 6408
    :cond_1
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$8408(Lcom/htc/music/MediaPlaybackService;)I

    move-result v5

    if-ge v5, v3, :cond_2

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$7400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v5

    if-le v5, v4, :cond_2

    .line 6409
    invoke-direct {p0, v2, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->next(ZZ)V

    .line 6454
    .end local v1           #isLegal:Z
    .end local v3           #min:I
    :cond_2
    :goto_0
    return-void

    .line 6412
    .restart local v1       #isLegal:Z
    :cond_3
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "Legal rights to play drm file"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6413
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z
    invoke-static {v5, v4}, Lcom/htc/music/MediaPlaybackService;->access$2002(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6414
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I
    invoke-static {v5, v2}, Lcom/htc/music/MediaPlaybackService;->access$8402(Lcom/htc/music/MediaPlaybackService;I)I

    .line 6417
    .end local v1           #isLegal:Z
    :cond_4
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v5, v4}, Lcom/htc/music/MediaPlaybackService;->access$1902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6418
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$1600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v5

    if-nez v5, :cond_5

    move v2, v4

    .line 6419
    .local v2, isStateChange:Z
    :cond_5
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v5, v4}, Lcom/htc/music/MediaPlaybackService;->access$1602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6420
    const-string v4, "[MediaPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "play() mPlayOnNextPrev= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1900(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6422
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->start()V

    .line 6425
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->updateNotification()V
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$8500(Lcom/htc/music/MediaPlaybackService;)V

    .line 6427
    if-eqz v2, :cond_2

    .line 6429
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v5, "com.htc.music.playstatechanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0

    .line 6431
    .end local v2           #isStateChange:Z
    :cond_6
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$7400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v5

    if-gtz v5, :cond_7

    .line 6435
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/music/MediaPlaybackService;->setShuffleMode(I)V

    goto :goto_0

    .line 6440
    :cond_7
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/htc/music/MediaPlaybackService;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 6441
    .local v0, currFilePath:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 6442
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v5, v4}, Lcom/htc/music/MediaPlaybackService;->access$1902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6446
    :cond_8
    :goto_1
    if-nez v0, :cond_2

    .line 6447
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "Location is null file uneixsted. refresh playlist again"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6448
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$3700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6449
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$3700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 6450
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$3700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 6443
    :cond_9
    if-eqz v0, :cond_8

    .line 6444
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const v5, 0x7f070068

    #calls: Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V
    invoke-static {v4, v5, v2}, Lcom/htc/music/MediaPlaybackService;->access$8300(Lcom/htc/music/MediaPlaybackService;II)V

    goto :goto_1
.end method

.method private position()J
    .locals 2

    .prologue
    .line 6558
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6559
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    .line 6561
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private prev(Z)V
    .locals 5
    .parameter "playAnim"

    .prologue
    .line 6457
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7000(Lcom/htc/music/MediaPlaybackService;)V

    .line 6458
    monitor-enter p0

    .line 6459
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAnimation:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-boolean v1, v1, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6460
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "===========skip one prev"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6461
    monitor-exit p0

    .line 6555
    :goto_0
    return-void

    .line 6464
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->position()J

    move-result-wide v1

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->canRewind(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6465
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J

    .line 6466
    monitor-exit p0

    goto :goto_0

    .line 6554
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6470
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAnimation:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7500(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6471
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.rotatequickly"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6484
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7600(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-lez v1, :cond_4

    .line 6485
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7610(Lcom/htc/music/MediaPlaybackService;)I

    .line 6511
    :goto_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7300(Lcom/htc/music/MediaPlaybackService;)V

    .line 6516
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V

    .line 6517
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 6519
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 6533
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.rotateleft"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6534
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$502(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6554
    :cond_3
    :goto_2
    monitor-exit p0

    goto :goto_0

    .line 6487
    :cond_4
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$7602(Lcom/htc/music/MediaPlaybackService;I)I

    goto :goto_1

    .line 6538
    :cond_5
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openCurrent()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1700(Lcom/htc/music/MediaPlaybackService;)V

    .line 6539
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1900(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6540
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->play()V

    .line 6542
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6543
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "animationtype"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6544
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/htc/music/MediaPlaybackService;->access$3000(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6546
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 6547
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.changeart"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 6572
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6573
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    .line 6574
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide p1

    .line 6575
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->seek(J)J

    move-result-wide v0

    .line 6577
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private stop(Z)V
    .locals 2
    .parameter "remove_status_icon"

    .prologue
    .line 6348
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$7000(Lcom/htc/music/MediaPlaybackService;)V

    .line 6350
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6351
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 6353
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$4202(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 6354
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->resetAudioMetaData()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$7800(Lcom/htc/music/MediaPlaybackService;)V

    .line 6355
    if-eqz p1, :cond_1

    .line 6356
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$7200(Lcom/htc/music/MediaPlaybackService;)V

    .line 6360
    :cond_1
    if-eqz p1, :cond_2

    .line 6361
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$1602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6363
    :cond_2
    return-void
.end method
