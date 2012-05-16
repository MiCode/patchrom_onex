.class Lcom/htc/music/carmode/CarTrackBrowseActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "CarTrackBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarTrackBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mUiHandler:Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$500(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mUiHandler:Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$500(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 443
    :cond_0
    return-void
.end method
