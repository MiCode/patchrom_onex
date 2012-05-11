.class Landroid/media/MediaPluginDLNA;
.super Landroid/media/MediaPlugin;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPluginDLNA$EventHandler;,
        Landroid/media/MediaPluginDLNA$RendererListener;,
        Landroid/media/MediaPluginDLNA$ControllerListener;
    }
.end annotation


# static fields
.field public static final MEDIA_BUFFERING:I = 0x1800

.field public static final MEDIA_DLNAMIDDLELAYER_CONNECTED:I = 0x1000

.field public static final MEDIA_END:I = 0x1200

.field public static final MEDIA_ERROR:I = 0x1100

.field public static final MEDIA_IDLE:I = 0x1001

.field public static final MEDIA_INITIALIZED:I = 0x1002

.field public static final MEDIA_PAUSED:I = 0x1020

.field public static final MEDIA_PLAY_COMPLETED:I = 0x1080

.field public static final MEDIA_PREPARED:I = 0x1008

.field public static final MEDIA_PREPARING:I = 0x1004

.field public static final MEDIA_SEEKED:I = 0x1400

.field public static final MEDIA_STARTED:I = 0x1010

.field public static final MEDIA_STOPPED:I = 0x1040

.field public static final STATUS_CHANGE:I = 0x2010

.field public static final STATUS_ERROR:I = 0x2021

.field public static final STATUS_INIT_FAILED:I = 0x2041

.field public static final STATUS_PREPARE:I = 0x2080

.field public static final STATUS_PREPARE_FAILED:I = 0x2082

.field public static final STATUS_PREPARE_SUCCESS:I = 0x2081

.field public static final STATUS_RESPONSE:I = 0x2040

.field private static final TAG:Ljava/lang/String; = "[MediaPluginDLNA]"


# instance fields
.field private final COMMAND_PAUSE_TIMEOUT:I

.field private final COMMAND_SEEKTO_TIMEOUT:I

.field private final COMMAND_START_TIMEOUT:I

.field private final CONNECT_DELAY:I

.field private final MediaPluginDLNACookie:Ljava/lang/String;

.field private final PAUSE_DELAY:I

.field private final SEEK_DELAY:I

.field private clientListener:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

.field private ctx:Landroid/content/Context;

.field private eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

.field private mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

.field private mCurrentPos:I

.field private mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

.field private mDataPath:Ljava/lang/String;

.field private mDmrID:Ljava/lang/String;

.field private mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

.field private final mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

.field private mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

.field private mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

.field private mSeeking:Z

.field private mState:I

.field private mStreamingPath:Z

.field private mWaitMirrorConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "path"

    .prologue
    const/16 v3, 0xbb8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Landroid/media/MediaPlugin;-><init>()V

    .line 27
    const-string v0, "MediaPluginDLNACookie"

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->MediaPluginDLNACookie:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    .line 29
    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

    .line 30
    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

    .line 31
    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    .line 34
    iput-boolean v2, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z

    .line 35
    iput-boolean v2, p0, Landroid/media/MediaPluginDLNA;->mStreamingPath:Z

    .line 36
    iput-boolean v2, p0, Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z

    .line 37
    const/16 v0, 0x1001

    iput v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    .line 38
    iput v2, p0, Landroid/media/MediaPluginDLNA;->mCurrentPos:I

    .line 62
    iput v2, p0, Landroid/media/MediaPluginDLNA;->CONNECT_DELAY:I

    .line 63
    const/16 v0, 0x64

    iput v0, p0, Landroid/media/MediaPluginDLNA;->PAUSE_DELAY:I

    .line 64
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/media/MediaPluginDLNA;->SEEK_DELAY:I

    .line 65
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/media/MediaPluginDLNA;->COMMAND_START_TIMEOUT:I

    .line 66
    iput v3, p0, Landroid/media/MediaPluginDLNA;->COMMAND_PAUSE_TIMEOUT:I

    .line 67
    iput v3, p0, Landroid/media/MediaPluginDLNA;->COMMAND_SEEKTO_TIMEOUT:I

    .line 69
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    .line 70
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    .line 99
    new-instance v0, Landroid/media/MediaPluginDLNA$1;

    invoke-direct {v0, p0}, Landroid/media/MediaPluginDLNA$1;-><init>(Landroid/media/MediaPluginDLNA;)V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->clientListener:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 76
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/media/MediaPluginDLNA$EventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/MediaPluginDLNA$EventHandler;-><init>(Landroid/media/MediaPluginDLNA;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

    .line 78
    iput-object p2, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 79
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[InitDLNA]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    const-string v2, "MediaPluginDLNACookie"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    .line 82
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v0, :cond_0

    .line 83
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[InitDLNA] mDLNAManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA;->connect()V

    .line 87
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[InitDLNA] out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :cond_1
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[InitDLNA] ctx = null... failed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    const/16 v1, 0x2041

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    .line 91
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[InitDLNA] out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/MediaPluginDLNA;)Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$ControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/media/MediaPluginDLNA;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$ControllerListener;)Landroid/media/MediaPluginDLNA$ControllerListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$RendererListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

    return-object v0
