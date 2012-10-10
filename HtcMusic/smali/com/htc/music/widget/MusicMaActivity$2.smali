.class Lcom/htc/music/widget/MusicMaActivity$2;
.super Landroid/os/Handler;
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
    .line 595
    iput-object p1, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 597
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 631
    :goto_0
    return-void

    .line 600
    :sswitch_0
    iget-object v3, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mbufferdialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/htc/music/widget/MusicMaActivity;->access$400(Lcom/htc/music/widget/MusicMaActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 601
    iget-object v3, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mbufferdialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/htc/music/widget/MusicMaActivity;->access$400(Lcom/htc/music/widget/MusicMaActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 602
    :cond_0
    const-string v3, "[MusicMaActivity]"

    const-string v4, "mbufferdialog dismiss"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 604
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 605
    .local v1, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v3}, Lcom/htc/music/widget/MusicMaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 608
    .end local v1           #message:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v3}, Lcom/htc/music/widget/MusicMaActivity;->onDeletionCompleted()V

    goto :goto_0

    .line 611
    :sswitch_1
    iget-object v3, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v3}, Lcom/htc/music/widget/MusicMaActivity;->access$500(Lcom/htc/music/widget/MusicMaActivity;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 612
    iget-object v3, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v3}, Lcom/htc/music/widget/MusicMaActivity;->access$500(Lcom/htc/music/widget/MusicMaActivity;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->saveRenderer(Ljava/lang/String;)Z

    .line 615
    :cond_2
    const/4 v0, 0x0

    .line 617
    .local v0, dms:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    const-string v4, "DLNA"

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Lcom/htc/music/widget/MusicMaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 619
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v3, "server"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 621
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 622
    iget-object v3, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v3}, Lcom/htc/music/widget/MusicMaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/htc/music/util/MusicUtils;->switchToPUSH(Landroid/content/Context;Z)Z

    .line 627
    :goto_1
    iget-object v3, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    #calls: Lcom/htc/music/widget/MusicMaActivity;->launchPlayer()V
    invoke-static {v3}, Lcom/htc/music/widget/MusicMaActivity;->access$600(Lcom/htc/music/widget/MusicMaActivity;)V

    goto :goto_0

    .line 624
    :cond_3
    iget-object v3, p0, Lcom/htc/music/widget/MusicMaActivity$2;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v3}, Lcom/htc/music/widget/MusicMaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/htc/music/util/MusicUtils;->switchToDMC(Landroid/content/Context;Z)Z

    goto :goto_1

    .line 597
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x36b1 -> :sswitch_1
    .end sparse-switch
.end method
