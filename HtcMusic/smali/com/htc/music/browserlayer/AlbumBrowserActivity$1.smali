.class Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 315
    const-string v0, "[AlbumBrowserActivity]"

    const-string v1, "MediaPlaybackService: onServiceConnected..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mNeedBindSerive:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$100(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    const-string v0, "[AlbumBrowserActivity]"

    const-string v1, "osc, mNeedBindSerive is false!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mIsSeriveBinded:Z
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$202(Lcom/htc/music/browserlayer/AlbumBrowserActivity;Z)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 328
    const-string v0, "[AlbumBrowserActivity]"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method
