.class Lcom/htc/music/PropertyListActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "PropertyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/PropertyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/PropertyListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/PropertyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/htc/music/PropertyListActivity$3;->this$0:Lcom/htc/music/PropertyListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 345
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity$3;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isExternalStorageUnMount(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity$3;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mOneShot:Z
    invoke-static {v1}, Lcom/htc/music/PropertyListActivity;->access$600(Lcom/htc/music/PropertyListActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity$3;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 356
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity$3;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity$3;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 361
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity$3;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 362
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity$3;->this$0:Lcom/htc/music/PropertyListActivity;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1, v2}, Lcom/htc/music/PropertyListActivity;->access$502(Lcom/htc/music/PropertyListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 365
    :cond_3
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity$3;->this$0:Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v1}, Lcom/htc/music/PropertyListActivity;->finish()V

    goto :goto_0

    .line 357
    :catch_0
    move-exception v1

    goto :goto_1
.end method
