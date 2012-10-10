.class Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridPanningAction"
.end annotation


# static fields
.field public static final PANNING_ACTION_NAME:Ljava/lang/String; = "Panning"


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "host"

    .prologue
    .line 3301
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 3302
    const-string v0, "Panning"

    invoke-direct {p0, p2, v0}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3303
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 3330
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 5
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3307
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-nez v3, :cond_1

    .line 3324
    :cond_0
    :goto_0
    return v1

    .line 3310
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v3

    sget-object v4, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v3, v4, :cond_0

    .line 3313
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->update()V

    .line 3314
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getRelativeMovement()I

    move-result v0

    .line 3315
    .local v0, pos:I
    if-eqz v0, :cond_2

    .line 3316
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v3, v2, :cond_3

    .line 3317
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3, v1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(II)V

    :cond_2
    :goto_1
    move v1, v2

    .line 3324
    goto :goto_0

    .line 3320
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    neg-int v4, v0

    invoke-virtual {v3, v4, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(II)V

    goto :goto_1
.end method
