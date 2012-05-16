.class Lcom/htc/music/carmode/CarGliderAdapter$2;
.super Ljava/lang/Object;
.source "CarGliderAdapter.java"

# interfaces
.implements Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarGliderAdapter;->animate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarGliderAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarGliderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lcom/htc/music/carmode/CarGliderAdapter$2;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 788
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter$2;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->access$600(Lcom/htc/music/carmode/CarGliderAdapter;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter$2;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarGliderAdapter;->changeLayout(Z)V

    .line 791
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter$2;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->access$600(Lcom/htc/music/carmode/CarGliderAdapter;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableScroll(Z)V

    .line 793
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter$2;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->access$600(Lcom/htc/music/carmode/CarGliderAdapter;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/htc/music/carmode/CarGliderAdapter$2;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->access$600(Lcom/htc/music/carmode/CarGliderAdapter;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableScroll(Z)V

    .line 785
    :cond_0
    return-void
.end method
