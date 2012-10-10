.class Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcFastScrollerRenderRequestAction"
.end annotation


# instance fields
.field private fastScrollerState:I

.field private requestRenderFramesCount:I

.field private shouldAddToRenderThread:Z

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3435
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 3436
    const-string v0, "HtcFastScrollerRenderRequestAction"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3431
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->fastScrollerState:I

    .line 3432
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->shouldAddToRenderThread:Z

    .line 3433
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->requestRenderFramesCount:I

    .line 3437
    return-void
.end method


# virtual methods
.method public needAddedToRenderThread()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3451
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->shouldAddToRenderThread:Z

    if-eqz v1, :cond_0

    .line 3452
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->shouldAddToRenderThread:Z

    .line 3453
    const/4 v0, 0x1

    .line 3455
    :cond_0
    return v0
.end method

.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 3469
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 1
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    .line 3460
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->requestRenderFramesCount:I

    if-lez v0, :cond_0

    .line 3461
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->requestRenderFramesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->requestRenderFramesCount:I

    .line 3462
    const/4 v0, 0x1

    .line 3464
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateFastScrollerState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3440
    if-eqz p1, :cond_1

    .line 3441
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->fastScrollerState:I

    if-nez v0, :cond_0

    .line 3442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->shouldAddToRenderThread:Z

    .line 3444
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->requestRenderFramesCount:I

    .line 3447
    :cond_1
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;->fastScrollerState:I

    .line 3448
    return-void
.end method
