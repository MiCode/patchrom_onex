.class public Lcom/htc/sunny2/widget/gridview/GridView$Cell;
.super Ljava/lang/Object;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Cell"
.end annotation


# instance fields
.field protected final defaultLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

.field protected idx:I

.field private mIsChild:Z

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;

.field protected viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

.field protected x:I

.field protected y:I


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 3168
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3161
    new-instance v0, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->defaultLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    .line 3164
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->idx:I

    .line 3165
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 3166
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 3169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 3170
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V
    .locals 3
    .parameter
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 3178
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3161
    new-instance v0, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->defaultLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    .line 3164
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->idx:I

    .line 3165
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 3166
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 3179
    instance-of v0, p2, Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v0, :cond_0

    .line 3180
    check-cast p2, Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .end local p2
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 3186
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->initViewItem()V

    .line 3187
    return-void

    .line 3183
    .restart local p2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t gey new GridViewItem by create()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;Z)V
    .locals 0
    .parameter
    .parameter "item"
    .parameter "isChild"

    .prologue
    .line 3174
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    .line 3175
    iput-boolean p3, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->mIsChild:Z

    .line 3176
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3259
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->recycle()V

    .line 3260
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3261
    return-void
.end method

.method height()I
    .locals 1

    .prologue
    .line 3241
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public initViewItem()V
    .locals 2

    .prologue
    .line 3190
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mChildNodeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mChildNodeCount:I

    .line 3191
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 3192
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->dispatchResourceCreation(Z)V

    .line 3193
    return-void
.end method

.method public isChild()Z
    .locals 1

    .prologue
    .line 3267
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->mIsChild:Z

    return v0
.end method

.method public link(ILcom/htc/sunny2/IMediaData;III)V
    .locals 10
    .parameter "index"
    .parameter "data"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v9, 0x1

    const/high16 v2, -0x8000

    .line 3197
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 3198
    .local v0, item:Lcom/htc/sunny2/widget/gridview/GridViewItem;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/SceneNode;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 3199
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->bindMediaData(ILcom/htc/sunny2/IMediaData;)V

    .line 3201
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/view/SView;->mWidth:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1400(Lcom/htc/sunny2/widget/gridview/GridView;)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 3202
    .local v8, measureW:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/view/SView;->mHeight:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1500(Lcom/htc/sunny2/widget/gridview/GridView;)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 3204
    .local v7, measureH:I
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getLayoutParams()Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    move-result-object v6

    .line 3205
    .local v6, lp:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;
    if-nez v6, :cond_0

    .line 3206
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->defaultLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setLayoutParamsWithoutLayout(Lcom/htc/sunny2/view/SViewGroup$LayoutParams;)V

    .line 3209
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #calls: Lcom/htc/sunny2/widget/gridview/GridView;->measureChild(Lcom/htc/sunny2/view/SView;II)V
    invoke-static {v1, v0, v8, v7}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1600(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;II)V

    .line 3211
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getMeasuredWidth()I

    move-result v4

    .line 3212
    .local v4, w:I
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getMeasuredHeight()I

    move-result v5

    .line 3214
    .local v5, h:I
    div-int/lit8 v1, v4, 0x2

    add-int/2addr v1, p3

    int-to-float v1, v1

    div-int/lit8 v2, v5, 0x2

    sub-int v2, p4, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->layout(FFFII)V

    .line 3216
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->idx:I

    .line 3217
    iput p3, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    .line 3218
    iput p4, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 3221
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1000(Lcom/htc/sunny2/widget/gridview/GridView;)Z

    move-result v1

    if-ne v1, v9, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1100(Lcom/htc/sunny2/widget/gridview/GridView;)I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 3222
    invoke-virtual {v0, v9}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 3227
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1700(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3228
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mScreenCacheHandler:Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1700(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/htc/sunny2/widget/gridview/ScreenCacheHandler;->onTagSnapShotFlagIRT(ILcom/htc/sunny2/SceneNode;Lcom/htc/sunny2/SceneNode;)V

    .line 3229
    :cond_1
    return-void

    .line 3225
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3249
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v0, :cond_0

    .line 3250
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->dispatchResourceCreation(Z)V

    .line 3251
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 3252
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->release()V

    .line 3253
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .line 3254
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mChildNodeCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mChildNodeCount:I

    .line 3256
    :cond_0
    return-void
.end method

.method public setPosition(III)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 3238
    return-void
.end method

.method public unlink()V
    .locals 2

    .prologue
    .line 3232
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 3233
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->unbindMediaData()V

    .line 3234
    return-void
.end method

.method width()I
    .locals 1

    .prologue
    .line 3245
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getWidth()I

    move-result v0

    goto :goto_0
.end method
