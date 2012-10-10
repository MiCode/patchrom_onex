.class public Lcom/htc/music/MusicPluginManager;
.super Ljava/lang/Object;
.source "MusicPluginManager.java"

# interfaces
.implements Lcom/htc/music/IPluginIPCNotify;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MusicPluginManager$NonUiHandler;,
        Lcom/htc/music/MusicPluginManager$MusicPlugin;,
        Lcom/htc/music/MusicPluginManager$Plugin;,
        Lcom/htc/music/MusicPluginManager$PluginConnection;
    }
.end annotation


# static fields
.field private static final DELETE_ART_FILE_CACHE:I = 0x1

.field private static final DELETE_TIME_DELAY:I = 0x1388

.field public static final EXTRA_ERROR_ID:Ljava/lang/String; = "error_id"

.field private static final MAX_FILE_CACHE:I = 0x64

.field private static final MAX_ICON_SIZE:I = 0x40

.field private static final PLUGIN_META_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.metachanged"

.field private static final PLUGIN_PLAYBACK_COMPLETE:Ljava/lang/String; = "com.htc.music.plugin.playbackcomplete"

.field private static final PLUGIN_PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.statechanged"

.field private static final PLUGIN_PLAYSTATE_CHANGED_BUFFERING:Ljava/lang/String; = "com.htc.music.plugin.statechanged.buffering"

.field private static final PLUGIN_PLAYSTATE_CHANGED_WAITING:Ljava/lang/String; = "com.htc.music.plugin.statechanged.waiting"

.field private static final PLUGIN_PLAY_NEXT:Ljava/lang/String; = "com.htc.music.plugin.playnext"

.field private static final PLUGIN_QUEUE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.queuechanged"

.field private static final REFRESH_PLUGINS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[MusicPluginManager]"


# instance fields
.field private final mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

.field private mBindingClass:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

.field private mExtPluginList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/MusicPluginManager$MusicPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsBinding:Z

.field private mLastPluginClass:Ljava/lang/String;

.field private mMainService:Lcom/htc/music/MediaPlaybackService;

.field private mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

.field private mPluginCount:I

.field private mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

.field private mStopActivePluginWhenBinding:Z


