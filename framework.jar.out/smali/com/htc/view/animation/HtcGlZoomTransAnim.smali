.class public Lcom/htc/view/animation/HtcGlZoomTransAnim;
.super Lcom/htc/view/animation/HtcBaseGlTransAnim;
.source "HtcGlZoomTransAnim.java"


# instance fields
.field private mAnimDuration:J

.field protected mPointX:I

.field protected mPointY:I

.field private final mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private final mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x5dd

    const/4 v2, 0x2

    const/4 v0, -0x1

    .line 41
    invoke-direct {p0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>()V

    .line 16
    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    .line 17
    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    .line 21
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    .line 24
    const-string v0, "TRANSIT_ZOOM_ENTER"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 28
    const-string v0, "TRANSIT_ZOOM_EXIT"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 42
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setAnimationType(I)V

    .line 44
    iget-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    invoke-super {p0, v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x5dd

    const/4 v2, 0x2

    const/4 v0, -0x1

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    .line 17
    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    .line 21
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    .line 24
    const-string v0, "TRANSIT_ZOOM_ENTER"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 28
    const-string v0, "TRANSIT_ZOOM_EXIT"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 35
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setAnimationType(I)V

    .line 37
    iget-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    invoke-super {p0, v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 38
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x5dd

    const/4 v2, 0x2

    const/4 v0, -0x1

    .line 123
    invoke-direct {p0, p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/os/Parcel;)V

    .line 16
    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    .line 17
    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    .line 21
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    .line 24
    const-string v0, "TRANSIT_ZOOM_ENTER"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 28
    const-string v0, "TRANSIT_ZOOM_EXIT"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    .line 128
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setAnimationType(I)V

    .line 130
    iget-wide v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mAnimDuration:J

    invoke-super {p0, v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 131
    return-void
.end method


# virtual methods
.method public encodeSpecificParamsToArray()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 87
    .local v0, mGlAttributeSet:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getZoomPoint()Landroid/graphics/Point;

    move-result-object v1

    .line 88
    .local v1, point:Landroid/graphics/Point;
    if-eqz v1, :cond_0

    .line 89
    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 90
    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 96
    :goto_0
    return-object v0

    .line 92
    :cond_0
    const-string v2, "0"

    aput-object v2, v0, v3

    .line 93
    const-string v2, "0"

    aput-object v2, v0, v4

    goto :goto_0
.end method

.method public getZoomPoint()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 75
    iget v1, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    if-ltz v1, :cond_0

    .line 76
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    iget v2, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public monitorTransAnim(Z)V
    .locals 2
    .parameter "isStart"

    .prologue
    const/4 v1, 0x3

    .line 101
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    if-eqz p1, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 108
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 114
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0
.end method

.method public setOpenOrClose(Z)V
    .locals 2
    .parameter "isOpen"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setOpenOrClose(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getTransitType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 56
    const-wide/16 v0, 0x0

    invoke-super {p0, v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 58
    :cond_0
    return-void
.end method

.method public setZoomPoint(Landroid/graphics/Point;)V
    .locals 1
    .parameter "_point"

    .prologue
    .line 63
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    .line 64
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    .line 68
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->writeToParcel(Landroid/os/Parcel;I)V

    .line 136
    iget v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Lcom/htc/view/animation/HtcGlZoomTransAnim;->mPointY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return-void
.end method
