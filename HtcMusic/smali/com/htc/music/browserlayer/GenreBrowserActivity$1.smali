.class Lcom/htc/music/browserlayer/GenreBrowserActivity$1;
.super Ljava/lang/Object;
.source "GenreBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 262
    const-string v0, "[GenreBrowserActivity]"

    const-string v1, "MediaPlaybackService: onServiceConnected..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity;->mNeedBindSerive:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->access$000(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    const-string v0, "[GenreBrowserActivity]"

    const-string v1, "osc, mNeedBindSerive is false!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/browserlayer/GenreBrowserActivity;->mIsSeriveBinded:Z
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->access$102(Lcom/htc/music/browserlayer/GenreBrowserActivity;Z)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 274
    const-string v0, "[GenreBrowserActivity]"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method