.end method

.method static synthetic access$302(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$RendererListener;)Landroid/media/MediaPluginDLNA$RendererListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

    return-object p1
.end method

.method static synthetic access$500(Landroid/media/MediaPluginDLNA;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z

    return v0
.end method

.method static synthetic access$502(Landroid/media/MediaPluginDLNA;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z

    return p1
.end method

.method static synthetic access$600(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$EventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaPluginDLNA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    return v0
.end method

.method static synthetic access$702(Landroid/media/MediaPluginDLNA;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Landroid/media/MediaPluginDLNA;->mState:I

    return p1
.end method

.method static synthetic access$800(Landroid/media/MediaPluginDLNA;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z

    return v0
.end method

.method static synthetic access$802(Landroid/media/MediaPluginDLNA;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z

    return p1
.end method

.method static synthetic access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    return-object v0
.end method

.method public static checkPath(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 300
    const-string/jumbo v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "rtsp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 301
    :cond_0
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 2

    .prologue
    .line 370
    monitor-enter p0

    .line 371
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 372
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[connect]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->clientListener:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    invoke-virtual {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->connect(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z

    .line 376
    :cond_0
    monitor-exit p0

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    return v0
.end method

.method public handleGetCurrentPosition()I
    .locals 3

    .prologue
    .line 449
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v1, :cond_0

    .line 450
    const/4 v0, 0x0

    .line 455
    :goto_0
    return v0

    .line 453
    :cond_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getPlayingPosition()J

    move-result-wide v1

    long-to-int v1, v1

    mul-int/lit16 v0, v1, 0x3e8

    .line 454
    .local v0, nPos:I
    iput v0, p0, Landroid/media/MediaPluginDLNA;->mCurrentPos:I

    goto :goto_0
.end method

.method public handleOnBufferUpdate(I)V
    .locals 2
    .parameter "percent"

    .prologue
    .line 526
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleOnBufferUpdate]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    monitor-enter p0

    .line 528
    :try_start_0
    monitor-exit p0

    .line 529
    return-void

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleOnPlayComplete()V
    .locals 2

    .prologue
    .line 519
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleOnPlayComplete]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    monitor-enter p0

    .line 521
    const/16 v0, 0x1080

    :try_start_0
    iput v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    .line 522
    monitor-exit p0

    .line 523
    return-void

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleOnPrepared()V
    .locals 3

    .prologue
    .line 509
    monitor-enter p0

    .line 510
    :try_start_0
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepare: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 514
    :cond_0
    const/16 v0, 0x1008

    iput v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    .line 515
    monitor-exit p0

    .line 516
    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handlePause()V
    .locals 2

    .prologue
    .line 408
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handlePause]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    const/16 v1, 0x1010

    if-ne v0, v1, :cond_0

    .line 411
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->requestPause()V

    .line 412
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/media/MediaPluginDLNA;->lockCommand(I)V

    .line 414
    :cond_0
    monitor-exit p0

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleRelease()V
    .locals 2

    .prologue
    .line 491
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleRelease]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    monitor-enter p0

    .line 493
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 494
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "disconnect with controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->powerOff()V

    .line 496
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    .line 499
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaPluginDLNA;->mCurrentPos:I

    .line 500
    const/16 v0, 0x1200

    iput v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z

    .line 504
    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 505
    monitor-exit p0

    .line 506
    return-void

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleReset()V
    .locals 3

    .prologue
    const/16 v2, 0x1001

    .line 473
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleReset]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    monitor-enter p0

    .line 475
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    if-eq v0, v2, :cond_0

    .line 476
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "disconnect with controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->powerOff()V

    .line 478
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    .line 481
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaPluginDLNA;->mCurrentPos:I

    .line 482
    const/16 v0, 0x1001

    iput v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mWaitMirrorConnected:Z

    .line 486
    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 487
    monitor-exit p0

    .line 488
    return-void

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleSeekComplete()V
    .locals 2

    .prologue
    .line 459
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleSeekComplete]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-void
.end method

.method public handleSeekTo(I)V
    .locals 3
    .parameter "msec"

    .prologue
    .line 418
    monitor-enter p0

    .line 420
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z

    if-nez v0, :cond_0

    .line 421
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleSeekTo] msec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit16 v2, p1, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z

    .line 423
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    div-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->seekTo(J)V

    .line 425
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/media/MediaPluginDLNA;->lockCommand(I)V

    .line 429
    :goto_0
    monitor-exit p0

    .line 430
    return-void

    .line 427
    :cond_0
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "seeking is in progress, reject this seek..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleSetDataSource(Ljava/lang/String;)V
    .locals 13
    .parameter "path"

    .prologue
    .line 307
    const-string v9, "[MediaPluginDLNA]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[handleSetDataSource][Path:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    monitor-enter p0

    .line 310
    :try_start_0
    const-string v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    .local v2, localIp:Ljava/lang/String;
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 313
    .local v1, ifaces:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 314
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 315
    .local v0, iface:Ljava/net/NetworkInterface;
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "wlan0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 316
    const-string v9, "[MediaPluginDLNA]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skip Real iface addresses: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 339
    .end local v0           #iface:Ljava/net/NetworkInterface;
    .end local v1           #ifaces:Ljava/util/Enumeration;
    :catch_0
    move-exception v9

    .line 343
    :cond_1
    :try_start_2
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 344
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    .line 345
    iget-object v9, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    const-string/jumbo v10, "http://localhost"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 346
    iget-object v9, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    const-string/jumbo v10, "http://localhost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "http://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 352
    :cond_2
    :goto_1
    const-string v9, "[MediaPluginDLNA]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[handleSetDataSource][mDataPath:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v9, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    invoke-static {v9}, Landroid/media/MediaPluginDLNA;->checkPath(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Landroid/media/MediaPluginDLNA;->mStreamingPath:Z

    .line 355
    iget-object v9, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v9, :cond_3

    .line 356
    iget-boolean v9, p0, Landroid/media/MediaPluginDLNA;->mStreamingPath:Z

    if-eqz v9, :cond_a

    .line 357
    const-string v9, "[MediaPluginDLNA]"

    const-string/jumbo v10, "is streaming path"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v9, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v10, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    const-string v11, ""

    const-string v12, ""

    invoke-virtual {v9, v10, v11, v12}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setStreamingDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_3
    :goto_3
    const/16 v9, 0x1002

    iput v9, p0, Landroid/media/MediaPluginDLNA;->mState:I

    .line 366
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    return-void

    .line 319
    .restart local v0       #iface:Ljava/net/NetworkInterface;
    .restart local v1       #ifaces:Ljava/util/Enumeration;
    :cond_4
    :try_start_3
    const-string v9, "[MediaPluginDLNA]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Real iface addresses: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getSubInterfaces()Ljava/util/Enumeration;

    move-result-object v8

    .line 321
    .local v8, virtualIfaces:Ljava/util/Enumeration;
    :cond_5
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 322
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/NetworkInterface;

    .line 323
    .local v7, viface:Ljava/net/NetworkInterface;
    const-string v9, "[MediaPluginDLNA]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " VIRT "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v6

    .line 325
    .local v6, vaddrs:Ljava/util/Enumeration;
    :goto_4
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 326
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 327
    .local v5, vaddr:Ljava/net/InetAddress;
    const-string v9, "[MediaPluginDLNA]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "vaddr \t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 366
    .end local v0           #iface:Ljava/net/NetworkInterface;
    .end local v1           #ifaces:Ljava/util/Enumeration;
    .end local v2           #localIp:Ljava/lang/String;
    .end local v5           #vaddr:Ljava/net/InetAddress;
    .end local v6           #vaddrs:Ljava/util/Enumeration;
    .end local v7           #viface:Ljava/net/NetworkInterface;
    .end local v8           #virtualIfaces:Ljava/util/Enumeration;
    :catchall_0
    move-exception v9

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v9

    .line 330
    .restart local v0       #iface:Ljava/net/NetworkInterface;
    .restart local v1       #ifaces:Ljava/util/Enumeration;
    .restart local v2       #localIp:Ljava/lang/String;
    .restart local v8       #virtualIfaces:Ljava/util/Enumeration;
    :cond_6
    :try_start_5
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 331
    .local v4, raddrs:Ljava/util/Enumeration;
    :cond_7
    :goto_5
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 332
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 333
    .local v3, raddr:Ljava/net/InetAddress;
    instance-of v9, v3, Ljava/net/Inet4Address;

    if-eqz v9, :cond_7

    .line 334
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 335
    const-string v9, "[MediaPluginDLNA]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "raddr \t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    .line 348
    .end local v0           #iface:Ljava/net/NetworkInterface;
    .end local v1           #ifaces:Ljava/util/Enumeration;
    .end local v3           #raddr:Ljava/net/InetAddress;
    .end local v4           #raddrs:Ljava/util/Enumeration;
    .end local v8           #virtualIfaces:Ljava/util/Enumeration;
    :cond_8
    :try_start_6
    iget-object v9, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    const-string/jumbo v10, "http://127.0.0.1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 349
    iget-object v9, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    const-string/jumbo v10, "http://127.0.0.1"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "http://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 354
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 361
    :cond_a
    const-string v9, "[MediaPluginDLNA]"

    const-string/jumbo v10, "not streaming path"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v9, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v10, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setDataSource(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3
.end method

.method public handleSetLooping(Z)V
    .locals 3
    .parameter "looping"

    .prologue
    .line 441
    const-string v1, "[MediaPluginDLNA]"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleSetLooping]:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-void

    .line 441
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public handleSetVolume(FF)V
    .locals 3
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 433
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleSetVoleum]: left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setVolume(I)V

    goto :goto_0
.end method

.method public handleStart()V
    .locals 4

    .prologue
    .line 380
    monitor-enter p0

    .line 381
    :try_start_0
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleStart]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 383
    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    const/16 v1, 0x1080

    if-ne v0, v1, :cond_1

    .line 384
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleStart][MEDIA_PLAY_COMPLETED][replay]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPluginDLNA$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 392
    :cond_0
    :goto_0
    monitor-exit p0

    .line 393
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->startPlay()V

    .line 389
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/media/MediaPluginDLNA;->lockCommand(I)V

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleStop()V
    .locals 2

    .prologue
    .line 463
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleStop]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    monitor-enter p0

    .line 465
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->requestStop()V

    .line 468
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaPluginDLNA;->mCurrentPos:I

    .line 469
    monitor-exit p0

    .line 470
    return-void

    .line 469
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
    .line 400
    iget v0, p0, Landroid/media/MediaPluginDLNA;->mState:I

    const/16 v1, 0x1010

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z

    return v0
.end method

.method public lockCommand(I)V
    .locals 5
    .parameter "timeout"

    .prologue
    .line 532
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[lockCommand]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 535
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 541
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[lockCommand][OUT]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[lockCommand][InterruptedException]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_0

    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public setOnEventListener(Landroid/media/MediaPlugin$OnEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 96
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    .line 97
    return-void
.end method

.method public unlockCommand()V
    .locals 2

    .prologue
    .line 545
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[unlockCommand]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 548
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 553
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[unlockCommand][OUT]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void

    .line 551
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
