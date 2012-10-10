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
    .line 1915
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    .line 1916
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1917
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1921
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x2711

    if-ne v2, v3, :cond_0

    .line 1922
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$NonUIHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/LandingPageActivity;->reloadRecentAlbum(Z)V
    invoke-static {v2, v3}, Lcom/htc/music/LandingPageActivity;->access$5300(Lcom/htc/music/LandingPageActivity;Z)V

    .line 1951
    :goto_0
    return-void

    .line 1925
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x2712

    if-ne v2, v3, :cond_2

    .line 1926
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1927
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 1929
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    .line 1932
    .local v1, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v2, "com.htc.music"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "play_source"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "package_name"

    const-string v4, "package_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "label"

    const-string v4, "label"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 1938
    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 1941
    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    goto :goto_0

    .line 1944
    .end local v1           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_1
    const-string v2, "[LandingPage]"

    const-string v3, "NonUIHandler, MSG_ULOG_USED_APP, data is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1950
    .end local v0           #data:Landroid/os/Bundle;
    :cond_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
