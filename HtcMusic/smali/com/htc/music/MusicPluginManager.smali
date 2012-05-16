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

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 47
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 49
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    .line 51
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 53
    iput v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    .line 55
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 57
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 59
    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 61
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    .line 65
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    .line 666
    new-instance v0, Lcom/htc/music/MusicPluginManager$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MusicPluginManager$1;-><init>(Lcom/htc/music/MusicPluginManager;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    .line 74
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 76
    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    .line 77
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlbumArtFileDeleteWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 78
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 79
    new-instance v0, Lcom/htc/music/MusicPluginManager$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/MusicPluginManager$NonUiHandler;-><init>(Lcom/htc/music/MusicPluginManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 80
    iput-object p2, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    .line 83
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

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 47
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 49
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    .line 51
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 53
    iput v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    .line 55
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 57
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 59
    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 61
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    .line 65
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    .line 666
    new-instance v0, Lcom/htc/music/MusicPluginManager$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MusicPluginManager$1;-><init>(Lcom/htc/music/MusicPluginManager;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    .line 87
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 89
    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    .line 90
    invoke-direct {p0, p2, v1}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;Z)Z

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlbumArtFileDeleteWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 92
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 93
    new-instance v0, Lcom/htc/music/MusicPluginManager$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/MusicPluginManager$NonUiHandler;-><init>(Lcom/htc/music/MusicPluginManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 94
    iput-object p3, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method static synthetic access$1002(Lcom/htc/music/MusicPluginManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/music/MusicPluginManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/music/MusicPluginManager;)[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/MusicPluginManager;)Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/music/MusicPluginManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/music/MusicPluginManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/music/MusicPluginManager;)Lcom/htc/music/MediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/MusicPluginManager;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/htc/music/MusicPluginManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
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

    .line 439
    monitor-enter p0

    .line 441
    :try_start_0
    new-instance v0, Lcom/htc/music/MusicPluginManager$PluginConnection;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/htc/music/MusicPluginManager$PluginConnection;-><init>(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$1;)V

    .line 442
    .local v0, conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v5, p1

    .line 444
    .local v2, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    if-nez v2, :cond_0

    .line 445
    const-string v4, "[MusicPluginManager]"

    const-string v5, "bindPluginService fails, plugin is null. 3 parameters."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 470
    :try_start_1
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    .line 446
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :goto_0
    return v3

    .line 449
    .restart local v0       #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .restart local v2       #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_0
    :try_start_2
    invoke-virtual {v2, p2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setStartActivity(Z)V

    .line 450
    invoke-virtual {v2, v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    .line 451
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v0, v7}, Lcom/htc/music/MediaPlaybackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 452
    const-string v5, "[MusicPluginManager]"

    const-string v6, "bindPluginService succeed."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 454
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    .line 455
    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 470
    :try_start_3
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    .line 456
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v4

    goto :goto_0

    .line 458
    :cond_1
    :try_start_4
    const-string v4, "[MusicPluginManager]"

    const-string v5, "bindPluginService failed."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 470
    :try_start_5
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    .line 459
    monitor-exit p0

    goto :goto_0

    .line 472
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 461
    :catch_0
    move-exception v1

    .line 462
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 463
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

    .line 470
    :try_start_7
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    .line 464
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 465
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 466
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 467
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

    .line 470
    :try_start_9
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    .line 468
    monitor-exit p0

    goto/16 :goto_0

    .line 470
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

    .line 397
    monitor-enter p0

    .line 399
    :try_start_0
    new-instance v0, Lcom/htc/music/MusicPluginManager$PluginConnection;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/htc/music/MusicPluginManager$PluginConnection;-><init>(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$1;)V

    .line 400
    .local v0, conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    invoke-virtual {p0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v2

    .line 402
    .local v2, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    if-nez v2, :cond_0

    .line 403
    const-string v4, "[MusicPluginManager]"

    const-string v5, "bindPluginService fails, plugin is null. 2 parameters."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 428
    :try_start_1
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 404
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :goto_0
    return v3

    .line 407
    .restart local v0       #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .restart local v2       #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_0
    :try_start_2
    invoke-virtual {v2, p2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setStartActivity(Z)V

    .line 408
    invoke-virtual {v2, v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    .line 409
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v0, v7}, Lcom/htc/music/MediaPlaybackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 410
    const-string v5, "[MusicPluginManager]"

    const-string v6, "bindPluginService succeed."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 412
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    .line 413
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 428
    :try_start_3
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 414
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v4

    goto :goto_0

    .line 416
    :cond_1
    :try_start_4
    const-string v4, "[MusicPluginManager]"

    const-string v5, "bindPluginService failed."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 428
    :try_start_5
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 417
    monitor-exit p0

    goto :goto_0

    .line 430
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 421
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

    .line 428
    :try_start_7
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 422
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 423
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 424
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 425
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

    .line 428
    :try_start_9
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 426
    monitor-exit p0

    goto :goto_0

    .line 428
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catchall_1
    move-exception v3

    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private unbindOtherServices(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 572
    monitor-enter p0

    .line 573
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 574
    if-eq p1, v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 575
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v0

    .line 576
    .local v0, conn:Landroid/content/ServiceConnection;
    if-eqz v0, :cond_0

    .line 577
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

    .line 578
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2, v0}, Lcom/htc/music/MediaPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 579
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setService(Lcom/htc/music/IMusicPluginService;)V

    .line 580
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    .line 581
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 582
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 573
    .end local v0           #conn:Landroid/content/ServiceConnection;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    :cond_1
    monitor-exit p0

    .line 587
    return-void

    .line 586
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
    .line 550
    if-nez p1, :cond_0

    .line 569
    :goto_0
    return-void

    .line 551
    :cond_0
    monitor-enter p0

    .line 552
    const/4 v2, 0x0

    .line 553
    .local v2, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 554
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v3, v1

    .line 555
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

    .line 557
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v0

    .line 558
    .local v0, conn:Landroid/content/ServiceConnection;
    if-eqz v0, :cond_1

    .line 559
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

    .line 560
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3, v0}, Lcom/htc/music/MediaPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 561
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setService(Lcom/htc/music/IMusicPluginService;)V

    .line 562
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    .line 563
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 564
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 553
    .end local v0           #conn:Landroid/content/ServiceConnection;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 568
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
    .line 706
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

    .line 482
    monitor-enter p0

    .line 484
    :try_start_0
    new-instance v0, Lcom/htc/music/MusicPluginManager$PluginConnection;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/htc/music/MusicPluginManager$PluginConnection;-><init>(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$1;)V

    .line 485
    .local v0, conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    invoke-virtual {p0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v2

    .line 486
    .local v2, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    invoke-virtual {v2, p2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setStartActivity(Z)V

    .line 487
    invoke-virtual {v2, p3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPlayAtBeginning(Z)V

    .line 488
    invoke-virtual {v2, v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    .line 490
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v0, v7}, Lcom/htc/music/MediaPlaybackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 491
    const-string v5, "[MusicPluginManager]"

    const-string v6, "bindPluginService succeed."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 493
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    .line 494
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 509
    :try_start_1
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 495
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 507
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :goto_0
    return v3

    .line 497
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

    .line 509
    :try_start_3
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 498
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v3, v4

    goto :goto_0

    .line 500
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :catch_0
    move-exception v1

    .line 501
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 502
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

    .line 509
    :try_start_5
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 503
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v3, v4

    goto :goto_0

    .line 504
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 505
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 506
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

    .line 509
    :try_start_7
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 507
    monitor-exit p0

    move v3, v4

    goto :goto_0

    .line 509
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    throw v3

    .line 511
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
    .line 1334
    monitor-enter p0

    .line 1335
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1337
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->clearAlbumArtRequests()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1342
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1343
    return-void

    .line 1338
    :catch_0
    move-exception v0

    .line 1339
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1342
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
    .line 1374
    monitor-enter p0

    .line 1375
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1377
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->clearNowplayingQueueRequests()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1382
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1383
    return-void

    .line 1378
    :catch_0
    move-exception v0

    .line 1379
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1382
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
    .line 913
    monitor-enter p0

    .line 914
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 916
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

    .line 922
    :goto_0
    return-wide v1

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 922
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 923
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

    .line 1230
    monitor-enter p0

    .line 1231
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

    .line 1232
    const/4 v3, 0x0

    .line 1234
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

    .line 1239
    :goto_0
    if-eqz v3, :cond_0

    .line 1240
    const/4 v5, 0x0

    .line 1242
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

    .line 1246
    :goto_1
    :try_start_3
    monitor-exit p0

    .line 1270
    .end local v3           #isDmcOrPush:Z
    .end local v5           #path:Ljava/lang/String;
    :goto_2
    return-object v5

    .line 1235
    .restart local v3       #isDmcOrPush:Z
    :catch_0
    move-exception v1

    .line 1236
    .local v1, e1:Landroid/os/RemoteException;
    const-string v7, "[MusicPluginManager]"

    const-string v8, "exception in getAlbumArtPathByPosition isDmcOrPush"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1271
    .end local v1           #e1:Landroid/os/RemoteException;
    .end local v3           #isDmcOrPush:Z
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 1243
    .restart local v3       #isDmcOrPush:Z
    .restart local v5       #path:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1244
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "[MusicPluginManager]"

    const-string v7, "exception in getAlbumArtPathByPosition"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1248
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v5           #path:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1249
    .local v4, key:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1250
    .restart local v5       #path:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1251
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1252
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1253
    monitor-exit p0

    goto :goto_2

    .line 1255
    :cond_1
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1259
    .end local v2           #file:Ljava/io/File;
    :cond_2
    :try_start_5
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/htc/music/IMusicPluginService;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v5

    .line 1260
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1261
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1263
    :cond_3
    :try_start_6
    monitor-exit p0

    goto :goto_2

    .line 1264
    :catch_2
    move-exception v0

    .line 1265
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1266
    monitor-exit p0

    move-object v5, v6

    goto :goto_2

    .line 1270
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
    .line 1283
    monitor-enter p0

    .line 1284
    const/4 v3, 0x0

    .line 1286
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

    .line 1291
    :goto_0
    if-eqz v3, :cond_0

    .line 1292
    const/4 v5, 0x0

    .line 1294
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

    .line 1298
    :goto_1
    :try_start_2
    monitor-exit p0

    .line 1322
    .end local v5           #path:Ljava/lang/String;
    :goto_2
    return-object v5

    .line 1287
    :catch_0
    move-exception v1

    .line 1288
    .local v1, e1:Landroid/os/RemoteException;
    const-string v6, "[MusicPluginManager]"

    const-string v7, "exception in getAlbumArtPathByPosition isDmcOrPush"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1323
    .end local v1           #e1:Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1295
    .restart local v5       #path:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1296
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "[MusicPluginManager]"

    const-string v7, "exception in getAlbumArtPathByPosition"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1300
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

    .line 1301
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1302
    .local v4, key:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v6}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1303
    .restart local v5       #path:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1304
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1305
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1306
    monitor-exit p0

    goto :goto_2

    .line 1308
    :cond_1
    iget-object v6, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v6}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1312
    .end local v2           #file:Ljava/io/File;
    :cond_2
    :try_start_4
    iget-object v6, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v6}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/htc/music/IMusicPluginService;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v5

    .line 1313
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 1314
    iget-object v6, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v6}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1316
    :cond_3
    :try_start_5
    monitor-exit p0

    goto :goto_2

    .line 1317
    :catch_2
    move-exception v0

    .line 1318
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1322
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
    .line 1463
    monitor-enter p0

    .line 1464
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1466
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

    .line 1471
    :goto_0
    return v1

    .line 1467
    :catch_0
    move-exception v0

    .line 1468
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1471
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1472
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
    .line 967
    monitor-enter p0

    .line 968
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 970
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

    .line 976
    :goto_0
    return-object v1

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 976
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 977
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
    .line 981
    monitor-enter p0

    .line 982
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 984
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

    .line 990
    :goto_0
    return-object v1

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 990
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 991
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
    .line 1447
    monitor-enter p0

    .line 1448
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1450
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

    .line 1455
    :goto_0
    return v1

    .line 1451
    :catch_0
    move-exception v0

    .line 1452
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1455
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1456
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
    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 119
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
    .line 1177
    monitor-enter p0

    .line 1178
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1180
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

    .line 1185
    :goto_0
    return v1

    .line 1181
    :catch_0
    move-exception v0

    .line 1182
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1185
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1186
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
    .line 1151
    monitor-enter p0

    .line 1152
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1154
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

    .line 1159
    :goto_0
    return-object v1

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1159
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1160
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
    .line 358
    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 360
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
    .line 364
    monitor-enter p0

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 368
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 370
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
    .line 1103
    monitor-enter p0

    .line 1104
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1105
    const/4 v0, 0x0

    monitor-exit p0

    .line 1107
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 1109
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
    .line 1125
    monitor-enter p0

    .line 1126
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1128
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

    .line 1133
    :goto_0
    return-object v1

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1133
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1134
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
    .line 1138
    monitor-enter p0

    .line 1139
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1141
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

    .line 1146
    :goto_0
    return-object v1

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1146
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1147
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
    .line 1164
    monitor-enter p0

    .line 1165
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1167
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

    .line 1172
    :goto_0
    return-object v1

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1172
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1173
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
    .line 1356
    monitor-enter p0

    .line 1357
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1359
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->getNowplayingQueue(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1364
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1365
    return-void

    .line 1360
    :catch_0
    move-exception v0

    .line 1361
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1364
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
    .line 1084
    monitor-enter p0

    .line 1085
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1087
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

    .line 1092
    :goto_0
    return-object v1

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1092
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1093
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

    .line 268
    monitor-enter p0

    .line 269
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v2, :cond_1

    .line 270
    :cond_0
    monitor-exit p0

    .line 281
    :goto_0
    return-object v1

    .line 273
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge v0, v2, :cond_4

    .line 274
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

    .line 275
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 273
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 277
    :cond_3
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v1, v1, v0

    monitor-exit p0

    goto :goto_0

    .line 282
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 281
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
    .line 291
    monitor-enter p0

    .line 292
    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-lt p1, v0, :cond_1

    .line 293
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    .line 296
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    monitor-exit p0

    goto :goto_0

    .line 297
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

    .line 253
    monitor-enter p0

    .line 254
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v1, :cond_0

    monitor-exit p0

    .line 262
    :goto_0
    return-object v0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 259
    :cond_1
    if-ltz p1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge p1, v1, :cond_2

    .line 260
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 262
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPluginCount()I
    .locals 1

    .prologue
    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    monitor-exit p0

    return v0

    .line 219
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

    .line 238
    monitor-enter p0

    .line 239
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v1, :cond_0

    monitor-exit p0

    .line 247
    :goto_0
    return-object v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$300(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 244
    :cond_1
    if-ltz p1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge p1, v1, :cond_2

    .line 245
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginDescription()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 247
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

    .line 316
    monitor-enter p0

    .line 317
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_5

    .line 319
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 320
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

    .line 352
    :goto_0
    return-object v6

    .line 322
    :cond_0
    :try_start_3
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/music/IMusicPluginService;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 323
    .local v2, icon:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 324
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 325
    .local v5, width:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 326
    .local v1, height:I
    const/4 v3, 0x0

    .line 328
    .local v3, needScale:Z
    :goto_1
    if-ge v5, v8, :cond_1

    if-lt v1, v8, :cond_2

    .line 329
    :cond_1
    div-int/lit8 v5, v5, 0x2

    .line 330
    div-int/lit8 v1, v1, 0x2

    .line 331
    const/4 v3, 0x1

    goto :goto_1

    .line 334
    :cond_2
    if-eqz v3, :cond_3

    .line 335
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

    .line 336
    const/4 v7, 0x1

    invoke-static {v2, v5, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 337
    .local v4, temp:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 338
    move-object v2, v4

    .line 341
    .end local v4           #temp:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v7, v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginIcon(Landroid/graphics/Bitmap;)V

    .line 342
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

    .line 354
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

    .line 344
    .restart local v2       #icon:Landroid/graphics/Bitmap;
    :cond_4
    :try_start_5
    monitor-exit p0

    goto :goto_0

    .line 347
    .end local v2           #icon:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 349
    monitor-exit p0

    goto :goto_0

    .line 352
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

    .line 223
    monitor-enter p0

    .line 224
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v1, :cond_0

    monitor-exit p0

    .line 232
    :goto_0
    return-object v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 229
    :cond_1
    if-ltz p1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge p1, v1, :cond_2

    .line 230
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 232
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

    .line 1430
    monitor-enter p0

    .line 1431
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v2, :cond_0

    .line 1432
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1438
    :goto_0
    return-object v1

    .line 1435
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

    .line 1440
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1436
    :catch_0
    move-exception v0

    .line 1437
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1438
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

    .line 301
    monitor-enter p0

    .line 302
    if-nez p1, :cond_0

    .line 303
    :try_start_0
    monitor-exit p0

    .line 311
    :goto_0
    return-object v1

    .line 305
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge v0, v2, :cond_2

    .line 306
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    monitor-exit p0

    goto :goto_0

    .line 312
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 305
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
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
    .line 1196
    monitor-enter p0

    .line 1197
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1199
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

    .line 1204
    :goto_0
    return v1

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1204
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    monitor-exit p0

    goto :goto_0

    .line 1205
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
    .line 824
    monitor-enter p0

    .line 825
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 827
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

    .line 832
    :goto_0
    return v1

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 832
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 833
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
    .line 995
    monitor-enter p0

    .line 996
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 998
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

    .line 1003
    :goto_0
    return v1

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1003
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1004
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
    .line 1046
    monitor-enter p0

    .line 1047
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1049
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

    .line 1054
    :goto_0
    return v1

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1054
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1055
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
    .line 1021
    monitor-enter p0

    .line 1022
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1024
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

    .line 1029
    :goto_0
    return v1

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1029
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1030
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
    .line 1209
    monitor-enter p0

    .line 1210
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1212
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

    .line 1217
    :goto_0
    return v1

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1217
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    monitor-exit p0

    goto :goto_0

    .line 1218
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
    .line 1394
    monitor-enter p0

    .line 1395
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1397
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->getTrackDetails(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1402
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1403
    return-void

    .line 1398
    :catch_0
    move-exception v0

    .line 1399
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1402
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
    .line 953
    monitor-enter p0

    .line 954
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 956
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

    .line 962
    :goto_0
    return-object v1

    .line 957
    :catch_0
    move-exception v0

    .line 958
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 962
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 963
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
    .line 1059
    monitor-enter p0

    .line 1060
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1062
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

    .line 1067
    :goto_0
    return v1

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1067
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1068
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
    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    monitor-exit p0

    return v0

    .line 113
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

    .line 374
    monitor-enter p0

    .line 375
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 377
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

    .line 385
    :goto_0
    return v1

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "[MusicPluginManager]"

    const-string v3, "Remote Exception in MusicPluginManager isDmcOrPushMode"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 383
    monitor-exit p0

    goto :goto_0

    .line 387
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 385
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
    .line 105
    monitor-enter p0

    .line 106
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

    .line 107
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
    .line 837
    monitor-enter p0

    .line 838
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 840
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

    .line 846
    :goto_0
    return v1

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 846
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 847
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
    .line 1097
    monitor-enter p0

    .line 1098
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

    .line 1099
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

    .line 1788
    monitor-enter p0

    .line 1789
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    if-eqz v1, :cond_0

    .line 1790
    monitor-exit p0

    .line 1795
    :goto_0
    return v0

    .line 1791
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

    .line 1793
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1797
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1795
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

    .line 1412
    monitor-enter p0

    .line 1413
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v2, :cond_0

    .line 1414
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1420
    :goto_0
    return v1

    .line 1417
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

    .line 1422
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1418
    :catch_0
    move-exception v0

    .line 1419
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1420
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public next(Z)V
    .locals 2
    .parameter "changeSong"

    .prologue
    .line 901
    monitor-enter p0

    .line 902
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 904
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->next(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 909
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 910
    return-void

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 909
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

    .line 746
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 750
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 751
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

    .line 752
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

    .line 755
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 756
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 759
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3, p1, p2}, Lcom/htc/music/MediaPlaybackService;->pluginAlbumArtPathByShuffleUpdated(ILjava/lang/String;)V

    .line 762
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    if-eqz v3, :cond_0

    .line 763
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v5}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 764
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, directory:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v5, v0}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 766
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

    .line 773
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 777
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 778
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

    .line 779
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

    .line 782
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 783
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 786
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3, p1, p2}, Lcom/htc/music/MediaPlaybackService;->pluginAlbumArtPathUpdated(ILjava/lang/String;)V

    .line 789
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    if-eqz v3, :cond_0

    .line 790
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v5}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 791
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, directory:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v5, v0}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 793
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
    .line 1750
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1751
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

    .line 1753
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.onerror"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1754
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1755
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1758
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
    .line 1761
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1762
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

    .line 1763
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

    .line 1765
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

    .line 1766
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.onerror"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1767
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "error_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1768
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1771
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
    .line 800
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 802
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 803
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

    .line 804
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

    .line 808
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->pluginNowplayingQueueUpdated([Landroid/content/ContentValues;II)V

    goto :goto_0
.end method

.method public onPluginSelected(I)V
    .locals 4
    .parameter "arg1"

    .prologue
    .line 518
    monitor-enter p0

    .line 519
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

    .line 520
    :cond_0
    monitor-exit p0

    .line 547
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 524
    .local v2, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    if-nez v2, :cond_2

    .line 525
    monitor-exit p0

    goto :goto_0

    .line 546
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 528
    .restart local v2       #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_2
    :try_start_1
    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    .line 530
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

    .line 531
    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    .line 534
    :cond_3
    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_4

    .line 536
    :try_start_2
    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMusicPluginService;->startPluginActivity()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 540
    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 537
    :catch_0
    move-exception v1

    .line 538
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 542
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    if-eqz v0, :cond_5

    .line 543
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;Z)Z

    .line 546
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
    .line 1775
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1776
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/music/MediaPlaybackService;->showPluginToast(Ljava/lang/String;I)V

    .line 1778
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
    .line 812
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 814
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 815
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

    .line 816
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

    .line 820
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->pluginTrackDetailsUpdated(ILandroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 863
    monitor-enter p0

    .line 864
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 866
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 871
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 872
    return-void

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 871
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
    .line 875
    monitor-enter p0

    .line 876
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 878
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 883
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 884
    return-void

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 883
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

    .line 710
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v0, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 713
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

    .line 715
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 716
    const-string v0, "com.htc.music.plugin.metachanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 717
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.changeart"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_2
    const-string v0, "com.htc.music.plugin.statechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 720
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :cond_3
    const-string v0, "com.htc.music.plugin.playbackcomplete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 722
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 723
    :cond_4
    const-string v0, "com.htc.music.plugin.queuechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 725
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 726
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 727
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 728
    :cond_5
    const-string v0, "com.htc.music.plugin.statechanged.buffering"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 729
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.playstatechanged"

    const-string v2, "buffering"

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 730
    :cond_6
    const-string v0, "com.htc.music.plugin.statechanged.waiting"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 731
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.playstatechanged"

    const-string v2, "waiting"

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 732
    :cond_7
    const-string v0, "com.htc.music.plugin.playnext"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 733
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->next(Z)V

    goto/16 :goto_0

    .line 734
    :cond_8
    const-string v0, "com.htc.music.pluginservicebinded"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 735
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.pluginservicebinded"

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 737
    :cond_9
    const-string v0, "[MusicPluginManager]"

    const-string v1, "unknown plugin notify action"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 740
    :cond_a
    const-string v0, "[MusicPluginManager]"

    const-string v1, "class name not match."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public position()J
    .locals 3

    .prologue
    .line 927
    monitor-enter p0

    .line 928
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 930
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

    .line 935
    :goto_0
    return-wide v1

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 935
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 936
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
    .line 887
    monitor-enter p0

    .line 888
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 890
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->prev(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 895
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 896
    return-void

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 895
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
    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    const-string v7, "[MusicPluginManager]"

    const-string v8, "refreshPlugins + "

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-nez v7, :cond_0

    .line 133
    monitor-exit p0

    .line 214
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "AddMusicPluginServices"

    invoke-static {v7, v8}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/htc/opensense/plugin/Plugin;

    move-result-object v6

    .line 137
    .local v6, plugins:[Lcom/htc/opensense/plugin/Plugin;
    if-nez v6, :cond_1

    .line 138
    const-string v7, "[MusicPluginManager]"

    const-string v8, "PluginRegistryHelper.getPlugins return null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    monitor-exit p0

    goto :goto_0

    .line 213
    .end local v6           #plugins:[Lcom/htc/opensense/plugin/Plugin;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 142
    .restart local v6       #plugins:[Lcom/htc/opensense/plugin/Plugin;
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

    invoke-virtual {v7}, Lcom/htc/opensense/plugin/Plugin;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

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

    invoke-virtual {v7}, Lcom/htc/opensense/plugin/Plugin;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

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
    const-string v7, "[MusicPluginManager]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "plugin name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/Plugin;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    aget-object v7, v5, v2

    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/htc/opensense/plugin/Plugin;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginClass(Ljava/lang/String;)V

    .line 191
    aget-object v7, v5, v2

    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/htc/opensense/plugin/Plugin;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginDescription(Ljava/lang/String;)V

    .line 192
    aget-object v7, v5, v2

    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/htc/opensense/plugin/Plugin;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginPackage(Ljava/lang/String;)V

    .line 193
    aget-object v7, v5, v2

    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/htc/opensense/plugin/Plugin;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginName(Ljava/lang/String;)V

    .line 195
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

    .line 197
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    aget-object v8, v5, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 203
    .end local v3           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_9
    iput-object v5, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 204
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_a

    .line 205
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    array-length v7, v7

    iput v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    .line 209
    :goto_5
    const/4 v6, 0x0

    .line 210
    const/4 v5, 0x0

    .line 212
    const-string v7, "[MusicPluginManager]"

    const-string v8, "refreshPlugins - "

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    monitor-exit p0

    goto/16 :goto_0

    .line 207
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
    .line 590
    monitor-enter p0

    .line 591
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge v1, v2, :cond_2

    .line 592
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    .line 594
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMusicPluginService;->unregisterCallback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 600
    :cond_0
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 601
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

    .line 602
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/MediaPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 604
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->reset()V

    .line 605
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 597
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

    .line 616
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 608
    :cond_2
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 609
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 610
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 611
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    .line 612
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 613
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 614
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    .line 615
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z

    .line 616
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 617
    return-void
.end method

.method public seek(J)J
    .locals 3
    .parameter "pos"

    .prologue
    .line 940
    monitor-enter p0

    .line 941
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 943
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

    .line 948
    :goto_0
    return-wide v1

    .line 944
    :catch_0
    move-exception v0

    .line 945
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 948
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 949
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
    .line 1781
    monitor-enter p0

    .line 1782
    :try_start_0
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    .line 1783
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

    .line 1784
    monitor-exit p0

    .line 1785
    return-void

    .line 1784
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
    .line 1113
    monitor-enter p0

    .line 1114
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1116
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->setQueuePosition(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1121
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1122
    return-void

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1121
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
    .line 1034
    monitor-enter p0

    .line 1035
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1037
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->setRepeatMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1042
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1043
    return-void

    .line 1038
    :catch_0
    move-exception v0

    .line 1039
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1042
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
    .line 1008
    monitor-enter p0

    .line 1009
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1011
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->setShuffleMode(I)V

    .line 1012
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1017
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1018
    return-void

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1017
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
    .line 1072
    monitor-enter p0

    .line 1073
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1075
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->setVolume(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1080
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1081
    return-void

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1080
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
    .line 851
    monitor-enter p0

    .line 852
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 854
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->stop(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 859
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 860
    return-void

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 859
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopActivePlugin()V
    .locals 4

    .prologue
    .line 635
    monitor-enter p0

    .line 637
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    if-eqz v1, :cond_0

    .line 638
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 660
    :try_start_1
    const-string v1, "[MusicPluginManager]"

    const-string v2, "mCurrentPlugin == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 639
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    :goto_0
    return-void

    .line 642
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

    .line 643
    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->pause()V

    .line 645
    :cond_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->close()V

    .line 646
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->unregisterCallback()V

    .line 647
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

    .line 648
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$800(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 650
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1, v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$802(Lcom/htc/music/MusicPluginManager$MusicPlugin;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 651
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1, v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$202(Lcom/htc/music/MusicPluginManager$MusicPlugin;Lcom/htc/music/IMusicPluginService;)Lcom/htc/music/IMusicPluginService;

    .line 652
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 653
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 660
    :try_start_3
    const-string v1, "[MusicPluginManager]"

    const-string v2, "mCurrentPlugin == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 663
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 660
    :try_start_5
    const-string v1, "[MusicPluginManager]"

    const-string v2, "mCurrentPlugin == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 656
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 657
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 658
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

    .line 660
    :try_start_7
    const-string v1, "[MusicPluginManager]"

    const-string v2, "mCurrentPlugin == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    goto :goto_1

    .line 660
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_1
    move-exception v1

    const-string v2, "[MusicPluginManager]"

    const-string v3, "mCurrentPlugin == null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 660
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public stopHandlerThread()V
    .locals 1

    .prologue
    .line 620
    monitor-enter p0

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 626
    :cond_0
    monitor-exit p0

    .line 627
    return-void

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
