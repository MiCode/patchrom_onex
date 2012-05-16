.class public Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;
.super Lcom/htc/sunny2/view/animation/SAnimationController;
.source "MultiViewAnimationSet.java"

# interfaces
.implements Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;


# instance fields
.field private mAnimationEndCount:I

.field protected mSViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/view/SView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mAnimationEndCount:I

    .line 19
    return-void
.end method


# virtual methods
.method protected addSView(Lcom/htc/sunny2/view/SView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method protected addSView(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/sunny2/view/SView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, list:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/sunny2/view/SView;>;"
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    return-void
.end method

.method public animate()V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->isValidAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 47
    invoke-super {p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->animate()V

    .line 49
    :cond_0
    return-void
.end method

.method public isEnded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0}, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->isValidAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 39
    invoke-super {p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v0

    .line 41
    :cond_0
    return v0
.end method

.method protected isValidAnimation()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mAnimationEndCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mAnimationEndCount:I

    .line 31
    iget v0, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mAnimationEndCount:I

    iget-object v1, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 34
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mAnimationEndCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 26
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->isValidAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 55
    invoke-super {p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->start()V

    .line 58
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mAnimationEndCount:I

    .line 59
    invoke-virtual {p0}, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->onStart()V

    .line 60
    return-void
.end method
