.class Lcom/htc/music/HtcMusic$NonUiHandler$3;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic$NonUiHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

.field final synthetic val$len:I


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic$NonUiHandler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6002
    iput-object p1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$3;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iput p2, p0, Lcom/htc/music/HtcMusic$NonUiHandler$3;->val$len:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6005
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6006
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6008
    iget-object v1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$3;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    const-class v2, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6010
    const-string v2, "queuelen"

    iget v1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$3;->val$len:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6012
    iget-object v1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$3;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v1, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 6013
    iget-object v1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$3;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic;->finish()V

    .line 6016
    iget-object v1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$3;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v1, v3, v3}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V

    .line 6017
    return-void

    .line 6010
    :cond_0
    iget v1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$3;->val$len:I

    goto :goto_0
.end method
