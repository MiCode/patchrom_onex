.class public Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;
.super Ljava/lang/Object;
.source "SunnySceneSnapShotHandler.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotIRT;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final TIMEOUT_SNAPSHOT:I

.field private mHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

.field private mSnapShotInProgress:Z

.field private mSnapShotInSync:Landroid/graphics/Bitmap;

.field private mSnapShotListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;)V
    .locals 2
    .parameter "host"

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "SunnySceneSnapShotHandler"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->LOG_TAG:Ljava/lang/String;

    .line 17
    const/16 v0, 0x40

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->TIMEOUT_SNAPSHOT:I

    .line 18
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    .line 19
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotInProgress:Z

    .line 22
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotInSync:Landroid/graphics/Bitmap;

    .line 27
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    .line 28
    return-void
.end method

.method static synthetic access$002(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotInProgress:Z

    return p1
.end method


# virtual methods
.method public getSnapShot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "rect"

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    if-nez v5, :cond_0

    move-object v1, v0

    .line 84
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 46
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v3

    .line 47
    .local v3, renderThread:Lcom/htc/sunny2/RenderThread;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    move-object v1, v0

    .line 48
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 50
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;->getEventDispatcher()Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    move-result-object v2

    .line 51
    .local v2, eventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;
    if-nez v2, :cond_3

    move-object v1, v0

    .line 52
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 54
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    const/4 v5, 0x6

    invoke-virtual {v2, v5, p1}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 55
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;

    if-nez v5, :cond_5

    .line 60
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler$1;

    invoke-direct {v5, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler$1;-><init>(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 78
    .local v4, threadTimeout:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 79
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotInSync:Landroid/graphics/Bitmap;

    .line 80
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotInProgress:Z

    .line 81
    :cond_4
    iget-boolean v5, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotInProgress:Z

    if-nez v5, :cond_4

    .line 82
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotInSync:Landroid/graphics/Bitmap;

    .end local v4           #threadTimeout:Ljava/lang/Thread;
    :cond_5
    move-object v1, v0

    .line 84
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    .line 36
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotInProgress:Z

    .line 38
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotInSync:Landroid/graphics/Bitmap;

    .line 39
    return-void
.end method

.method public onSnapShotIRT(Ljava/lang/Object;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 91
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    if-nez v2, :cond_0

    .line 106
    .end local p1
    :goto_0
    return-void

    .line 95
    .restart local p1
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mHost:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;->getSunnyWindow()I

    move-result v1

    .line 96
    .local v1, nSunnyWindow:I
    check-cast p1, Landroid/graphics/Rect;

    .end local p1
    invoke-static {v1, p1}, Lcom/htc/sunny2/Sunny2;->Window_GetSnapshot(ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;

    invoke-interface {v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;->onSnapShotIRT(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 102
    :cond_1
    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotInSync:Landroid/graphics/Bitmap;

    .line 103
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotInProgress:Z

    goto :goto_0
.end method

.method public setListener(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;

    .line 32
    return-void
.end method
