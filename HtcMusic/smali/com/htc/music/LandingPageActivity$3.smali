.class Lcom/htc/music/LandingPageActivity$3;
.super Ljava/lang/Object;
.source "LandingPageActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 1003
    const-string v1, "[LandingPage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected classname= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,IBinder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mStopping:Z
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$3400(Lcom/htc/music/LandingPageActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1006
    const-string v1, "[LandingPage]"

    const-string v2, "[onServiceConnected] Stopping! Disconnect service right away."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-virtual {v1}, Lcom/htc/music/LandingPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 1027
    :goto_0
    return-void

    .line 1011
    :cond_0
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    const/4 v2, 0x1

    #setter for: Lcom/htc/music/LandingPageActivity;->mServiceBound:Z
    invoke-static {v1, v2}, Lcom/htc/music/LandingPageActivity;->access$3502(Lcom/htc/music/LandingPageActivity;Z)Z

    .line 1012
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-static {p2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 1013
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 1014
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v1, v1, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    sput-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    .line 1017
    :cond_1
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v1, v1, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_2

    .line 1019
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v1, v1, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->activityGoSleep()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->reloadRecentAlbumAsync()V
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$3600(Lcom/htc/music/LandingPageActivity;)V

    .line 1026
    const-string v1, "[LandingPage]"

    const-string v2, "onServiceConnected finished"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "[LandingPage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "osc, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 1030
    const-string v0, "[LandingPage]"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    return-void
.end method
