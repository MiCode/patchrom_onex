.class Lcom/htc/music/HtcMusic$24;
.super Landroid/content/BroadcastReceiver;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 4108
    iput-object p1, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    .line 4111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 4112
    .local v1, action:Ljava/lang/String;
    const-string v8, "com.htc.music.dmcservice.released"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4113
    const-string v8, "[HtcMusic]"

    const-string v9, "==========DMCSERVICE_RELEASED +"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4114
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v8, p2}, Lcom/htc/music/HtcMusic;->CheckDLNAMode(Landroid/content/Intent;)V

    .line 4117
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$4700(Lcom/htc/music/HtcMusic;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 4203
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->animationRefresh()V
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$3400(Lcom/htc/music/HtcMusic;)V

    .line 4204
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v8

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 4205
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$1000(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 4206
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$1000(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4207
    :cond_1
    const-string v8, "[HtcMusic]"

    const-string v9, "==========DMCSERVICE_RELEASED -"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4208
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$4900(Lcom/htc/music/HtcMusic;)V

    .line 4209
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$5000(Lcom/htc/music/HtcMusic;)V

    .line 4220
    :cond_2
    :goto_1
    return-void

    .line 4120
    :pswitch_0
    :try_start_0
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    const-string v9, "DLNA"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 4122
    .local v7, pref:Landroid/content/SharedPreferences;
    const-string v8, "content"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4123
    .local v3, content:Ljava/lang/String;
    const-string v8, "switchLocal"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 4127
    .local v2, bSwitch:Z
    const-string v8, "[Test]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bSwitch:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4130
    if-ne v2, v11, :cond_0

    if-eqz v3, :cond_0

    .line 4131
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v8, v8, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 4132
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 4133
    .local v6, index:I
    const-string v8, "[HtcMusic]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DLNA_LOCAL - index from DMC = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4136
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v8, v8, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8, v6}, Lcom/htc/music/IMediaPlaybackService;->setQueuePosition(I)V

    .line 4137
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "content"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "switchLocal"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4140
    const-string v8, "[HtcMusic]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update index to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4144
    .end local v2           #bSwitch:Z
    .end local v3           #content:Ljava/lang/String;
    .end local v6           #index:I
    .end local v7           #pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    .line 4145
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4151
    .end local v4           #e:Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    const-string v8, "[HtcMusic]"

    const-string v9, "bind DMP service"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4152
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v8, v8, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const-string v9, "com.htc.music.DMPMusicPlaybackService"

    invoke-interface {v8, v9}, Lcom/htc/music/IMediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    .line 4154
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    const-string v9, "DLNA"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 4156
    .restart local v7       #pref:Landroid/content/SharedPreferences;
    const-string v8, "switchDMP"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4159
    .local v0, Switch:Z
    if-eqz v0, :cond_0

    .line 4160
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v8, v8, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4161
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v8, v8, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->stop()V

    .line 4163
    :cond_3
    new-instance v5, Landroid/content/Intent;

    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    const-class v9, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4165
    .local v5, i:Landroid/content/Intent;
    const-string v8, "command"

    const-string v9, "com.htc.music.refreshplaylist"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4168
    const-string v8, "server"

    const-string v9, "Server"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4170
    const-string v8, "container"

    const-string v9, "container"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4172
    const-string v8, "content"

    const-string v9, "content"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4174
    const-string v8, "startIdx"

    const-string v9, "startIdx"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4176
    const-string v8, "endIdx"

    const-string v9, "endIdx"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4178
    const-string v8, "direction"

    const-string v9, "direction"

    const-wide/16 v10, 0x1

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4180
    const-string v8, "dmsFilePath"

    const-string v9, "filepath"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4184
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v8, v5}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4185
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "switchDMP"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 4189
    .end local v0           #Switch:Z
    .end local v5           #i:Landroid/content/Intent;
    .end local v7           #pref:Landroid/content/SharedPreferences;
    :catch_1
    move-exception v4

    .line 4190
    .restart local v4       #e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4210
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_4
    const-string v8, "com.htc.music.dmcservice.repeat_changed"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4211
    const-string v8, "[HtcMusic]"

    const-string v9, "==========DMCSERVICE_REPEAT_CHANGED - "

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4212
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$5000(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_1

    .line 4213
    :cond_5
    const-string v8, "com.htc.music.dmcservice.shuffle_changed"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4214
    const-string v8, "[HtcMusic]"

    const-string v9, "==========DMCSERVICE_SHUFFLE_CHANGED - "

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4215
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$4900(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_1

    .line 4216
    :cond_6
    const-string v8, "com.htc.music.dmcservice.dlna_connected"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4217
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$5000(Lcom/htc/music/HtcMusic;)V

    .line 4218
    iget-object v8, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$4900(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_1

    .line 4117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
