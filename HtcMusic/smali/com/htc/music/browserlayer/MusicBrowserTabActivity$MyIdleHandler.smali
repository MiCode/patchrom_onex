.class Lcom/htc/music/browserlayer/MusicBrowserTabActivity$MyIdleHandler;
.super Ljava/lang/Object;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyIdleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;


# direct methods
.method private constructor <init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$MyIdleHandler;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1569
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$MyIdleHandler;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1573
    const-string v1, "[MusicBrowserTabActivity]"

    const-string v2, "browsertab, MyIdleHandler receive queueIdle"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$MyIdleHandler;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    #getter for: Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mDestroyed:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->access$100(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1583
    :goto_0
    return v3

    .line 1579
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$MyIdleHandler;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    #getter for: Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->access$700(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2ee1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1580
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$MyIdleHandler;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1581
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$MyIdleHandler;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    #getter for: Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->access$700(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
