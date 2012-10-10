.class Lcom/htc/music/widget/gridview/MusicGridViewItem$1;
.super Ljava/lang/Object;
.source "MusicGridViewItem.java"

# interfaces
.implements Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/widget/gridview/MusicGridViewItem;->createSAnimationController(Lcom/htc/sunny2/view/SView;I)Lcom/htc/sunny2/view/animation/SAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewItem;

.field final synthetic val$view:Lcom/htc/sunny2/view/SView;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewItem;Lcom/htc/sunny2/view/SView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 713
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iput-object p2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;->val$view:Lcom/htc/sunny2/view/SView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;->val$view:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;->val$view:Lcom/htc/sunny2/view/SView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 726
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;->val$view:Lcom/htc/sunny2/view/SView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 719
    return-void
.end method
