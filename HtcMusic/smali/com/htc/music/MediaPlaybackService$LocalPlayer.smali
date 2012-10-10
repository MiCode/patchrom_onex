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
    .line 6346
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6346
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 6346
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6346
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V

    return-void
.end method

.method static synthetic access$5400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6346
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5500(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 6346
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5900(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6346
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V

    return-void
.end method

.method static synthetic access$6500(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6346
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->play()V

    return-void
.end method

.method static synthetic access$6600(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6346
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->prev(Z)V

    return-void
.end method

.method static synthetic access$6700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 6346
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->next(ZZ)V

    return-void
.end method

.method static synthetic access$6800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 6346
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 6346
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method private duration()J
    .locals 2

    .prologue
    .line 6672
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

    .line 6673
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 6675
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private getAudioSessionId()I
    .locals 1

    .prologue
    .line 6692
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

    .line 6693
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->getAudioSessionId()I

    move-result v0

    .line 6695
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlaying()Z
    .locals 1

    .prologue
    .line 6688
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

    .line 6368
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7600(Lcom/htc/music/MediaPlaybackService;)V

    .line 6369
    monitor-enter p0

    .line 6370
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$8000(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 6371
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "No play queue"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6372
    monitor-exit p0

    .line 6452
    :goto_0
    return-void

    .line 6375
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAnimation:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)Z

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

    .line 6376
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "==========skip one next"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6377
    monitor-exit p0

    goto :goto_0

    .line 6451
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6380
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAnimation:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6381
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.rotatequickly"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6385
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$8100(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 6386
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$8200(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$8100(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 6388
    :cond_3
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$8200(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_4

    .line 6389
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$8200(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 6392
    :cond_4
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$8100(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$8000(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_a

    .line 6394
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-nez v1, :cond_8

    if-nez p1, :cond_8

    .line 6396
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7800(Lcom/htc/music/MediaPlaybackService;)V

    .line 6397
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6398
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "Track end. Set mPausedByTransientLossOfFocus = false;"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6399
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$3702(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6401
    :cond_5
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$1602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6402
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.playbackcomplete"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6403
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$8102(Lcom/htc/music/MediaPlaybackService;I)I

    .line 6413
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7900(Lcom/htc/music/MediaPlaybackService;)V

    .line 6418
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V

    .line 6419
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz p2, :cond_b

    .line 6421
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 6429
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$402(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6430
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.rotateright"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6451
    :cond_7
    :goto_2
    monitor-exit p0

    goto/16 :goto_0

    .line 6405
    :cond_8
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-eq v1, v3, :cond_9

    if-eqz p1, :cond_6

    .line 6406
    :cond_9
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$8102(Lcom/htc/music/MediaPlaybackService;I)I

    goto :goto_1

    .line 6409
    :cond_a
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$8108(Lcom/htc/music/MediaPlaybackService;)I

    goto :goto_1

    .line 6434
    :cond_b
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openCurrent()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1700(Lcom/htc/music/MediaPlaybackService;)V

    .line 6435
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

    .line 6436
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1900(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 6437
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->play()V

    .line 6439
    :cond_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6440
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "animationtype"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6441
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/htc/music/MediaPlaybackService;->access$3100(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6443
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez p2, :cond_7

    .line 6444
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.changeart"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private pause()V
    .locals 4

    .prologue
    .line 6349
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$7600(Lcom/htc/music/MediaPlaybackService;)V

    .line 6350
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v1

    .line 6351
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6352
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$1902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6353
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

    .line 6354
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->pause()V

    .line 6356
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$7700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6357
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$7800(Lcom/htc/music/MediaPlaybackService;)V

    .line 6358
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$1602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6359
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.playstatechanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6362
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$7900(Lcom/htc/music/MediaPlaybackService;)V

    .line 6364
    :cond_1
    monitor-exit v1

    .line 6365
    return-void

    .line 6364
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private play()V
    .locals 8

    .prologue
    const/16 v7, 0x12

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 6473
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "!!!!! @@@@@ play() - 1"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6475
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$8500(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$8400(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 6477
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v4, v1}, Lcom/htc/music/MediaPlaybackService;->access$3702(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6479
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$7600(Lcom/htc/music/MediaPlaybackService;)V

    .line 6480
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6481
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "call play() and mediaplayer is initialized"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6485
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$4900(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 6486
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v4, v1}, Lcom/htc/music/MediaPlaybackService;->access$4902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6487
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v4

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 6490
    :cond_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$8600(Lcom/htc/music/MediaPlaybackService;)V

    .line 6506
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2000(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 6507
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "Check if the DRM File to play is legal"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6508
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    #calls: Lcom/htc/music/MediaPlaybackService;->checkExpirationAndConsumeRights(Landroid/net/Uri;)Z
    invoke-static {v4, v5}, Lcom/htc/music/MediaPlaybackService;->access$8700(Lcom/htc/music/MediaPlaybackService;Landroid/net/Uri;)Z

    move-result v0

    .line 6509
    .local v0, isLegal:Z
    if-nez v0, :cond_3

    .line 6510
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "Cannot play drm file because the rights has been expired."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6511
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const v5, 0x7f070096

    #calls: Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V
    invoke-static {v4, v5, v1}, Lcom/htc/music/MediaPlaybackService;->access$7500(Lcom/htc/music/MediaPlaybackService;II)V

    .line 6512
    const/16 v2, 0xa

    .line 6513
    .local v2, min:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$8000(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$8000(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-le v4, v3, :cond_1

    .line 6514
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$8000(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    .line 6515
    :cond_1
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$8808(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-ge v4, v2, :cond_2

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$8000(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-le v4, v3, :cond_2

    .line 6516
    invoke-direct {p0, v1, v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->next(ZZ)V

    .line 6561
    .end local v0           #isLegal:Z
    .end local v2           #min:I
    :cond_2
    :goto_0
    return-void

    .line 6519
    .restart local v0       #isLegal:Z
    :cond_3
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "Legal rights to play drm file"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6520
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$2002(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6521
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I
    invoke-static {v4, v1}, Lcom/htc/music/MediaPlaybackService;->access$8802(Lcom/htc/music/MediaPlaybackService;I)I

    .line 6524
    .end local v0           #isLegal:Z
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$1902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6525
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$1600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v3

    .line 6526
    .local v1, isStateChange:Z
    :cond_5
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$1602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6527
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play() mPlayOnNextPrev= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$1900(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6529
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->start()V

    .line 6532
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->updateNotification()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$8900(Lcom/htc/music/MediaPlaybackService;)V

    .line 6534
    if-eqz v1, :cond_2

    .line 6536
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v4, "com.htc.music.playstatechanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0

    .line 6538
    .end local v1           #isStateChange:Z
    :cond_6
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$8000(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-gtz v4, :cond_7

    .line 6542
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/music/MediaPlaybackService;->setShuffleMode(I)V

    goto :goto_0

    .line 6547
    :cond_7
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 6548
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$1902(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto :goto_0

    .line 6550
    :cond_8
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const v4, 0x7f070068

    #calls: Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V
    invoke-static {v3, v4, v1}, Lcom/htc/music/MediaPlaybackService;->access$7500(Lcom/htc/music/MediaPlaybackService;II)V

    .line 6552
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$9000(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6553
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "File uneixsted. refresh playlist again"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6554
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6555
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 6556
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private position()J
    .locals 2

    .prologue
    .line 6665
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

    .line 6666
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    .line 6668
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
    .line 6564
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7600(Lcom/htc/music/MediaPlaybackService;)V

    .line 6565
    monitor-enter p0

    .line 6566
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAnimation:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)Z

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

    .line 6567
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "===========skip one prev"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6568
    monitor-exit p0

    .line 6662
    :goto_0
    return-void

    .line 6571
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->position()J

    move-result-wide v1

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->canRewind(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6572
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J

    .line 6573
    monitor-exit p0

    goto :goto_0

    .line 6661
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6577
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAnimation:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6578
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.rotatequickly"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6591
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$8100(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    if-lez v1, :cond_4

    .line 6592
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$8110(Lcom/htc/music/MediaPlaybackService;)I

    .line 6618
    :goto_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7900(Lcom/htc/music/MediaPlaybackService;)V

    .line 6623
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V

    .line 6624
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 6626
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 6640
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$402(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6641
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.rotateleft"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6661
    :cond_3
    :goto_2
    monitor-exit p0

    goto :goto_0

    .line 6594
    :cond_4
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$8000(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$8102(Lcom/htc/music/MediaPlaybackService;I)I

    goto :goto_1

    .line 6645
    :cond_5
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openCurrent()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1700(Lcom/htc/music/MediaPlaybackService;)V

    .line 6646
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1900(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6647
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->play()V

    .line 6649
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6650
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "animationtype"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6651
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/htc/music/MediaPlaybackService;->access$3100(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6653
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 6654
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.changeart"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 6679
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

    .line 6680
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    .line 6681
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

    .line 6682
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->seek(J)J

    move-result-wide v0

    .line 6684
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
    .line 6455
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$7600(Lcom/htc/music/MediaPlaybackService;)V

    .line 6457
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

    .line 6458
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 6460
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$4402(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 6461
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->resetAudioMetaData()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8300(Lcom/htc/music/MediaPlaybackService;)V

    .line 6462
    if-eqz p1, :cond_1

    .line 6463
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$7800(Lcom/htc/music/MediaPlaybackService;)V

    .line 6467
    :cond_1
    if-eqz p1, :cond_2

    .line 6468
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$1602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6470
    :cond_2
    return-void
.end method
