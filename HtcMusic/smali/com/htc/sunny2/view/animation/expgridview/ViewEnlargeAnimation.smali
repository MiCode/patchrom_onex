.class public Lcom/htc/sunny2/view/animation/expgridview/ViewEnlargeAnimation;
.super Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;
.source "ViewEnlargeAnimation.java"


# instance fields
.field mStartPosition:Lcom/htc/sunny2/view/Vector3F;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/view/SView;Lcom/htc/sunny2/view/Vector3F;)V
    .locals 2
    .parameter "v"
    .parameter "startPosition"

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/animation/expgridview/ViewEnlargeAnimation;->addSView(Lcom/htc/sunny2/view/SView;)V

    .line 18
    if-nez p2, :cond_0

    .line 19
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v1, v1, v1}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewEnlargeAnimation;->mStartPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_0
    iput-object p2, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewEnlargeAnimation;->mStartPosition:Lcom/htc/sunny2/view/Vector3F;

    goto :goto_0
.end method

.method private enlargeAnimationController(Lcom/htc/sunny2/view/Vector3F;)Lcom/htc/sunny2/view/animation/SAnimationController;
    .locals 4
    .parameter "viewPos"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 54
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v1, v2, v2, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v2, v3, v3, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 57
    iget-object v1, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewEnlargeAnimation;->mStartPosition:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 59
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 60
    sget-object v1, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEOUT_QUARTIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 61
    invoke-virtual {v0, p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 64
    return-object v0
.end method


# virtual methods
.method enlarge()V
    .locals 4

    .prologue
    .line 40
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 41
    iget-object v3, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/view/SView;

    .line 43
    .local v1, tempSView:Lcom/htc/sunny2/view/SView;
    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v2

    .line 45
    .local v2, viewPos:Lcom/htc/sunny2/view/Vector3F;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 46
    invoke-direct {p0, v2}, Lcom/htc/sunny2/view/animation/expgridview/ViewEnlargeAnimation;->enlargeAnimationController(Lcom/htc/sunny2/view/Vector3F;)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 40
    .end local v2           #viewPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v1           #tempSView:Lcom/htc/sunny2/view/SView;
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/view/animation/expgridview/ViewEnlargeAnimation;->reset()V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-super {p0}, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->onStart()V

    .line 36
    invoke-virtual {p0}, Lcom/htc/sunny2/view/animation/expgridview/ViewEnlargeAnimation;->enlarge()V

    goto :goto_0
.end method
