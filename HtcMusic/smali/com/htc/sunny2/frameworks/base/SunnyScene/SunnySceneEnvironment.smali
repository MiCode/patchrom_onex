.class public Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;
.super Lcom/htc/sunny2/view/SSurfaceView;
.source "SunnySceneEnvironment.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyEnvironmentPass;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyEnvironmentAccess;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mEnable2Pane:Z

.field private mIsPaneRight:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;)V

    .line 25
    const-string v0, "SunnySceneEnvironment"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->LOG_TAG:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mEnable2Pane:Z

    .line 27
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mIsPaneRight:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const-string v0, "SunnySceneEnvironment"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->LOG_TAG:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mEnable2Pane:Z

    .line 27
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mIsPaneRight:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const-string v0, "SunnySceneEnvironment"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->LOG_TAG:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mEnable2Pane:Z

    .line 27
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mIsPaneRight:Z

    .line 39
    return-void
.end method


# virtual methods
.method public enableSunnyEnvTouchEvent(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setTouchEnable(Z)V

    .line 118
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mEnable2Pane:Z

    iget-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mIsPaneRight:Z

    invoke-static {v1, v2, v3}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->onMeasuredWidthAndHeight(Landroid/content/Context;ZZ)[I

    move-result-object v0

    .line 57
    .local v0, nDimension:[I
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setMeasuredDimension(II)V

    .line 58
    return-void
.end method

.method public putToStage(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V
    .locals 2
    .parameter "scene"

    .prologue
    .line 91
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/sunny2/view/SView;

    if-eqz v1, :cond_1

    .line 94
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 95
    .local v0, view:Lcom/htc/sunny2/view/SView;
    instance-of v1, v0, Lcom/htc/sunny2/widget/gridview/GridView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 96
    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridView;->setSnapShotHost(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShotHost;)V

    .line 97
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 99
    .end local v0           #view:Lcom/htc/sunny2/view/SView;
    :cond_1
    return-void
.end method

.method public removeFromStage(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V
    .locals 2
    .parameter "scene"

    .prologue
    .line 104
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/sunny2/view/SView;

    if-eqz v1, :cond_0

    .line 107
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 108
    .local v0, view:Lcom/htc/sunny2/view/SView;
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->removeView(Lcom/htc/sunny2/view/SView;)V

    .line 110
    .end local v0           #view:Lcom/htc/sunny2/view/SView;
    :cond_0
    return-void
.end method

.method public setPaneConfig(ZZ)V
    .locals 0
    .parameter "bEnable2Pane"
    .parameter "bIsPaneRight"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mEnable2Pane:Z

    .line 43
    iput-boolean p2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mIsPaneRight:Z

    .line 44
    return-void
.end method

.method public setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 0
    .parameter "displayControl"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 63
    return-void
.end method

.method public sunnyContext()Lcom/htc/sunny2/SunnyContext;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v0

    return-object v0
.end method

.method public sunnyHandler()I
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getSunnyEnvironmentHandler()I

    move-result v0

    return v0
.end method

.method public sunnyHost()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method
