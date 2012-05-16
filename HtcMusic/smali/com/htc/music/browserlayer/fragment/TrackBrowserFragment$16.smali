.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$16;
.super Ljava/lang/Object;
.source "TrackBrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->initButtonsPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

.field final synthetic val$parent:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4102
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$16;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iput-object p2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$16;->val$parent:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 4104
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$16;->val$parent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4105
    return-void
.end method
