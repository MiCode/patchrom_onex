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
    .line 4071
    iput-object p1, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    .line 4074
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 4075
    .local v1, action:Ljava/lang/String;
    const-string v9, "com.htc.music.dmcservice.released"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 4076
    const-string v9, "[HtcMusic]"

    const-string v10, "==========DMCSERVICE_RELEASED +"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4077
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v9, p2}, Lcom/htc/music/HtcMusic;->CheckDLNAMode(Landroid/content/Intent;)V

    .line 4080
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4500(Lcom/htc/music/HtcMusic;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 4166
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->animationRefresh()V
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$3300(Lcom/htc/music/HtcMusic;)V

    .line 4167
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v9

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 4168
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$900(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 4169
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$900(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4170
    :cond_1
    const-string v9, "[HtcMusic]"

    const-string v10, "==========DMCSERVICE_RELEASED -"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4171
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4700(Lcom/htc/music/HtcMusic;)V

    .line 4172
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)V

    .line 4188
    :cond_2
    :goto_1
    return-void

    .line 4083
    :pswitch_0
    :try_start_0
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    const-string v10, "DLNA"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 4085
    .local v8, pref:Landroid/content/SharedPreferences;
    const-string v9, "content"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4086
    .local v3, content:Ljava/lang/String;
    const-string v9, "switchLocal"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 4090
    .local v2, bSwitch:Z
    const-string v9, "[Test]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bSwitch:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4093
    if-ne v2, v12, :cond_0

    if-eqz v3, :cond_0

    .line 4094
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v9, v9, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 4095
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 4096
    .local v6, index:I
    const-string v9, "[HtcMusic]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DLNA_LOCAL - index from DMC = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4099
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v9, v9, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9, v6}, Lcom/htc/music/IMediaPlaybackService;->setQueuePosition(I)V

    .line 4100
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "content"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "switchLocal"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4103
    const-string v9, "[HtcMusic]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update index to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4107
    .end local v2           #bSwitch:Z
    .end local v3           #content:Ljava/lang/String;
    .end local v6           #index:I
    .end local v8           #pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    .line 4108
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4114
    .end local v4           #e:Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    const-string v9, "[HtcMusic]"

    const-string v10, "bind DMP service"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4115
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v9, v9, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const-string v10, "com.htc.music.DMPMusicPlaybackService"

    invoke-interface {v9, v10}, Lcom/htc/music/IMediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    .line 4117
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    const-string v10, "DLNA"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 4119
    .restart local v8       #pref:Landroid/content/SharedPreferences;
    const-string v9, "switchDMP"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4122
    .local v0, Switch:Z
    if-eqz v0, :cond_0

    .line 4123
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v9, v9, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4124
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v9, v9, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->stop()V

    .line 4126
    :cond_3
    new-instance v5, Landroid/content/Intent;

    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    const-class v10, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4128
    .local v5, i:Landroid/content/Intent;
    const-string v9, "command"

    const-string v10, "com.htc.music.refreshplaylist"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4131
    const-string v9, "server"

    const-string v10, "Server"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4133
    const-string v9, "container"

    const-string v10, "container"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4135
    const-string v9, "content"

    const-string v10, "content"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4137
    const-string v9, "startIdx"

    const-string v10, "startIdx"

    const-wide/16 v11, -0x1

    invoke-virtual {p2, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4139
    const-string v9, "endIdx"

    const-string v10, "endIdx"

    const-wide/16 v11, -0x1

    invoke-virtual {p2, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4141
    const-string v9, "direction"

    const-string v10, "direction"

    const-wide/16 v11, 0x1

    invoke-virtual {p2, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4143
    const-string v9, "dmsFilePath"

    const-string v10, "filepath"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4147
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v9, v5}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4148
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "switchDMP"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 4152
    .end local v0           #Switch:Z
    .end local v5           #i:Landroid/content/Intent;
    .end local v8           #pref:Landroid/content/SharedPreferences;
    :catch_1
    move-exception v4

    .line 4153
    .restart local v4       #e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4173
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_4
    const-string v9, "com.htc.music.dmcservice.set_playback_control_enabled"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4174
    const-string v9, "is_enabled"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 4176
    .local v7, isEnabled:Z
    const-string v9, "[HtcMusic]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "==========DMCSERVICE_SET_PLAYBACK_COTNROL_ENABLED - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4177
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V
    invoke-static {v9, v7}, Lcom/htc/music/HtcMusic;->access$4900(Lcom/htc/music/HtcMusic;Z)V

    goto/16 :goto_1

    .line 4178
    .end local v7           #isEnabled:Z
    :cond_5
    const-string v9, "com.htc.music.dmcservice.repeat_changed"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4179
    const-string v9, "[HtcMusic]"

    const-string v10, "==========DMCSERVICE_REPEAT_CHANGED - "

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4180
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_1

    .line 4181
    :cond_6
    const-string v9, "com.htc.music.dmcservice.shuffle_changed"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 4182
    const-string v9, "[HtcMusic]"

    const-string v10, "==========DMCSERVICE_SHUFFLE_CHANGED - "

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4183
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4700(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_1

    .line 4184
    :cond_7
    const-string v9, "com.htc.music.dmcservice.dlna_connected"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4185
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)V

    .line 4186
    iget-object v9, p0, Lcom/htc/music/HtcMusic$24;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V
    invoke-static {v9}, Lcom/htc/music/HtcMusic;->access$4700(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_1

    .line 4080
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
