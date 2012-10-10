.class Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;
.super Landroid/content/BroadcastReceiver;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DmcPlaybackControlListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method private constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 4095
    iput-object p1, p0, Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4095
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;-><init>(Lcom/htc/music/HtcMusic;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4098
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4099
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.htc.music.dmcservice.set_playback_control_enabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4100
    const-string v2, "is_enabled"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 4102
    .local v1, isEnabled:Z
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==========DMCSERVICE_SET_PLAYBACK_COTNROL_ENABLED - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4103
    iget-object v2, p0, Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V
    invoke-static {v2, v1}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;Z)V

    .line 4105
    .end local v1           #isEnabled:Z
    :cond_0
    return-void
.end method
