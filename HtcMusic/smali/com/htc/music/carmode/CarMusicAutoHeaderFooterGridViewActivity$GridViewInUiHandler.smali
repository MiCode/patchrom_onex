.class Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;
.super Landroid/os/Handler;
.source "CarMusicAutoHeaderFooterGridViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GridViewInUiHandler"
.end annotation


# instance fields
.field mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V
    .locals 0
    .parameter "gridView"

    .prologue
    .line 606
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 607
    iput-object p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;->mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    .line 608
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 611
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;->mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;->mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    new-instance v0, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;->mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    .line 613
    .local v0, introAnimDropIn:Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;
    new-instance v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler$1;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler$1;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 623
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;->mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 625
    .end local v0           #introAnimDropIn:Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;
    :cond_0
    return-void
.end method
