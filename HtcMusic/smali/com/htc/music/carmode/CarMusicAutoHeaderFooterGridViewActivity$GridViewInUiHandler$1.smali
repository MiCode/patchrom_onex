.class Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler$1;
.super Ljava/lang/Object;
.source "CarMusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler$1;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 0

    .prologue
    .line 621
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler$1;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;->mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 617
    return-void
.end method
