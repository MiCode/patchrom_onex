.class Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/GridView$GridViewItemInfoGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollerItemInfoGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/widget/gridview/GridView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    return-void
.end method


# virtual methods
.method public getBottomBouncePosition()I
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/view/SView;->mPaddingBottom:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->access$300(Lcom/htc/sunny2/widget/gridview/GridView;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v1

    add-int/2addr v0, v1

    .line 352
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/view/SView;->mPaddingRight:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->access$400(Lcom/htc/sunny2/widget/gridview/GridView;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFirstVisibleItemIndex()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    return v0
.end method

.method public getFirstVisibleItemOffset()I
    .locals 3

    .prologue
    .line 321
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 322
    .local v0, first:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 323
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 324
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 330
    :goto_0
    return v1

    .line 327
    :cond_0
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    neg-int v1, v1

    goto :goto_0

    .line 330
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    return v0
.end method

.method public getItemLength(I)I
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 301
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 302
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 303
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v2, v1, :cond_1

    .line 304
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v1

    .line 311
    :cond_0
    :goto_0
    return v1

    .line 307
    :cond_1
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v1

    goto :goto_0
.end method

.method public getItemSpacing()I
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    .line 295
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    goto :goto_0
.end method

.method public getItemsInASet()I
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 256
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    goto :goto_0
.end method

.method public getLastVisibleItemIndex()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    return v0
.end method

.method public getLastVisibleItemOffset()I
    .locals 3

    .prologue
    .line 271
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 272
    .local v0, last:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 273
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 274
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 281
    :goto_0
    return v1

    .line 277
    :cond_0
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    neg-int v1, v1

    goto :goto_0

    .line 281
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTopBouncePosition()I
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/view/SView;->mPaddingTop:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->access$100(Lcom/htc/sunny2/widget/gridview/GridView;)I

    move-result v0

    .line 343
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/view/SView;->mPaddingLeft:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->access$200(Lcom/htc/sunny2/widget/gridview/GridView;)I

    move-result v0

    goto :goto_0
.end method

.method public getViewPortLength()I
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    .line 265
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollerItemInfoGetter;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    goto :goto_0
.end method
