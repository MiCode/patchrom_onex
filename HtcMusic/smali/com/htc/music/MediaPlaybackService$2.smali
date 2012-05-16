.class Lcom/htc/music/MediaPlaybackService$2;
.super Landroid/os/Handler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 966
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x0

    .line 969
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1064
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "there is something wrong in mUiHandler"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 971
    :pswitch_0
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->waitForAnimation()V
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)V

    goto :goto_0

    .line 975
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/Notification;

    .line 976
    .local v4, status:Landroid/app/Notification;
    if-eqz v4, :cond_0

    .line 977
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->pluginUpdateNotification(Landroid/app/Notification;)V
    invoke-static {v5, v4}, Lcom/htc/music/MediaPlaybackService;->access$2900(Lcom/htc/music/MediaPlaybackService;Landroid/app/Notification;)V

    goto :goto_0

    .line 982
    .end local v4           #status:Landroid/app/Notification;
    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 983
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 984
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v6, v5, v7}, Lcom/htc/music/MediaPlaybackService;->access$3000(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 986
    :cond_1
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v6, v5}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 993
    .local v0, className:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    if-nez v5, :cond_3

    .line 994
    :cond_2
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "plugin class name is null"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 997
    :cond_3
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 998
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$3108(Lcom/htc/music/MediaPlaybackService;)I

    .line 1000
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$3100(Lcom/htc/music/MediaPlaybackService;)I

    move-result v5

    if-le v5, v8, :cond_4

    .line 1001
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/MusicPluginManager;->resetMusicPluginManager()V

    .line 1002
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    .line 1003
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I
    invoke-static {v5, v7}, Lcom/htc/music/MediaPlaybackService;->access$3102(Lcom/htc/music/MediaPlaybackService;I)I

    goto/16 :goto_0

    .line 1005
    :cond_4
    const-wide/16 v5, 0xc8

    invoke-virtual {p0, p1, v5, v6}, Lcom/htc/music/MediaPlaybackService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1008
    :cond_5
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    .line 1009
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    invoke-virtual {v5, v0, v7, v7}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;ZZ)Z

    .line 1010
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I
    invoke-static {v5, v7}, Lcom/htc/music/MediaPlaybackService;->access$3102(Lcom/htc/music/MediaPlaybackService;I)I

    goto/16 :goto_0

    .line 1016
    .end local v0           #className:Ljava/lang/String;
    :pswitch_4
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "UNBINDPLUGIN_ON_BIND_COMPLETE + "

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1019
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1020
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$3208(Lcom/htc/music/MediaPlaybackService;)I

    .line 1022
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$3200(Lcom/htc/music/MediaPlaybackService;)I

    move-result v5

    if-le v5, v8, :cond_6

    .line 1023
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    .line 1024
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I
    invoke-static {v5, v7}, Lcom/htc/music/MediaPlaybackService;->access$3202(Lcom/htc/music/MediaPlaybackService;I)I

    .line 1032
    :goto_1
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "UNBINDPLUGIN_ON_BIND_COMPLETE - "

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1026
    :cond_6
    const/4 v5, 0x5

    const-wide/16 v6, 0x12c

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/music/MediaPlaybackService$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1029
    :cond_7
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    .line 1030
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I
    invoke-static {v5, v7}, Lcom/htc/music/MediaPlaybackService;->access$3202(Lcom/htc/music/MediaPlaybackService;I)I

    goto :goto_1

    .line 1037
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1039
    .local v1, data:Landroid/os/Bundle;
    const-string v5, "message"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1040
    const-string v5, "message"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1041
    .local v2, errorMessage:Ljava/lang/String;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 1042
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v6, "duration"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    #calls: Lcom/htc/music/MediaPlaybackService;->showToast(Ljava/lang/String;I)V
    invoke-static {v5, v2, v6}, Lcom/htc/music/MediaPlaybackService;->access$3300(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1045
    :cond_8
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "case TOAST_WARNING: errorMessage is null or length is 0 !!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1048
    .end local v2           #errorMessage:Ljava/lang/String;
    :cond_9
    const-string v5, "resId"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1049
    const-string v5, "resId"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1050
    .local v3, resId:I
    if-lez v3, :cond_a

    .line 1051
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v6, "duration"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    #calls: Lcom/htc/music/MediaPlaybackService;->showToast(II)V
    invoke-static {v5, v3, v6}, Lcom/htc/music/MediaPlaybackService;->access$3400(Lcom/htc/music/MediaPlaybackService;II)V

    goto/16 :goto_0

    .line 1053
    :cond_a
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "case TOAST_WARNING: resId <= 0!!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1060
    .end local v1           #data:Landroid/os/Bundle;
    .end local v3           #resId:I
    :pswitch_6
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    iget v7, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/music/MediaPlaybackService;->updateAlbumArtInNotification(Landroid/graphics/Bitmap;I)V
    invoke-static {v6, v5, v7}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V

    goto/16 :goto_0

    .line 969
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
