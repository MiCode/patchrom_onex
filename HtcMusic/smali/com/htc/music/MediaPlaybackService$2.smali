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
    .line 1011
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x0

    .line 1014
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 1129
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "there is something wrong in mUiHandler"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1018
    :sswitch_0
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v7

    .line 1019
    :try_start_0
    const-string v6, "[MediaPlaybackService]"

    const-string v8, "animation time out!! trigger animation end action..."

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v8, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v6, v8}, Lcom/htc/music/MediaPlaybackService;->access$302(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1021
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v8, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAnimation:Z
    invoke-static {v6, v8}, Lcom/htc/music/MediaPlaybackService;->access$2802(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1022
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 1023
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1024
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->waitForAnimation()V
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$2900(Lcom/htc/music/MediaPlaybackService;)V

    .line 1028
    :goto_1
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1026
    :cond_1
    :try_start_1
    const-string v6, "[MediaPlaybackService]"

    const-string v8, "animation time out message execute with mAnimation is false!!"

    invoke-static {v6, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1033
    :sswitch_1
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->waitForAnimation()V
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$2900(Lcom/htc/music/MediaPlaybackService;)V

    goto :goto_0

    .line 1037
    :sswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/Notification;

    .line 1038
    .local v5, status:Landroid/app/Notification;
    if-eqz v5, :cond_0

    .line 1039
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->pluginUpdateNotification(Landroid/app/Notification;)V
    invoke-static {v6, v5}, Lcom/htc/music/MediaPlaybackService;->access$3000(Lcom/htc/music/MediaPlaybackService;Landroid/app/Notification;)V

    goto :goto_0

    .line 1044
    .end local v5           #status:Landroid/app/Notification;
    :sswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 1045
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1046
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v7, v6, v8}, Lcom/htc/music/MediaPlaybackService;->access$3100(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1048
    :cond_2
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v7, v6}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0

    .line 1054
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1055
    .local v0, className:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v6

    if-nez v6, :cond_4

    .line 1056
    :cond_3
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "plugin class name is null"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1059
    :cond_4
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1060
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3208(Lcom/htc/music/MediaPlaybackService;)I

    .line 1062
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3200(Lcom/htc/music/MediaPlaybackService;)I

    move-result v6

    if-le v6, v9, :cond_5

    .line 1063
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/music/MusicPluginManager;->resetMusicPluginManager()V

    .line 1064
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    .line 1065
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I
    invoke-static {v6, v8}, Lcom/htc/music/MediaPlaybackService;->access$3202(Lcom/htc/music/MediaPlaybackService;I)I

    goto/16 :goto_0

    .line 1067
    :cond_5
    const-wide/16 v6, 0xc8

    invoke-virtual {p0, p1, v6, v7}, Lcom/htc/music/MediaPlaybackService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1070
    :cond_6
    const/4 v3, 0x1

    .line 1071
    .local v3, isPowerOff:Z
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin(Z)V

    .line 1072
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v6

    invoke-virtual {v6, v0, v8, v8}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;ZZ)Z

    .line 1073
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I
    invoke-static {v6, v8}, Lcom/htc/music/MediaPlaybackService;->access$3202(Lcom/htc/music/MediaPlaybackService;I)I

    goto/16 :goto_0

    .line 1079
    .end local v0           #className:Ljava/lang/String;
    .end local v3           #isPowerOff:Z
    :sswitch_5
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "UNBINDPLUGIN_ON_BIND_COMPLETE + "

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1082
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1083
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3308(Lcom/htc/music/MediaPlaybackService;)I

    .line 1085
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3300(Lcom/htc/music/MediaPlaybackService;)I

    move-result v6

    if-le v6, v9, :cond_7

    .line 1086
    const/4 v3, 0x1

    .line 1087
    .restart local v3       #isPowerOff:Z
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin(Z)V

    .line 1088
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I
    invoke-static {v6, v8}, Lcom/htc/music/MediaPlaybackService;->access$3302(Lcom/htc/music/MediaPlaybackService;I)I

    .line 1097
    .end local v3           #isPowerOff:Z
    :goto_2
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "UNBINDPLUGIN_ON_BIND_COMPLETE - "

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1090
    :cond_7
    const/4 v6, 0x5

    const-wide/16 v7, 0x12c

    invoke-virtual {p0, v6, v7, v8}, Lcom/htc/music/MediaPlaybackService$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 1093
    :cond_8
    const/4 v3, 0x1

    .line 1094
    .restart local v3       #isPowerOff:Z
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin(Z)V

    .line 1095
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I
    invoke-static {v6, v8}, Lcom/htc/music/MediaPlaybackService;->access$3302(Lcom/htc/music/MediaPlaybackService;I)I

    goto :goto_2

    .line 1102
    .end local v3           #isPowerOff:Z
    :sswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1104
    .local v1, data:Landroid/os/Bundle;
    const-string v6, "message"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1105
    const-string v6, "message"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1106
    .local v2, errorMessage:Ljava/lang/String;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_9

    .line 1107
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v7, "duration"

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    #calls: Lcom/htc/music/MediaPlaybackService;->showToast(Ljava/lang/String;I)V
    invoke-static {v6, v2, v7}, Lcom/htc/music/MediaPlaybackService;->access$3400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1110
    :cond_9
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "case TOAST_WARNING: errorMessage is null or length is 0 !!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1113
    .end local v2           #errorMessage:Ljava/lang/String;
    :cond_a
    const-string v6, "resId"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1114
    const-string v6, "resId"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1115
    .local v4, resId:I
    if-lez v4, :cond_b

    .line 1116
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v7, "duration"

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    #calls: Lcom/htc/music/MediaPlaybackService;->showToast(II)V
    invoke-static {v6, v4, v7}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;II)V

    goto/16 :goto_0

    .line 1118
    :cond_b
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "case TOAST_WARNING: resId <= 0!!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1125
    .end local v1           #data:Landroid/os/Bundle;
    .end local v4           #resId:I
    :sswitch_7
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    iget v8, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/music/MediaPlaybackService;->updateAlbumArtInNotification(Landroid/graphics/Bitmap;I)V
    invoke-static {v7, v6, v8}, Lcom/htc/music/MediaPlaybackService;->access$3600(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V

    goto/16 :goto_0

    .line 1014
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x7be -> :sswitch_0
    .end sparse-switch
.end method
