.class final Lcom/htc/widget/HtcAbsListView2$CheckForTap;
.super Ljava/lang/Object;
.source "HtcAbsListView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView2;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAbsListView2;)V
    .locals 0
    .parameter

    .prologue
    .line 2368
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 2374
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v4, v4, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    if-nez v4, :cond_2

    .line 2375
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iput v7, v4, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2377
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v5, v5, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v6, v6, Lcom/htc/widget/HtcAdapterView2;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2378
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2379
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    const/4 v5, 0x0

    iput v5, v4, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 2381
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-boolean v4, v4, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    if-nez v4, :cond_5

    .line 2382
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    .line 2383
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2384
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcAbsListView2;->positionSelector(Landroid/view/View;)V

    .line 2385
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2387
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 2388
    .local v3, longPressTimeout:I
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAbsListView2;->isLongClickable()Z

    move-result v2

    .line 2390
    .local v2, longClickable:Z
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v4, v4, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 2391
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v4, v4, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2392
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    .line 2393
    if-eqz v2, :cond_3

    .line 2394
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2401
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 2402
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v4, v4, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    if-nez v4, :cond_1

    .line 2403
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    new-instance v5, Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;-><init>(Lcom/htc/widget/HtcAbsListView2;Lcom/htc/widget/HtcAbsListView2$1;)V

    iput-object v5, v4, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    .line 2405
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v4, v4, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;->rememberWindowAttachCount()V

    .line 2406
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v5, v5, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2415
    .end local v0           #child:Landroid/view/View;
    .end local v2           #longClickable:Z
    .end local v3           #longPressTimeout:I
    :cond_2
    :goto_1
    return-void

    .line 2396
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #longClickable:Z
    .restart local v3       #longPressTimeout:I
    :cond_3
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 2408
    :cond_4
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    goto :goto_1

    .line 2411
    .end local v2           #longClickable:Z
    .end local v3           #longPressTimeout:I
    :cond_5
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForTap;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    goto :goto_1
.end method
