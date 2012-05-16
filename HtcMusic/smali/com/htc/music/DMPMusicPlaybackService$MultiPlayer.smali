.class Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
.super Ljava/lang/Object;
.source "DMPMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPlayer"
.end annotation


# instance fields
.field bufferUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field infoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field listener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurPercentage:F

.field private mDuration:J

.field private mHandler:Landroid/os/Handler;

.field private mIsInitialized:Z

.field private mIsPrepared:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSessionID:I

.field preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

.field seekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field final synthetic this$0:Lcom/htc/music/DMPMusicPlaybackService;


# direct methods
.method public constructor <init>(Lcom/htc/music/DMPMusicPlaybackService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1968
    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1940
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1942
    iput-boolean v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 1943
    iput-boolean v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsPrepared:Z

    .line 1946
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mSessionID:I

    .line 2107
    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$1;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$1;-><init>(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 2117
    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$2;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$2;-><init>(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->seekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 2124
    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$3;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$3;-><init>(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->bufferUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 2132
    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$4;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$4;-><init>(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2147
    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;-><init>(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2179
    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;-><init>(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1971
    return-void
.end method

.method static synthetic access$4602(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1939
    iput p1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mCurPercentage:F

    return p1
.end method

.method static synthetic access$4700(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1939
    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1939
    iput-boolean p1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1939
    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsPrepared:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1939
    iput-boolean p1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1939
    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private initNewMediaPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1949
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1950
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1951
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "initNewMediaPlayer()...call mMediaPlayer.release()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1953
    iput-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1956
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1957
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1959
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initNewMediaPlayer()... mSessionID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mSessionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mSessionID:I

    if-gtz v0, :cond_1

    .line 1961
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mSessionID:I

    .line 1966
    :goto_0
    return-void

    .line 1964
    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mSessionID:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 1975
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 1976
    return-void
.end method

.method public duration()J
    .locals 4

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 2287
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "duration()...mMediaPlayer is null..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    const-wide/16 v0, -0x1

    .line 2293
    :goto_0
    return-wide v0

    .line 2291
    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mDuration:J

    .line 2292
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration()...mDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    iget-wide v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mDuration:J

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2330
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mSessionID:I

    return v0
.end method

.method public getPercentage()F
    .locals 1

    .prologue
    .line 2326
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mCurPercentage:F

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2027
    monitor-enter p0

    .line 2028
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsPrepared:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2029
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 2096
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "isPlaying()...mMediaPlayer is null!!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    const/4 v0, 0x0

    .line 2100
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2087
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 2092
    :goto_0
    return-void

    .line 2090
    :cond_0
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "pause()...mMediaPlayer is null!!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public position()J
    .locals 4

    .prologue
    .line 2297
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 2298
    const-string v2, "[DMPMusicPlaybackService]"

    const-string v3, "position()...mMediaPlayer is null..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    const-wide/16 v0, -0x1

    .line 2303
    :goto_0
    return-wide v0

    .line 2302
    :cond_0
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v0, v2

    .line 2303
    .local v0, currentPos:J
    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 2073
    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->stop()V

    .line 2074
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2075
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "II internal multiplayer...release()... calling mMediaPlayer.release();"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2077
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2082
    :goto_0
    return-void

    .line 2080
    :cond_0
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "release()...mMediaPlayer is null!!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seek(J)J
    .locals 3
    .parameter "whereto"

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2308
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 2313
    :goto_0
    return-wide p1

    .line 2311
    :cond_0
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")...mMediaPlayer is null..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataSourceAsync(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 1979
    monitor-enter p0

    .line 1980
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 1981
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsPrepared:Z

    .line 1982
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1985
    :try_start_1
    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSourceAsync()... path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mCurPercentage:F

    .line 1988
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mDuration:J

    .line 1990
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->initNewMediaPlayer()V

    .line 1992
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1993
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1994
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1995
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->bufferUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 1996
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1997
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1998
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->seekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 1999
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 2000
    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@@ prepareAsync() @@@@@ mIsInitialized = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 2022
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2023
    :goto_0
    return-void

    .line 1982
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2002
    :catch_0
    move-exception v0

    .line 2004
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "prepareAsync finished, IOException ex"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    iput-boolean v4, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_0

    .line 2007
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 2009
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "prepareAsync finished, IllegalArgumentException ex"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    iput-boolean v4, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_0

    .line 2012
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 2013
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "prepareAsync finished, IllegalStateException"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2014
    iput-boolean v4, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_0

    .line 2016
    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 2018
    .local v0, ex:Ljava/lang/Exception;
    iput-boolean v4, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2019
    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSourceAsync path= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 2104
    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    .line 2105
    return-void
.end method

.method public setVolume(F)V
    .locals 3
    .parameter "vol"

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2318
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2323
    :goto_0
    return-void

    .line 2321
    :cond_0
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")...mMediaPlayer is null..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    .line 2034
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 2036
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$4500(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$4400(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 2037
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v1, v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$102(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    .line 2039
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2049
    :goto_0
    return-void

    .line 2041
    :catch_0
    move-exception v0

    .line 2042
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** start(), IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 2047
    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :cond_0
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "start()...mMediaPlayer is null!!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2052
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 2053
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "II internal multiplayer... stop()...before calling mMediaPlayer.reset();"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2064
    :goto_0
    iput-boolean v4, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 2065
    iput-boolean v4, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsPrepared:Z

    .line 2066
    return-void

    .line 2057
    :catch_0
    move-exception v0

    .line 2058
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "II stop(), Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2062
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "stop()...mMediaPlayer is null!!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
