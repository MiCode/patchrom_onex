.class Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "ExpandableGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpGridItemAlignAction"
.end annotation


# static fields
.field public static final ALIGN_BOTTOM_COLLAPSE:I = 0x1

.field public static final ALIGN_BOTTOM_DELETE:I = 0x2

.field public static final ALIGN_EXPANDED_PARENT_UPPER:I = 0x3

.field public static final ALIGN_TOP:I = 0x0

.field public static final LOG_TAG:Ljava/lang/String; = "ExpGridItemAlignAction"


# instance fields
.field private mAlignMode:I

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "szName"

    .prologue
    .line 3001
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 3002
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "host"
    .parameter "szName"
    .parameter "alignMode"

    .prologue
    .line 2994
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    .line 2995
    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2996
    iput p4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->mAlignMode:I

    .line 2997
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 3050
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 6
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 3007
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->update()V

    .line 3008
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getRelativeMovement()I

    move-result v0

    .line 3010
    .local v0, pos:I
    if-eqz v0, :cond_2

    .line 3012
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v3, v1, :cond_1

    .line 3013
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v3, v2, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->onScrollMotionIRT(II)V

    .line 3043
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    :goto_1
    return v1

    .line 3016
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    neg-int v4, v0

    invoke-virtual {v3, v4, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->onScrollMotionIRT(II)V

    goto :goto_0

    .line 3022
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #setter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z
    invoke-static {v3, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$202(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Z)Z

    .line 3023
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->reportScrollStateChange(I)V

    .line 3025
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->mAlignMode:I

    if-nez v3, :cond_3

    .line 3026
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #setter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z
    invoke-static {v3, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$2102(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Z)Z

    .line 3027
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1800(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3028
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1800(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I
    invoke-static {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$400(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;->onPrepareReadyIRT(I)V

    goto :goto_0

    .line 3031
    :cond_3
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->mAlignMode:I

    if-ne v3, v5, :cond_4

    .line 3032
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #setter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAnimationRunning:Z
    invoke-static {v3, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$002(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Z)Z

    .line 3033
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #setter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z
    invoke-static {v3, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$2102(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Z)Z

    .line 3034
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1800(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3035
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1800(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOriginalDeleteAllParentIdx:I
    invoke-static {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1900(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAdjustedDeleteAllParentIdx:I
    invoke-static {v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$2000(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;->onDeleteAllChildsReadyIRT(II)V

    goto :goto_0

    .line 3038
    :cond_4
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->mAlignMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 3039
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #setter for: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCollapseChildType:I
    invoke-static {v3, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$1402(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)I

    .line 3040
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #calls: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->doFakeOnLayout(I)V
    invoke-static {v3, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$600(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 3043
    goto :goto_1
.end method
