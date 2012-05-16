.class public Lcom/htc/sunny2/view/SSurfaceView;
.super Landroid/view/SurfaceView;
.source "SSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/htc/sunny2/RenderThread$EventListener;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/view/SSurfaceView$1;,
        Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;,
        Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;,
        Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;,
        Lcom/htc/sunny2/view/SSurfaceView$ReLayout;,
        Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

.field private mCamera:I

.field private mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

.field private mFirstTimeInit:Z

.field private mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mInitBackgroundResId:I

.field private mIsTouchEnabled:Z

.field private final mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

.field protected mRenderThread:Lcom/htc/sunny2/RenderThread;

.field private mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

.field private mRootNode:I

.field protected mSSurfaceViewOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field protected mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

.field private mScene:I

.field protected mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

.field protected mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

.field protected mSunnyContext:Lcom/htc/sunny2/SunnyContext;

.field protected mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

.field private mSunnyWindow:I

.field private mSurfacePixelFormat:I

.field private mViewPort:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 46
    const-string v0, "SSurfaceView"

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->TAG:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 53
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    .line 66
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    .line 68
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    .line 81
    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView;->init(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "initBackgroundResId"

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 46
    const-string v0, "SSurfaceView"

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->TAG:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 53
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    .line 66
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    .line 68
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SSurfaceView;->init(Landroid/content/Context;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const-string v0, "SSurfaceView"

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->TAG:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 53
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    .line 66
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    .line 68
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    .line 86
    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView;->init(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const-string v0, "SSurfaceView"

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->TAG:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 53
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    .line 66
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    .line 68
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    .line 91
    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView;->init(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method static synthetic access$300(Lcom/htc/sunny2/view/SSurfaceView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/view/SSurfaceView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mViewPort:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/view/SSurfaceView;)Lcom/htc/sunny2/view/SSurfaceView$ReLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/view/SSurfaceView;)Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/sunny2/view/SSurfaceView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SSurfaceView;->onSurfaceChangedIRT(II)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/view/SSurfaceView;->init(Landroid/content/Context;I)V

    .line 101
    return-void
.end method

.method private init(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "initBackgroundResId"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 104
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 107
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/view/SSurfaceView;->setInitBackgroundResource(I)V

    .line 108
    iput-boolean v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mFirstTimeInit:Z

    .line 110
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    .line 111
    new-instance v1, Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v1}, Lcom/htc/sunny2/SunnyContext;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    .line 113
    sget-boolean v1, Lcom/htc/sunny2/common/Constants;->FLAG_SENSE40a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    :goto_0
    iput v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSurfacePixelFormat:I

    .line 114
    sget-boolean v1, Lcom/htc/sunny2/common/Constants;->FLAG_SENSE40a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1, v5, v6, v5, v3}, Lcom/htc/sunny2/SunnyContext;->init(IIII)Z

    move-result v0

    .line 115
    .local v0, rs:Z
    :goto_1
    if-nez v0, :cond_2

    .line 116
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Create Sunny Context Fail"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    .end local v0           #rs:Z
    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1, v2, v2, v2, v3}, Lcom/htc/sunny2/SunnyContext;->init(IIII)Z

    move-result v0

    goto :goto_1

    .line 119
    .restart local v0       #rs:Z
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/Sunny2;->CreateWindowByContext(II)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    .line 125
    :goto_2
    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    if-nez v1, :cond_4

    .line 126
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t create SunnyWindow"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v1

    invoke-static {v1}, Lcom/htc/sunny2/Sunny2;->CreateWindow(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    goto :goto_2

    .line 129
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSurfacePixelFormat:I

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 131
    iput-boolean v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mIsTouchEnabled:Z

    .line 133
    new-instance v1, Lcom/htc/sunny2/RenderThread;

    const-string v2, "SunnyRenderThread"

    invoke-direct {v1, v2, p0}, Lcom/htc/sunny2/RenderThread;-><init>(Ljava/lang/String;Lcom/htc/sunny2/RenderThread$EventListener;)V

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    .line 134
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->beginThread()V

    .line 135
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->waitForRenderThreadReady()Z

    .line 136
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v6}, Lcom/htc/sunny2/RenderThread;->setPriority(I)V

    .line 137
    new-instance v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;-><init>(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;)V

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSSurfaceViewOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 140
    return-void
.end method

.method private onSurfaceChangedIRT(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    .line 233
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    .line 236
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mFirstTimeInit:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->setGlobalBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v0, p1, p2, v2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->invalidateGlobalBackground(IIZ)V

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mFirstTimeInit:Z

    .line 244
    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->Window_Render(I)V

    .line 254
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Lcom/htc/sunny2/view/SView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 397
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->onDestroy()V

    .line 162
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->endThread()V

    .line 166
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyContext;->deinit()V

    .line 168
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    .line 170
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 377
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    const/16 v1, 0x8

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 385
    :cond_1
    const/4 v0, 0x1

    .line 389
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnvironmentSnapShot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "rect"

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 427
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 425
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->getSnapShot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 427
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getEventDispatcher()Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    return-object v0
.end method

.method public getRenderThread()Lcom/htc/sunny2/RenderThread;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    return-object v0
.end method

.method public getSunnyContext()Lcom/htc/sunny2/SunnyContext;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    return-object v0
.end method

.method public getSunnyEnvironmentHandler()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v0

    return v0
.end method

.method public getSunnyWindow()I
    .locals 1

    .prologue
    .line 1216
    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 151
    const-string v0, "SSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->pauseRender()V

    .line 155
    :cond_0
    return-void
.end method

.method public onRenderStartIRT()Z
    .locals 8

    .prologue
    .line 262
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v4}, Lcom/htc/sunny2/SunnyContext;->runOnCurrentThread()Z

    .line 266
    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->Window_GetDefaultViewport(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mViewPort:I

    .line 268
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    invoke-virtual {v4}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v4

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->CreateScene(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mScene:I

    .line 269
    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mScene:I

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->Scene_GetRootNode(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRootNode:I

    .line 270
    new-instance v4, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget v5, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRootNode:I

    invoke-direct {v4, p0, v5}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;-><init>(Lcom/htc/sunny2/view/SSurfaceView;I)V

    iput-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    .line 272
    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mScene:I

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->Scene_GetDefaultCamera(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mCamera:I

    .line 273
    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mCamera:I

    const/high16 v5, 0x4270

    const/high16 v6, 0x4120

    const v7, 0x461c4000

    invoke-static {v4, v5, v6, v7}, Lcom/htc/sunny2/Sunny2;->Camera_2DIsometricSetup(IFFF)V

    .line 274
    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mViewPort:I

    iget v5, p0, Lcom/htc/sunny2/view/SSurfaceView;->mCamera:I

    invoke-static {v4, v5}, Lcom/htc/sunny2/Sunny2;->Viewport_LinkCamera(II)V

    .line 276
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v5, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 277
    new-instance v4, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    iget-object v5, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-direct {v4, p0, p0, v5}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;-><init>(Lcom/htc/sunny2/view/SSurfaceView;Ljava/lang/Object;Lcom/htc/sunny2/RenderThread;)V

    iput-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    .line 282
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 283
    .local v2, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 284
    .local v0, frame:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 285
    .local v3, width:I
    const/4 v1, 0x0

    .line 286
    .local v1, height:I
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 288
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 291
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 292
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v1}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->setup(Landroid/view/Surface;II)V

    .line 293
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->onProcessInterruptionIRT()V

    .line 296
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    if-eqz v4, :cond_2

    .line 297
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-interface {v4}, Lcom/htc/sunny2/RenderThread$EventListener;->onRenderStartIRT()Z

    .line 300
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public onRenderStopIRT()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 320
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    if-eqz v4, :cond_0

    .line 321
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-interface {v4}, Lcom/htc/sunny2/RenderThread$EventListener;->onRenderStopIRT()V

    .line 324
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v1

    .line 325
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 326
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v3

    .line 327
    .local v3, node:Lcom/htc/sunny2/SceneNode;
    instance-of v4, v3, Lcom/htc/sunny2/view/SView;

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 328
    check-cast v0, Lcom/htc/sunny2/view/SView;

    .line 329
    .local v0, child:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->onDetachedFromWindow()V

    .line 330
    invoke-virtual {v0, v5}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 331
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->removeView(Lcom/htc/sunny2/view/SView;)V

    .line 325
    .end local v0           #child:Lcom/htc/sunny2/view/SView;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 335
    .end local v3           #node:Lcom/htc/sunny2/SceneNode;
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->release()V

    .line 336
    iput-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    .line 338
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v4, v6, v5, v5}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->setup(Landroid/view/Surface;II)V

    .line 339
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->onProcessInterruptionIRT()V

    .line 341
    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->DestroyWindow(I)V

    .line 346
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->release()V

    .line 348
    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mScene:I

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->DestroyScene(I)V

    .line 349
    iput v5, p0, Lcom/htc/sunny2/view/SSurfaceView;->mScene:I

    .line 351
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v4}, Lcom/htc/sunny2/SunnyContext;->removeFromCurrentThread()V

    .line 352
    return-void
.end method

.method public onRenderToWindowIRT(I)V
    .locals 5
    .parameter "window"

    .prologue
    const/4 v4, 0x1

    .line 305
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getWidth()I

    move-result v1

    .line 306
    .local v1, width:I
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getHeight()I

    move-result v0

    .line 308
    .local v0, height:I
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mFirstTimeInit:Z

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView;->mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->setGlobalBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v2, v1, v0, v4}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->invalidateGlobalBackground(IIZ)V

    .line 314
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mFirstTimeInit:Z

    .line 316
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 143
    const-string v0, "SSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->resumeRender()V

    .line 146
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    .line 148
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 364
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mIsTouchEnabled:Z

    if-ne v2, v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 367
    :cond_0
    return v2
.end method

.method public refreshRenderOrder(Ljava/lang/String;)V
    .locals 2
    .parameter "szSceneIdentity"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 411
    :cond_0
    return-void
.end method

.method public removeView(Lcom/htc/sunny2/view/SView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 403
    :cond_0
    return-void
.end method

.method public set3DGlobalBackground(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 418
    :cond_0
    return-void
.end method

.method public setInitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "initBackgroundDrawable"

    .prologue
    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mInitBackgroundResId:I

    .line 194
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 195
    return-void
.end method

.method public setInitBackgroundResource(I)V
    .locals 2
    .parameter "initBackgroundResId"

    .prologue
    .line 173
    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mInitBackgroundResId:I

    if-ne p1, v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    .line 178
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SSurfaceView;->setInitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iput p1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mInitBackgroundResId:I

    goto :goto_0
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 431
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 432
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSSurfaceViewOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 433
    return-void
.end method

.method public setRenderThreadEventListener(Lcom/htc/sunny2/RenderThread$EventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    .line 258
    return-void
.end method

.method public setSnapShotListener(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->setListener(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;)V

    .line 361
    :cond_0
    return-void
.end method

.method public setTouchEnable(Z)V
    .locals 0
    .parameter "isEnable"

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mIsTouchEnabled:Z

    .line 356
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->setup(Landroid/view/Surface;II)V

    .line 216
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->runInterruptionIHT(Lcom/htc/sunny2/RenderThreadInterruption;)Z

    .line 218
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 210
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 222
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v0, v3, v2, v2}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->setup(Landroid/view/Surface;II)V

    .line 224
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->runInterruptionIHT(Lcom/htc/sunny2/RenderThreadInterruption;)Z

    .line 226
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mFirstTimeInit:Z

    .line 227
    iput-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView;->mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 228
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/view/SSurfaceView;->setWillNotDraw(Z)V

    .line 230
    return-void
.end method
