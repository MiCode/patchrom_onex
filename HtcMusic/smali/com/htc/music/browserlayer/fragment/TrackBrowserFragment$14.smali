.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$14;
.super Ljava/lang/Object;
.source "TrackBrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2738
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$14;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 2740
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$14;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2741
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 2744
    :goto_0
    return-void

    .line 2742
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$14;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/htc/music/HtcMusic;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
