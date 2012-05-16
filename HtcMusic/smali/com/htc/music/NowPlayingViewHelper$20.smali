.class Lcom/htc/music/NowPlayingViewHelper$20;
.super Ljava/lang/Object;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 2740
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$20;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$20;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$3500(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2743
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$20;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$3500(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->notifyDataSetChanged()V

    .line 2746
    :goto_0
    return-void

    .line 2745
    :cond_0
    const-string v0, "[NowPlayingViewHelper]"

    const-string v1, "mRefreshListRunnable()...mPluginAdapter is null...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
