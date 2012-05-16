.class Lcom/htc/music/LandingPageActivity$NonUIHandler;
.super Landroid/os/Handler;
.source "LandingPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/LandingPageActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 2076
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    .line 2077
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2078
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2082
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/LandingPageActivity;->reloadRecentAlbum(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity;->access$5300(Lcom/htc/music/LandingPageActivity;Z)V

    .line 2088
    :goto_0
    return-void

    .line 2087
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
