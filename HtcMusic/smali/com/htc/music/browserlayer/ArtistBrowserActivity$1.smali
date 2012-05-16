.class Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;
.super Ljava/lang/Object;
.source "ArtistBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$000(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlaybackService: onServiceConnected..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mNeedBindSerive:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$100(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$000(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "osc, mNeedBindSerive is false!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mIsSeriveBinded:Z
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$202(Lcom/htc/music/browserlayer/ArtistBrowserActivity;Z)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$000(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method
