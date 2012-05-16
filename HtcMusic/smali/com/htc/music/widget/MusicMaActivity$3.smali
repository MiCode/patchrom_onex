.class Lcom/htc/music/widget/MusicMaActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MusicMaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicMaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicMaActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicMaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 819
    iput-object p1, p0, Lcom/htc/music/widget/MusicMaActivity$3;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 823
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.htc.dlnamiddlelayer.action.dmc_destroy_notify"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 826
    const-string v2, "[MusicMaActivity]"

    const-string v3, "Receiver, get ACTION_DMC_DESTROY_NOTIFY_AP"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v2, "cookie"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 830
    .local v1, cookie:I
    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$3;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v2}, Lcom/htc/music/widget/MusicMaActivity;->access$500(Lcom/htc/music/widget/MusicMaActivity;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$3;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v2}, Lcom/htc/music/widget/MusicMaActivity;->access$500(Lcom/htc/music/widget/MusicMaActivity;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getCookie()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 831
    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$3;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #calls: Lcom/htc/music/widget/MusicMaActivity;->closeDMC()V
    invoke-static {v2}, Lcom/htc/music/widget/MusicMaActivity;->access$1000(Lcom/htc/music/widget/MusicMaActivity;)V

    .line 846
    .end local v1           #cookie:I
    :cond_0
    :goto_0
    return-void

    .line 834
    .restart local v1       #cookie:I
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$3;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v2}, Lcom/htc/music/widget/MusicMaActivity;->access$500(Lcom/htc/music/widget/MusicMaActivity;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v2

    if-nez v2, :cond_2

    .line 835
    const-string v2, "[MusicMaActivity]"

    const-string v3, "mDLNABroadcastListener, mDLNAManager is null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 838
    :cond_2
    const-string v2, "[MusicMaActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDLNABroadcastListener, cookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDLNAManager.getCookie(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/widget/MusicMaActivity$3;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v4}, Lcom/htc/music/widget/MusicMaActivity;->access$500(Lcom/htc/music/widget/MusicMaActivity;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getCookie()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 842
    .end local v1           #cookie:I
    :cond_3
    const-string v2, "com.htc.music.triggerplayinlibrary"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 843
    const-string v2, "[MusicMaActivity]"

    const-string v3, "Receiver, get TRIGGER_PLAY_IN_LIBRARY"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity$3;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #calls: Lcom/htc/music/widget/MusicMaActivity;->handleTVReadyToPlay()V
    invoke-static {v2}, Lcom/htc/music/widget/MusicMaActivity;->access$200(Lcom/htc/music/widget/MusicMaActivity;)V

    goto :goto_0
.end method
