.class Lcom/htc/music/browserlayer/GenreBrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "GenreBrowserActivity.java"


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
    .line 278
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 283
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    invoke-virtual {v1, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->showSpinner(Z)V

    .line 303
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->access$300(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 304
    :cond_1
    :goto_1
    return-void

    .line 286
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 287
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->isAsyncQuerying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->showSpinner(Z)V

    goto :goto_0

    .line 289
    :cond_3
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isExternalStorageUnMount(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->removeDialog(I)V

    .line 295
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    invoke-virtual {v1, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->removeDialog(I)V

    .line 297
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearAlbumArtCache()V

    .line 298
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->access$200(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->finish()V

    goto :goto_1
.end method
