.class public Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;
.super Lcom/htc/view/animation/HtcBaseGlTransAnim;
.source "HtcGlSwipeCubicTransAnim.java"


# static fields
.field public static final TRANSIT_DIRECTION_LEFT:I = 0x1

.field public static final TRANSIT_DIRECTION_RIGHT:I


# instance fields
.field private final mAnimDuration:J

.field private mDirection:I

.field private final mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private final mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    .line 46
    invoke-direct {p0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    .line 23
    iput-wide v4, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mAnimDuration:J

    .line 26
    const-string v0, "TRANSIT_SWIPE_CUBIC_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 30
    const-string v0, "TRANSIT_SWIPE_CUBIC_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 47
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->setAnimationType(I)V

    .line 49
    invoke-super {p0, v4, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    .line 23
    iput-wide v4, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mAnimDuration:J

    .line 26
    const-string v0, "TRANSIT_SWIPE_CUBIC_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 30
    const-string v0, "TRANSIT_SWIPE_CUBIC_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 40
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->setAnimationType(I)V

    .line 42
    invoke-super {p0, v4, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    .line 116
    invoke-direct {p0, p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/os/Parcel;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    .line 23
    iput-wide v4, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mAnimDuration:J

    .line 26
    const-string v0, "TRANSIT_SWIPE_CUBIC_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 30
    const-string v0, "TRANSIT_SWIPE_CUBIC_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    .line 118
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->setAnimationType(I)V

    .line 120
    invoke-super {p0, v4, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 121
    return-void
.end method


# virtual methods
.method public encodeSpecificParamsToArray()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-array v0, v3, [Ljava/lang/String;

    .line 82
    .local v0, mGlAttributeSet:[Ljava/lang/String;
    iget v1, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    if-nez v1, :cond_1

    .line 84
    const-string/jumbo v1, "right"

    aput-object v1, v0, v2

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    iget v1, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    if-ne v1, v3, :cond_0

    .line 88
    const-string/jumbo v1, "left"

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    return v0
.end method

.method public monitorTransAnim(Z)V
    .locals 2
    .parameter "isStart"

    .prologue
    const/4 v1, 0x3

    .line 96
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    if-eqz p1, :cond_3

    .line 100
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 101
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 107
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mSwipeCubicExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0
.end method

.method public setDirection(I)V
    .locals 2
    .parameter "direction"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 55
    if-nez p1, :cond_0

    .line 56
    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    .line 69
    :goto_0
    return-void

    .line 57
    :cond_0
    if-ne p1, v1, :cond_1

    .line 58
    iput v1, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    goto :goto_0

    .line 61
    :cond_1
    iput v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    iget v0, p0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->mDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return-void
.end method
