.class Lcom/htc/music/MediaPlaybackService$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 1135
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1138
    const-string v9, "[MediaPlaybackService]"

    const-string v10, "BroadcastReceiver onReceive"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, action:Ljava/lang/String;
    const-string v9, "command"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1141
    .local v1, cmd:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1142
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "command: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    :cond_0
    const-string v9, "forcePlay"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1145
    .local v4, forcePlay:Z
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 1146
    .local v8, tm:Landroid/telephony/TelephonyManager;
    if-nez v8, :cond_2

    .line 1147
    const-string v9, "[MediaPlaybackService]"

    const-string v10, "TelephonyManager NULL"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    :cond_1
    :goto_0
    return-void

    .line 1150
    :cond_2
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v9

    if-nez v9, :cond_3

    const/4 v5, 0x1

    .line 1151
    .local v5, isPhoneIdle:Z
    :goto_1
    if-nez v5, :cond_5

    .line 1155
    const-string v9, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1156
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v10, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v9, v10}, Lcom/htc/music/MediaPlaybackService;->access$3702(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1157
    const-string v9, "[MediaPlaybackService]"

    const-string v10, "Phone is not idle && ACTION_AUDIO_BECOMING_NOISY"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1150
    .end local v5           #isPhoneIdle:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1164
    .restart local v5       #isPhoneIdle:Z
    :cond_4
    const-string v9, "resume"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "pause"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "stop"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1165
    const-string v9, "[MediaPlaybackService]"

    const-string v10, "call state is not idle && !CMDRESUME.equals(cmd) && !CMDPAUSE.equals(cmd) && !CMDSTOP.equals(cmd) => return"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1169
    :cond_5
    const-string v9, "next"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "com.htc.music.musicservicecommand.next"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "com.android.music.musicservicecommand.next"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1170
    :cond_6
    if-eqz v4, :cond_7

    .line 1171
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v10, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v9, v10}, Lcom/htc/music/MediaPlaybackService;->access$1902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1172
    :cond_7
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/music/MediaPlaybackService;->next(Z)V

    goto :goto_0

    .line 1173
    :cond_8
    const-string v9, "previous"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "com.htc.music.musicservicecommand.previous"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1174
    :cond_9
    if-eqz v4, :cond_a

    .line 1175
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v10, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v9, v10}, Lcom/htc/music/MediaPlaybackService;->access$1902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1176
    :cond_a
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v9}, Lcom/htc/music/MediaPlaybackService;->prev()V

    goto/16 :goto_0

    .line 1177
    :cond_b
    const-string v9, "togglepause"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "com.htc.music.musicservicecommand.togglepause"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1178
    :cond_c
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v9}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1179
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v9}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 1180
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v10, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v9, v10}, Lcom/htc/music/MediaPlaybackService;->access$3702(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 1183
    :cond_d
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1185
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1186
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v9

    if-nez v9, :cond_e

    .line 1187
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v9

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 1188
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v9

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1190
    :cond_e
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v9

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 1191
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v9

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1194
    :cond_f
    const-string v9, "pause"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1195
    :cond_10
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v9}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 1196
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v10, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v9, v10}, Lcom/htc/music/MediaPlaybackService;->access$3702(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 1197
    :cond_11
    const-string v9, "play"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1198
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v9

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 1199
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v9

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1200
    :cond_12
    const-string v9, "stop"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1201
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v9}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 1202
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v10, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v9, v10}, Lcom/htc/music/MediaPlaybackService;->access$3702(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1203
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    goto/16 :goto_0

    .line 1204
    :cond_13
    const-string v9, "ffstart"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1205
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v10, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mRepcnt:I
    invoke-static {v9, v10}, Lcom/htc/music/MediaPlaybackService;->access$2302(Lcom/htc/music/MediaPlaybackService;I)I

    .line 1206
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v10, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static {v9, v10}, Lcom/htc/music/MediaPlaybackService;->access$2502(Lcom/htc/music/MediaPlaybackService;I)I

    .line 1207
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1208
    .local v7, msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x104

    invoke-virtual {v9, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1209
    .end local v7           #msg:Landroid/os/Message;
    :cond_14
    const-string v9, "rwstart"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1210
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v10, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mRepcnt:I
    invoke-static {v9, v10}, Lcom/htc/music/MediaPlaybackService;->access$2302(Lcom/htc/music/MediaPlaybackService;I)I

    .line 1211
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v10, 0x2

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static {v9, v10}, Lcom/htc/music/MediaPlaybackService;->access$2502(Lcom/htc/music/MediaPlaybackService;I)I

    .line 1212
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1213
    .restart local v7       #msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x104

    invoke-virtual {v9, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1214
    .end local v7           #msg:Landroid/os/Message;
    :cond_15
    const-string v9, "ffstop"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    const-string v9, "rwstop"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1215
    :cond_16
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v10, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static {v9, v10}, Lcom/htc/music/MediaPlaybackService;->access$2502(Lcom/htc/music/MediaPlaybackService;I)I

    goto/16 :goto_0

    .line 1216
    :cond_17
    const-string v9, "resume"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1217
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$3700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1219
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$3900(Lcom/htc/music/MediaPlaybackService;)V

    .line 1220
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v10, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v9, v10}, Lcom/htc/music/MediaPlaybackService;->access$3702(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 1229
    :cond_18
    const-string v9, "android.htc.intent.action.PLAYBACK_RINGTONE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    const-string v9, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 1232
    :cond_19
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    #setter for: Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J
    invoke-static {v9, v10, v11}, Lcom/htc/music/MediaPlaybackService;->access$4002(Lcom/htc/music/MediaPlaybackService;J)J

    .line 1238
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_1b

    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 1239
    const-string v9, "[MediaPlaybackService]"

    const-string v10, "Phone Idel && ACTION_AUDIO_BECOMING_NOISY && FADEIN"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1241
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v9

    if-eqz v9, :cond_1a

    .line 1242
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v9

    const/high16 v10, 0x3f80

    invoke-virtual {v9, v10}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 1243
    :cond_1a
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v9}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0

    .line 1245
    :cond_1b
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v9}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1246
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v9}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0

    .line 1248
    :cond_1c
    const-string v9, "com.htc.music.onerror"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 1249
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$4100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1250
    const-string v9, "error_id"

    const/16 v10, -0x2718

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1252
    .local v3, errorId:I
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->handleDMCError(I)V
    invoke-static {v9, v3}, Lcom/htc/music/MediaPlaybackService;->access$4200(Lcom/htc/music/MediaPlaybackService;I)V

    goto/16 :goto_0

    .line 1254
    .end local v3           #errorId:I
    :cond_1d
    const-string v9, "com.htc.dlnamiddlelayer.action.dmc_destroy_notify"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1255
    const-string v9, "[MediaPlaybackService]"

    const-string v10, "Receiver, get ACTION_DMC_DESTROY_NOTIFY_AP"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const-string v9, "cookie"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1259
    .local v2, cookie:I
    const/4 v9, 0x1

    if-ne v2, v9, :cond_1f

    .line 1260
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z
    invoke-static {v9}, Lcom/htc/music/MediaPlaybackService;->access$4100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 1261
    const/4 v6, 0x0

    .line 1262
    .local v6, isPowerOff:Z
    iget-object v9, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->stopActivePlugin(Z)V
    invoke-static {v9, v6}, Lcom/htc/music/MediaPlaybackService;->access$4300(Lcom/htc/music/MediaPlaybackService;Z)V

    goto/16 :goto_0

    .line 1264
    .end local v6           #isPowerOff:Z
    :cond_1e
    const-string v9, "[MediaPlaybackService]"

    const-string v10, "Current mode is not dmc or push mode, cancel close dmc"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1268
    :cond_1f
    const-string v9, "[MediaPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_DMC_DESTROY_NOTIFY_AP, cookie: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