# direct methods
.method public constructor <init>(Lcom/htc/music/MediaPlaybackService;Landroid/content/Context;)V
    .locals 2
    .parameter "service"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 45
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 47
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    .line 49
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 51
    iput v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    .line 53
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 55
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 57
    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 59
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    .line 63
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    .line 667
    new-instance v0, Lcom/htc/music/MusicPluginManager$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MusicPluginManager$1;-><init>(Lcom/htc/music/MusicPluginManager;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    .line 72
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 74
    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    .line 75
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlbumArtFileDeleteWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 76
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 77
    new-instance v0, Lcom/htc/music/MusicPluginManager$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/MusicPluginManager$NonUiHandler;-><init>(Lcom/htc/music/MusicPluginManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 78
    iput-object p2, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "service"
    .parameter "serviceToBind"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 45
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 47
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    .line 49
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 51
    iput v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    .line 53
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 55
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 57
    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 59
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    .line 63
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    .line 667
    new-instance v0, Lcom/htc/music/MusicPluginManager$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MusicPluginManager$1;-><init>(Lcom/htc/music/MusicPluginManager;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    .line 85
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 87
    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    .line 88
    invoke-direct {p0, p2, v1}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;Z)Z

    .line 89
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlbumArtFileDeleteWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 90
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v0, Lcom/htc/music/MusicPluginManager$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/MusicPluginManager$NonUiHandler;-><init>(Lcom/htc/music/MusicPluginManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 92
    iput-object p3, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method static synthetic access$1002(Lcom/htc/music/MusicPluginManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/music/MusicPluginManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/music/MusicPluginManager;)[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/MusicPluginManager;)Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/music/MusicPluginManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/music/MusicPluginManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/music/MusicPluginManager;)Lcom/htc/music/MediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/MusicPluginManager;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/htc/music/MusicPluginManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    return p1
.end method

.method private bindPluginService(IZ)Z
    .locals 8
    .parameter "index"
    .parameter "startActivity"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 438
    monitor-enter p0

    .line 440
    :try_start_0
    new-instance v0, Lcom/htc/music/MusicPluginManager$PluginConnection;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/htc/music/MusicPluginManager$PluginConnection;-><init>(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$1;)V

    .line 441
    .local v0, conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v5, p1

    .line 443
    .local v2, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    if-nez v2, :cond_0

    .line 444
    const-string v4, "[MusicPluginManager]"

    const-string v5, "bindPluginService fails, plugin is null. 3 parameters."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 469
    :try_start_1
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    .line 445
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :goto_0
    return v3

    .line 448
    .restart local v0       #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .restart local v2       #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_0
    :try_start_2
    invoke-virtual {v2, p2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setStartActivity(Z)V

    .line 449
    invoke-virtual {v2, v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    .line 450
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v0, v7}, Lcom/htc/music/MediaPlaybackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 451
    const-string v5, "[MusicPluginManager]"

    const-string v6, "bindPluginService succeed."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 453
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    .line 454
    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 469
    :try_start_3
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    .line 455
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v4

    goto :goto_0

    .line 457
    :cond_1
    :try_start_4
    const-string v4, "[MusicPluginManager]"

    const-string v5, "bindPluginService failed."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 469
    :try_start_5
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    .line 458
    monitor-exit p0

    goto :goto_0

    .line 471
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 462
    const-string v4, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 469
    :try_start_7
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    .line 463
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 464
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 465
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 466
    const-string v4, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 469
    :try_start_9
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    .line 467
    monitor-exit p0

    goto/16 :goto_0

    .line 469
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catchall_1
    move-exception v3

    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private bindPluginService(Ljava/lang/String;Z)Z
    .locals 8
    .parameter "className"
    .parameter "startActivity"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 396
    monitor-enter p0

    .line 398
    :try_start_0
    new-instance v0, Lcom/htc/music/MusicPluginManager$PluginConnection;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/htc/music/MusicPluginManager$PluginConnection;-><init>(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$1;)V

    .line 399
    .local v0, conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    invoke-virtual {p0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v2

    .line 401
    .local v2, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    if-nez v2, :cond_0

    .line 402
    const-string v4, "[MusicPluginManager]"

    const-string v5, "bindPluginService fails, plugin is null. 2 parameters."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 427
    :try_start_1
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 403
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :goto_0
    return v3

    .line 406
    .restart local v0       #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .restart local v2       #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_0
    :try_start_2
    invoke-virtual {v2, p2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setStartActivity(Z)V

    .line 407
    invoke-virtual {v2, v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    .line 408
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v0, v7}, Lcom/htc/music/MediaPlaybackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 409
    const-string v5, "[MusicPluginManager]"

    const-string v6, "bindPluginService succeed."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 411
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    .line 412
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 427
    :try_start_3
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 413
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v4

    goto :goto_0

    .line 415
    :cond_1
    :try_start_4
    const-string v4, "[MusicPluginManager]"

    const-string v5, "bindPluginService failed."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 427
    :try_start_5
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 416
    monitor-exit p0

    goto :goto_0

    .line 429
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 418
    :catch_0
    move-exception v1

    .line 419
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 420
    const-string v4, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 427
    :try_start_7
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 421
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 422
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 423
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 424
    const-string v4, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 427
    :try_start_9
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 425
    monitor-exit p0

    goto :goto_0

    .line 427
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catchall_1
    move-exception v3

    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private getPlugins()[Lcom/htc/music/MusicPluginManager$Plugin;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1478
    const/4 v3, 0x2

    new-array v2, v3, [Lcom/htc/music/MusicPluginManager$Plugin;

    .line 1481
    .local v2, plugins:[Lcom/htc/music/MusicPluginManager$Plugin;
    new-instance v3, Lcom/htc/music/MusicPluginManager$Plugin;

    invoke-direct {v3, p0}, Lcom/htc/music/MusicPluginManager$Plugin;-><init>(Lcom/htc/music/MusicPluginManager;)V

    aput-object v3, v2, v5

    .line 1482
    aget-object v3, v2, v5

    const-class v4, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setClassName(Ljava/lang/String;)V

    .line 1483
    const-class v3, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 1484
    .local v1, dmpPackage:Ljava/lang/Package;
    if-eqz v1, :cond_0

    .line 1485
    aget-object v3, v2, v5

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setPackageName(Ljava/lang/String;)V

    .line 1488
    :goto_0
    aget-object v3, v2, v5

    const-class v4, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setShortClassName(Ljava/lang/String;)V

    .line 1489
    aget-object v3, v2, v5

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setDescription(Ljava/lang/String;)V

    .line 1492
    new-instance v3, Lcom/htc/music/MusicPluginManager$Plugin;

    invoke-direct {v3, p0}, Lcom/htc/music/MusicPluginManager$Plugin;-><init>(Lcom/htc/music/MusicPluginManager;)V

    aput-object v3, v2, v6

    .line 1493
    aget-object v3, v2, v6

    const-class v4, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setClassName(Ljava/lang/String;)V

    .line 1494
    const-class v3, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 1495
    .local v0, dmcPackage:Ljava/lang/Package;
    if-eqz v0, :cond_1

    .line 1496
    aget-object v3, v2, v6

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setPackageName(Ljava/lang/String;)V

    .line 1499
    :goto_1
    aget-object v3, v2, v6

    const-class v4, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setShortClassName(Ljava/lang/String;)V

    .line 1500
    aget-object v3, v2, v6

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setDescription(Ljava/lang/String;)V

    .line 1502
    return-object v2

    .line 1487
    .end local v0           #dmcPackage:Ljava/lang/Package;
    :cond_0
    aget-object v3, v2, v5

    const-string v4, "com.htc.music"

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 1498
    .restart local v0       #dmcPackage:Ljava/lang/Package;
    :cond_1
    aget-object v3, v2, v6

    const-string v4, "com.htc.music"

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$Plugin;->setPackageName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private unbindOtherServices(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 571
    monitor-enter p0

    .line 572
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 573
    if-eq p1, v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 574
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v0

    .line 575
    .local v0, conn:Landroid/content/ServiceConnection;
    if-eqz v0, :cond_0

    .line 576
    const-string v2, "[MusicPluginManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbinding Service of plugin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v4, v4, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2, v0}, Lcom/htc/music/MediaPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 578
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setService(Lcom/htc/music/IMusicPluginService;)V

    .line 579
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    .line 580
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 581
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 572
    .end local v0           #conn:Landroid/content/ServiceConnection;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    :cond_1
    monitor-exit p0

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private unbindOtherServices(Ljava/lang/String;)V
    .locals 6
    .parameter "className"

    .prologue
    .line 549
    if-nez p1, :cond_0

    .line 568
    :goto_0
    return-void

    .line 550
    :cond_0
    monitor-enter p0

    .line 551
    const/4 v2, 0x0

    .line 552
    .local v2, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 553
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v3, v1

    .line 554
    if-eqz v2, :cond_1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 556
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v0

    .line 557
    .local v0, conn:Landroid/content/ServiceConnection;
    if-eqz v0, :cond_1

    .line 558
    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unbinding Service of plugin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v5, v5, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3, v0}, Lcom/htc/music/MediaPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 560
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setService(Lcom/htc/music/IMusicPluginService;)V

    .line 561
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    .line 562
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 563
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 552
    .end local v0           #conn:Landroid/content/ServiceConnection;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 567
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

    return-object v0
.end method

.method protected bindPluginService(Ljava/lang/String;ZZ)Z
    .locals 8
    .parameter "actionName"
    .parameter "startActivity"
    .parameter "playSongAtBeginning"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 481
    monitor-enter p0

    .line 483
    :try_start_0
    new-instance v0, Lcom/htc/music/MusicPluginManager$PluginConnection;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/htc/music/MusicPluginManager$PluginConnection;-><init>(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$1;)V

    .line 484
    .local v0, conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    invoke-virtual {p0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v2

    .line 485
    .local v2, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    invoke-virtual {v2, p2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setStartActivity(Z)V

    .line 486
    invoke-virtual {v2, p3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPlayAtBeginning(Z)V

    .line 487
    invoke-virtual {v2, v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    .line 489
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v0, v7}, Lcom/htc/music/MediaPlaybackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 490
    const-string v5, "[MusicPluginManager]"

    const-string v6, "bindPluginService succeed."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 492
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    .line 493
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 508
    :try_start_1
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 494
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 506
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :goto_0
    return v3

    .line 496
    .restart local v0       #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .restart local v2       #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_0
    :try_start_2
    const-string v3, "[MusicPluginManager]"

    const-string v5, "bindPluginService failed."

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 508
    :try_start_3
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 497
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v3, v4

    goto :goto_0

    .line 499
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :catch_0
    move-exception v1

    .line 500
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 501
    const-string v3, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 508
    :try_start_5
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 502
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v3, v4

    goto :goto_0

    .line 503
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 504
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 505
    const-string v3, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 508
    :try_start_7
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 506
    monitor-exit p0

    move v3, v4

    goto :goto_0

    .line 508
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    throw v3

    .line 510
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3
.end method

.method public clearAlbumArtRequests()V
    .locals 2

    .prologue
    .line 1335
    monitor-enter p0

    .line 1336
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1338
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->clearAlbumArtRequests()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1343
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1344
    return-void

    .line 1339
    :catch_0
    move-exception v0

    .line 1340
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1343
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public clearNowplayingQueueRequests()V
    .locals 2

    .prologue
    .line 1375
    monitor-enter p0

    .line 1376
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1378
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->clearNowplayingQueueRequests()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1383
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1384
    return-void

    .line 1379
    :catch_0
    move-exception v0

    .line 1380
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1383
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public duration()J
    .locals 3

    .prologue
    .line 914
    monitor-enter p0

    .line 915
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 917
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->duration()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    :try_start_2
    monitor-exit p0

    .line 923
    :goto_0
    return-wide v1

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 923
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 924
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 9
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 1231
    monitor-enter p0

    .line 1232
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_4

    if-ltz p1, :cond_4

    .line 1233
    const/4 v3, 0x0

    .line 1235
    .local v3, isDmcOrPush:Z
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/music/IMusicPluginService;->isDmcOrPushMode()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 1240
    :goto_0
    if-eqz v3, :cond_0

    .line 1241
    const/4 v5, 0x0

    .line 1243
    .local v5, path:Ljava/lang/String;
    :try_start_2
    iget-object v6, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v6}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/htc/music/IMusicPluginService;->getAlbumArtPathByPosition(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 1247
    :goto_1
    :try_start_3
    monitor-exit p0

    .line 1271
    .end local v3           #isDmcOrPush:Z
    .end local v5           #path:Ljava/lang/String;
    :goto_2
    return-object v5

    .line 1236
    .restart local v3       #isDmcOrPush:Z
    :catch_0
    move-exception v1

    .line 1237
    .local v1, e1:Landroid/os/RemoteException;
    const-string v7, "[MusicPluginManager]"

    const-string v8, "exception in getAlbumArtPathByPosition isDmcOrPush"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1272
    .end local v1           #e1:Landroid/os/RemoteException;
    .end local v3           #isDmcOrPush:Z
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 1244
    .restart local v3       #isDmcOrPush:Z
    .restart local v5       #path:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1245
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "[MusicPluginManager]"

    const-string v7, "exception in getAlbumArtPathByPosition"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1249
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v5           #path:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1250
    .local v4, key:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1251
    .restart local v5       #path:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1252
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1253
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1254
    monitor-exit p0

    goto :goto_2

    .line 1256
    :cond_1
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1260
    .end local v2           #file:Ljava/io/File;
    :cond_2
    :try_start_5
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/htc/music/IMusicPluginService;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v5

    .line 1261
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1262
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1264
    :cond_3
    :try_start_6
    monitor-exit p0

    goto :goto_2

    .line 1265
    :catch_2
    move-exception v0

    .line 1266
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1267
    monitor-exit p0

    move-object v5, v6

    goto :goto_2

    .line 1271
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #isDmcOrPush:Z
    .end local v4           #key:Ljava/lang/Integer;
    .end local v5           #path:Ljava/lang/String;
    :cond_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v5, v6

    goto :goto_2
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 8
    .parameter "position"

    .prologue
    .line 1284
    monitor-enter p0

    .line 1285
    const/4 v3, 0x0

    .line 1287
    .local v3, isDmcOrPush:Z
    :try_start_0
    iget-object v6, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v6}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/music/IMusicPluginService;->isDmcOrPushMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1292
    :goto_0
    if-eqz v3, :cond_0

    .line 1293
    const/4 v5, 0x0

    .line 1295
    .local v5, path:Ljava/lang/String;
    :try_start_1
    iget-object v6, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v6}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/htc/music/IMusicPluginService;->getAlbumArtPathByPosition(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 1299
    :goto_1
    :try_start_2
    monitor-exit p0

    .line 1323
    .end local v5           #path:Ljava/lang/String;
    :goto_2
    return-object v5

    .line 1288
    :catch_0
    move-exception v1

    .line 1289
    .local v1, e1:Landroid/os/RemoteException;
    const-string v6, "[MusicPluginManager]"

    const-string v7, "exception in getAlbumArtPathByPosition isDmcOrPush"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1324
    .end local v1           #e1:Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1296
    .restart local v5       #path:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1297
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "[MusicPluginManager]"

    const-string v7, "exception in getAlbumArtPathByPosition"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1301
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v5           #path:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v6}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v6

    if-eqz v6, :cond_4

    if-ltz p1, :cond_4

    .line 1302
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1303
    .local v4, key:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v6}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1304
    .restart local v5       #path:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1305
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1306
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1307
    monitor-exit p0

    goto :goto_2

    .line 1309
    :cond_1
    iget-object v6, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v6}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1313
    .end local v2           #file:Ljava/io/File;
    :cond_2
    :try_start_4
    iget-object v6, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v6}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/htc/music/IMusicPluginService;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v5

    .line 1314
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 1315
    iget-object v6, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v6}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1317
    :cond_3
    :try_start_5
    monitor-exit p0

    goto :goto_2

    .line 1318
    :catch_2
    move-exception v0

    .line 1319
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1323
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v4           #key:Ljava/lang/Integer;
    .end local v5           #path:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method getAlbumId()I
    .locals 2

    .prologue
    .line 1464
    monitor-enter p0

    .line 1465
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1467
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getAlbumId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 1472
    :goto_0
    return v1

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1472
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1473
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 968
    monitor-enter p0

    .line 969
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 971
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getAlbumName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 977
    :goto_0
    return-object v1

    .line 972
    :catch_0
    move-exception v0

    .line 973
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 977
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 978
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 982
    monitor-enter p0

    .line 983
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 985
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getArtistName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 991
    :goto_0
    return-object v1

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 991
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 992
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method getAudioSessionId()I
    .locals 2

    .prologue
    .line 1448
    monitor-enter p0

    .line 1449
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1451
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getAudioSessionId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 1456
    :goto_0
    return v1

    .line 1452
    :catch_0
    move-exception v0

    .line 1453
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1456
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1457
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getBindingClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBufferingPercent()I
    .locals 2

    .prologue
    .line 1178
    monitor-enter p0

    .line 1179
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1181
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getBufferingPercent()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 1186
    :goto_0
    return v1

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1186
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1187
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getComposer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1152
    monitor-enter p0

    .line 1153
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1155
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getComposer()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 1160
    :goto_0
    return-object v1

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1160
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1161
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getCurrentPlugService()Lcom/htc/music/IMusicPluginService;
    .locals 1

    .prologue
    .line 357
    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentPluginClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 367
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExternalPluginCount()I
    .locals 1

    .prologue
    .line 1104
    monitor-enter p0

    .line 1105
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1106
    const/4 v0, 0x0

    monitor-exit p0

    .line 1108
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 1110
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1126
    monitor-enter p0

    .line 1127
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1129
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getFileName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 1134
    :goto_0
    return-object v1

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1134
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1135
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getGenre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1139
    monitor-enter p0

    .line 1140
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1142
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getGenre()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 1147
    :goto_0
    return-object v1

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1147
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1148
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1165
    monitor-enter p0

    .line 1166
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1168
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getLocation()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 1173
    :goto_0
    return-object v1

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1173
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1174
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getNowplayingQueue(I)V
    .locals 2
    .parameter "interval"

    .prologue
    .line 1357
    monitor-enter p0

    .line 1358
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1360
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->getNowplayingQueue(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1365
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1366
    return-void

    .line 1361
    :catch_0
    move-exception v0

    .line 1362
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1365
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1085
    monitor-enter p0

    .line 1086
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1088
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getPlayerName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 1093
    :goto_0
    return-object v1

    .line 1089
    :catch_0
    move-exception v0

    .line 1090
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1093
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1094
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 5
    .parameter "classname"

    .prologue
    const/4 v1, 0x0

    .line 267
    monitor-enter p0

    .line 268
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v2, :cond_1

    .line 269
    :cond_0
    monitor-exit p0

    .line 280
    :goto_0
    return-object v1

    .line 272
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge v0, v2, :cond_4

    .line 273
    const-string v2, "[Test]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pluginclass:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 272
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 276
    :cond_3
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v1, v1, v0

    monitor-exit p0

    goto :goto_0

    .line 281
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 280
    .restart local v0       #i:I
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPluginByIndex(I)Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 1
    .parameter "index"

    .prologue
    .line 290
    monitor-enter p0

    .line 291
    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-lt p1, v0, :cond_1

    .line 292
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    .line 295
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    monitor-exit p0

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPluginClass(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 252
    monitor-enter p0

    .line 253
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v1, :cond_0

    monitor-exit p0

    .line 261
    :goto_0
    return-object v0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 258
    :cond_1
    if-ltz p1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge p1, v1, :cond_2

    .line 259
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 261
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPluginCount()I
    .locals 1

    .prologue
    .line 216
    monitor-enter p0

    .line 217
    :try_start_0
    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    monitor-exit p0

    return v0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPluginDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 237
    monitor-enter p0

    .line 238
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v1, :cond_0

    monitor-exit p0

    .line 246
    :goto_0
    return-object v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$300(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 243
    :cond_1
    if-ltz p1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge p1, v1, :cond_2

    .line 244
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginDescription()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 246
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/16 v8, 0x40

    const/4 v6, 0x0

    .line 315
    monitor-enter p0

    .line 316
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_5

    .line 318
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 319
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    :goto_0
    return-object v6

    .line 321
    :cond_0
    :try_start_3
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/music/IMusicPluginService;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 322
    .local v2, icon:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 323
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 324
    .local v5, width:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 325
    .local v1, height:I
    const/4 v3, 0x0

    .line 327
    .local v3, needScale:Z
    :goto_1
    if-ge v5, v8, :cond_1

    if-lt v1, v8, :cond_2

    .line 328
    :cond_1
    div-int/lit8 v5, v5, 0x2

    .line 329
    div-int/lit8 v1, v1, 0x2

    .line 330
    const/4 v3, 0x1

    goto :goto_1

    .line 333
    :cond_2
    if-eqz v3, :cond_3

    .line 334
    const-string v7, "[MusicPluginManager]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPluginIcon scaled size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v7, 0x1

    invoke-static {v2, v5, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 336
    .local v4, temp:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    move-object v2, v4

    .line 340
    .end local v4           #temp:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v7, v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginIcon(Landroid/graphics/Bitmap;)V

    .line 341
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    :try_start_4
    monitor-exit p0

    goto :goto_0

    .line 353
    .end local v1           #height:I
    .end local v2           #icon:Landroid/graphics/Bitmap;
    .end local v3           #needScale:Z
    .end local v5           #width:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 343
    .restart local v2       #icon:Landroid/graphics/Bitmap;
    :cond_4
    :try_start_5
    monitor-exit p0

    goto :goto_0

    .line 346
    .end local v2           #icon:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 347
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 348
    monitor-exit p0

    goto :goto_0

    .line 351
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public getPluginName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 222
    monitor-enter p0

    .line 223
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v1, :cond_0

    monitor-exit p0

    .line 231
    :goto_0
    return-object v0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 228
    :cond_1
    if-ltz p1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge p1, v1, :cond_2

    .line 229
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 231
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method getPluginNotReadyMsg()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1431
    monitor-enter p0

    .line 1432
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v2, :cond_0

    .line 1433
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1439
    :goto_0
    return-object v1

    .line 1436
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMusicPluginService;->getPluginNotReadyMsg()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1441
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1437
    :catch_0
    move-exception v0

    .line 1438
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1439
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getPluginServiceByClass(Ljava/lang/String;)Lcom/htc/music/IMusicPluginService;
    .locals 3
    .parameter "classname"

    .prologue
    const/4 v1, 0x0

    .line 300
    monitor-enter p0

    .line 301
    if-nez p1, :cond_0

    .line 302
    :try_start_0
    monitor-exit p0

    .line 310
    :goto_0
    return-object v1

    .line 304
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge v0, v2, :cond_2

    .line 305
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    monitor-exit p0

    goto :goto_0

    .line 311
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 304
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPositionByShufflePosition(I)I
    .locals 2
    .parameter "shufflePosition"

    .prologue
    .line 1197
    monitor-enter p0

    .line 1198
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1200
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->getPositionByShufflePosition(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 1205
    :goto_0
    return v1

    .line 1201
    :catch_0
    move-exception v0

    .line 1202
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1205
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    monitor-exit p0

    goto :goto_0

    .line 1206
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getQueuePosition()I
    .locals 2

    .prologue
    .line 825
    monitor-enter p0

    .line 826
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 828
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getQueuePosition()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 833
    :goto_0
    return v1

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 833
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 834
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getQueueSize()I
    .locals 2

    .prologue
    .line 996
    monitor-enter p0

    .line 997
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 999
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getQueueSize()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 1004
    :goto_0
    return v1

    .line 1000
    :catch_0
    move-exception v0

    .line 1001
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1004
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1005
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getRepeatMode()I
    .locals 2

    .prologue
    .line 1047
    monitor-enter p0

    .line 1048
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1050
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getRepeatMode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 1055
    :goto_0
    return v1

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1055
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1056
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getShuffleMode()I
    .locals 2

    .prologue
    .line 1022
    monitor-enter p0

    .line 1023
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1025
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getShuffleMode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 1030
    :goto_0
    return v1

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1030
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1031
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getShufflePositionByPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 1210
    monitor-enter p0

    .line 1211
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1213
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->getShufflePositionByPosition(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 1218
    :goto_0
    return v1

    .line 1214
    :catch_0
    move-exception v0

    .line 1215
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1218
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    monitor-exit p0

    goto :goto_0

    .line 1219
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getTrackDetails(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1395
    monitor-enter p0

    .line 1396
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1398
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->getTrackDetails(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1403
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1404
    return-void

    .line 1399
    :catch_0
    move-exception v0

    .line 1400
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1403
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 954
    monitor-enter p0

    .line 955
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 957
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getTrackName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 963
    :goto_0
    return-object v1

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 963
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 964
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getVolume()I
    .locals 2

    .prologue
    .line 1060
    monitor-enter p0

    .line 1061
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1063
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getVolume()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 1068
    :goto_0
    return v1

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1068
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1069
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isBindingService()Z
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    monitor-exit p0

    return v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDmcOrPushMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 373
    monitor-enter p0

    .line 374
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 376
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMusicPluginService;->isDmcOrPushMode()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 384
    :goto_0
    return v1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "[MusicPluginManager]"

    const-string v3, "Remote Exception in MusicPluginManager isDmcOrPushMode"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 382
    monitor-exit p0

    goto :goto_0

    .line 386
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 384
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public isMusicPluginExist()Z
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 105
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
    .line 838
    monitor-enter p0

    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 841
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->isPlaying()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 847
    :goto_0
    return v1

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 847
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 848
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isPluginConnected()Z
    .locals 1

    .prologue
    .line 1098
    monitor-enter p0

    .line 1099
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1100
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPluginMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1860
    monitor-enter p0

    .line 1861
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    if-eqz v1, :cond_0

    .line 1862
    monitor-exit p0

    .line 1867
    :goto_0
    return v0

    .line 1863
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->isPluginConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1865
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1869
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1867
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method isPluginReady()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1413
    monitor-enter p0

    .line 1414
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v2, :cond_0

    .line 1415
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1421
    :goto_0
    return v1

    .line 1418
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMusicPluginService;->isPluginReady()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1423
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1419
    :catch_0
    move-exception v0

    .line 1420
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1421
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public next(Z)V
    .locals 2
    .parameter "changeSong"

    .prologue
    .line 902
    monitor-enter p0

    .line 903
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 905
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->next(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 910
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 911
    return-void

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 910
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "index"
    .parameter "path"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 747
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 751
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 752
    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentPlugin.mPluginClass: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "className: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 756
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 757
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 760
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3, p1, p2}, Lcom/htc/music/MediaPlaybackService;->pluginAlbumArtPathByShuffleUpdated(ILjava/lang/String;)V

    .line 763
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    if-eqz v3, :cond_0

    .line 764
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v5}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 765
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, directory:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v5, v0}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 767
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "index"
    .parameter "path"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 774
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 778
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 779
    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentPlugin.mPluginClass: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "className: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 783
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 784
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 787
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3, p1, p2}, Lcom/htc/music/MediaPlaybackService;->pluginAlbumArtPathUpdated(ILjava/lang/String;)V

    .line 790
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    if-eqz v3, :cond_0

    .line 791
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v5}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 792
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, directory:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v5, v0}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 794
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "errorMessage"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1822
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1823
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1825
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.onerror"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1826
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1827
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1830
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onErrorId(ILjava/lang/String;)V
    .locals 4
    .parameter "errorId"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1833
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1834
    const-string v1, "[MusicPluginManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onErrorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1837
    const-string v1, "[MusicPluginManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onErrorID 2= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.onerror"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1839
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "error_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1840
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1843
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V
    .locals 3
    .parameter "values"
    .parameter "start"
    .parameter "end"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 803
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 804
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentPlugin.mPluginClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 809
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->pluginNowplayingQueueUpdated([Landroid/content/ContentValues;II)V

    goto :goto_0
.end method

.method public onPluginSelected(I)V
    .locals 4
    .parameter "arg1"

    .prologue
    .line 517
    monitor-enter p0

    .line 518
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 519
    :cond_0
    monitor-exit p0

    .line 546
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 523
    .local v2, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    if-nez v2, :cond_2

    .line 524
    monitor-exit p0

    goto :goto_0

    .line 545
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 527
    .restart local v2       #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_2
    :try_start_1
    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, className:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 530
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin(Z)V

    .line 533
    :cond_3
    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_4

    .line 535
    :try_start_2
    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMusicPluginService;->startPluginActivity()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 539
    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 536
    :catch_0
    move-exception v1

    .line 537
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 541
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    if-eqz v0, :cond_5

    .line 542
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;Z)Z

    .line 545
    :cond_5
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onToastWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "errorMessage"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/music/MediaPlaybackService;->showPluginToast(Ljava/lang/String;I)V

    .line 1850
    :cond_0
    return-void
.end method

.method public onTrackDetailsUpdated(ILandroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .parameter "position"
    .parameter "values"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 813
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 815
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 816
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentPlugin.mPluginClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 821
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->pluginTrackDetailsUpdated(ILandroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 864
    monitor-enter p0

    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 867
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 872
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 873
    return-void

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 872
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public play()V
    .locals 2

    .prologue
    .line 876
    monitor-enter p0

    .line 877
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 879
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 884
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 885
    return-void

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 884
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "action"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 711
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v0, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pluginNotifyChange action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " class name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 717
    const-string v0, "com.htc.music.plugin.metachanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.changeart"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 720
    :cond_2
    const-string v0, "com.htc.music.plugin.statechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 721
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 722
    :cond_3
    const-string v0, "com.htc.music.plugin.playbackcomplete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 723
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :cond_4
    const-string v0, "com.htc.music.plugin.queuechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 726
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 727
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 728
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 729
    :cond_5
    const-string v0, "com.htc.music.plugin.statechanged.buffering"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 730
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.playstatechanged"

    const-string v2, "buffering"

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 731
    :cond_6
    const-string v0, "com.htc.music.plugin.statechanged.waiting"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 732
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.playstatechanged"

    const-string v2, "waiting"

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 733
    :cond_7
    const-string v0, "com.htc.music.plugin.playnext"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 734
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->next(Z)V

    goto/16 :goto_0

    .line 735
    :cond_8
    const-string v0, "com.htc.music.pluginservicebinded"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 736
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.pluginservicebinded"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 738
    :cond_9
    const-string v0, "[MusicPluginManager]"

    const-string v1, "unknown plugin notify action"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 741
    :cond_a
    const-string v0, "[MusicPluginManager]"

    const-string v1, "class name not match."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public position()J
    .locals 3

    .prologue
    .line 928
    monitor-enter p0

    .line 929
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 931
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->position()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    :try_start_2
    monitor-exit p0

    .line 936
    :goto_0
    return-wide v1

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 936
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 937
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public prev(Z)V
    .locals 2
    .parameter "changeSong"

    .prologue
    .line 888
    monitor-enter p0

    .line 889
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 891
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->prev(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 896
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 897
    return-void

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 896
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public refreshPlugins()V
    .locals 10

    .prologue
    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    const-string v7, "[MusicPluginManager]"

    const-string v8, "refreshPlugins + "

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-nez v7, :cond_0

    .line 131
    monitor-exit p0

    .line 213
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/MusicPluginManager;->getPlugins()[Lcom/htc/music/MusicPluginManager$Plugin;

    move-result-object v6

    .line 137
    .local v6, plugins:[Lcom/htc/music/MusicPluginManager$Plugin;
    if-nez v6, :cond_1

    .line 138
    const-string v7, "[MusicPluginManager]"

    const-string v8, "PluginRegistryHelper.getPlugins return null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    monitor-exit p0

    goto :goto_0

    .line 212
    .end local v6           #plugins:[Lcom/htc/music/MusicPluginManager$Plugin;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 142
    .restart local v6       #plugins:[Lcom/htc/music/MusicPluginManager$Plugin;
    :cond_1
    const/4 v4, 0x0

    .line 144
    .local v4, pluginChanged:Z
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    array-length v8, v6

    if-ne v7, v8, :cond_6

    .line 145
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_2

    .line 146
    aget-object v7, v6, v2

    invoke-virtual {v7}, Lcom/htc/music/MusicPluginManager$Plugin;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, className:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v7, v7, v2

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-nez v7, :cond_5

    .line 148
    const/4 v4, 0x1

    .line 160
    .end local v0           #className:Ljava/lang/String;
    .end local v2           #i:I
    :cond_2
    :goto_2
    if-eqz v4, :cond_7

    .line 161
    :try_start_2
    array-length v7, v6

    new-array v5, v7, [Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 162
    .local v5, pluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 163
    const-string v7, "[MusicPluginManager]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshPlugins: plugin changed since last refresh. plugins.length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    array-length v7, v6

    if-ge v2, v7, :cond_9

    .line 171
    aget-object v7, v6, v2

    invoke-virtual {v7}, Lcom/htc/music/MusicPluginManager$Plugin;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/music/MusicPluginManager;->getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v3

    .line 172
    .local v3, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    if-eqz v3, :cond_8

    .line 174
    const-string v7, "[MusicPluginManager]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "plugin name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    aput-object v3, v5, v2

    .line 178
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_3

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 179
    iput-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 183
    :cond_3
    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$300(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$300(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 184
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 145
    .end local v3           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .end local v5           #pluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .restart local v0       #className:Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 153
    .end local v0           #className:Ljava/lang/String;
    .end local v2           #i:I
    :cond_6
    const/4 v4, 0x1

    goto :goto_2

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 157
    const-string v7, "[MusicPluginManager]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshPlugins: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 166
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_7
    const-string v7, "[MusicPluginManager]"

    const-string v8, "return refreshPlugins - "

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    monitor-exit p0

    goto/16 :goto_0

    .line 188
    .restart local v2       #i:I
    .restart local v3       #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .restart local v5       #pluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_8
    new-instance v7, Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-direct {v7, p0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;-><init>(Lcom/htc/music/MusicPluginManager;)V

    aput-object v7, v5, v2

    .line 189
    aget-object v7, v5, v2

    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/htc/music/MusicPluginManager$Plugin;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginClass(Ljava/lang/String;)V

    .line 190
    aget-object v7, v5, v2

    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/htc/music/MusicPluginManager$Plugin;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginDescription(Ljava/lang/String;)V

    .line 191
    aget-object v7, v5, v2

    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/htc/music/MusicPluginManager$Plugin;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginPackage(Ljava/lang/String;)V

    .line 192
    aget-object v7, v5, v2

    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/htc/music/MusicPluginManager$Plugin;->getShortClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginName(Ljava/lang/String;)V

    .line 194
    aget-object v7, v5, v2

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$300(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    aget-object v7, v5, v2

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$300(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 196
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    aget-object v8, v5, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 202
    .end local v3           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_9
    iput-object v5, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 203
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_a

    .line 204
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    array-length v7, v7

    iput v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    .line 208
    :goto_5
    const/4 v6, 0x0

    .line 209
    const/4 v5, 0x0

    .line 211
    const-string v7, "[MusicPluginManager]"

    const-string v8, "refreshPlugins - "

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    monitor-exit p0

    goto/16 :goto_0

    .line 206
    :cond_a
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method public resetMusicPluginManager()V
    .locals 5

    .prologue
    .line 589
    monitor-enter p0

    .line 590
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge v1, v2, :cond_2

    .line 591
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    .line 593
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMusicPluginService;->unregisterCallback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 599
    :cond_0
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 600
    const-string v2, "[MusicPluginManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbinding Service of plugin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v4, v4, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/MediaPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 603
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->reset()V

    .line 604
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 596
    const-string v2, "[MusicPluginManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetMusicPluginManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 615
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 607
    :cond_2
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 608
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 609
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 610
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    .line 611
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 612
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 613
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    .line 614
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    .line 615
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 616
    return-void
.end method

.method public seek(J)J
    .locals 3
    .parameter "pos"

    .prologue
    .line 941
    monitor-enter p0

    .line 942
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 944
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/htc/music/IMusicPluginService;->seek(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    :try_start_2
    monitor-exit p0

    .line 949
    :goto_0
    return-wide v1

    .line 945
    :catch_0
    move-exception v0

    .line 946
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 949
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 950
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setLastPluginClass(Ljava/lang/String;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 1853
    monitor-enter p0

    .line 1854
    :try_start_0
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    .line 1855
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastPluginClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    monitor-exit p0

    .line 1857
    return-void

    .line 1856
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setQueuePosition(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 1114
    monitor-enter p0

    .line 1115
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1117
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->setQueuePosition(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1122
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1123
    return-void

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1122
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setRepeatMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1035
    monitor-enter p0

    .line 1036
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1038
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->setRepeatMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1043
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1044
    return-void

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1043
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setShuffleMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1009
    monitor-enter p0

    .line 1010
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1012
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->setShuffleMode(I)V

    .line 1013
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1018
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1019
    return-void

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1018
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setVolume(I)V
    .locals 2
    .parameter "nVol"

    .prologue
    .line 1073
    monitor-enter p0

    .line 1074
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1076
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->setVolume(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1081
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1082
    return-void

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1081
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stop(Z)V
    .locals 2
    .parameter "stateChanged"

    .prologue
    .line 852
    monitor-enter p0

    .line 853
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 855
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->stop(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 860
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 861
    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 860
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopActivePlugin(Z)V
    .locals 4
    .parameter "isPowerOff"

    .prologue
    .line 634
    monitor-enter p0

    .line 636
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    if-eqz v1, :cond_0

    .line 637
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 661
    :try_start_1
    const-string v1, "[MusicPluginManager]"

    const-string v2, "mCurrentPlugin == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 638
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    :goto_0
    return-void

    .line 641
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->isDmcOrPushMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 642
    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->pause()V

    .line 646
    :cond_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->close(Z)V

    .line 647
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->unregisterCallback()V

    .line 648
    const-string v1, "[MusicPluginManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbinding Service of plugin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$800(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 651
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1, v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$802(Lcom/htc/music/MusicPluginManager$MusicPlugin;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 652
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1, v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$202(Lcom/htc/music/MusicPluginManager$MusicPlugin;Lcom/htc/music/IMusicPluginService;)Lcom/htc/music/IMusicPluginService;

    .line 653
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 654
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 661
    :try_start_3
    const-string v1, "[MusicPluginManager]"

    const-string v2, "mCurrentPlugin == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 664
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 661
    :try_start_5
    const-string v1, "[MusicPluginManager]"

    const-string v2, "mCurrentPlugin == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 657
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 658
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 659
    const-string v1, "[MusicPluginManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopActivePlugin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 661
    :try_start_7
    const-string v1, "[MusicPluginManager]"

    const-string v2, "mCurrentPlugin == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    goto :goto_1

    .line 661
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_1
    move-exception v1

    const-string v2, "[MusicPluginManager]"

    const-string v3, "mCurrentPlugin == null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 661
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public stopHandlerThread()V
    .locals 1

    .prologue
    .line 619
    monitor-enter p0

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 625
    :cond_0
    monitor-exit p0

    .line 626
    return-void

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
