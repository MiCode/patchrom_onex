.class Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicBrowserTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;


# direct methods
.method private constructor <init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1883
    iput-object p1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1883
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1886
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1887
    .local v0, action:Ljava/lang/String;
    const-string v3, "[MusicBrowserTabActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EventReceiver, action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1890
    .local v1, current:Landroid/app/Activity;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 1891
    check-cast v2, Lcom/htc/music/widget/MusicMaActivity;

    .line 1892
    .local v2, maActivity:Lcom/htc/music/widget/MusicMaActivity;
    invoke-virtual {v2}, Lcom/htc/music/widget/MusicMaActivity;->isByPass()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1893
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->disableKeyguard(Landroid/app/Activity;)V

    .line 1898
    .end local v2           #maActivity:Lcom/htc/music/widget/MusicMaActivity;
    :cond_0
    :goto_0
    return-void

    .line 1895
    .restart local v2       #maActivity:Lcom/htc/music/widget/MusicMaActivity;
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto :goto_0
.end method
