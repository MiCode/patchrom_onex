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
    .line 1070
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1073
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "BroadcastReceiver onReceive"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1075
    .local v0, action:Ljava/lang/String;
    const-string v7, "command"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1076
    .local v1, cmd:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1077
    const-string v7, "[MediaPlaybackService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "command: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :cond_0
    const-string v7, "forcePlay"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1080
    .local v3, forcePlay:Z
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 1081
    .local v6, tm:Landroid/telephony/TelephonyManager;
    if-nez v6, :cond_2

    .line 1082
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "TelephonyManager NULL"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    :cond_1
    :goto_0
    return-void

    .line 1085
    :cond_2
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v7

    if-nez v7, :cond_3

    const/4 v4, 0x1

    .line 1086
    .local v4, isPhoneIdle:Z
    :goto_1
    if-nez v4, :cond_5

    .line 1090
    const-string v7, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1091
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v8, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v7, v8}, Lcom/htc/music/MediaPlaybackService;->access$3602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1092
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "Phone is not idle && ACTION_AUDIO_BECOMING_NOISY"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1085
    .end local v4           #isPhoneIdle:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1099
    .restart local v4       #isPhoneIdle:Z
    :cond_4
    const-string v7, "resume"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "pause"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "stop"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1100
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "call state is not idle && !CMDRESUME.equals(cmd) && !CMDPAUSE.equals(cmd) && !CMDSTOP.equals(cmd) => return"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1104
    :cond_5
    const-string v7, "next"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "com.htc.music.musicservicecommand.next"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "com.android.music.musicservicecommand.next"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1105
    :cond_6
    if-eqz v3, :cond_7

    .line 1106
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v8, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v7, v8}, Lcom/htc/music/MediaPlaybackService;->access$1902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1107
    :cond_7
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService;->next(Z)V

    goto :goto_0

    .line 1108
    :cond_8
    const-string v7, "previous"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "com.htc.music.musicservicecommand.previous"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1109
    :cond_9
    if-eqz v3, :cond_a

    .line 1110
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v8, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v7, v8}, Lcom/htc/music/MediaPlaybackService;->access$1902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1111
    :cond_a
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService;->prev()V

    goto/16 :goto_0

    .line 1112
    :cond_b
    const-string v7, "togglepause"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "com.htc.music.musicservicecommand.togglepause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1113
    :cond_c
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1114
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 1115
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v8, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v7, v8}, Lcom/htc/music/MediaPlaybackService;->access$3602(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 1118
    :cond_d
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1120
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$3700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1121
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_e

    .line 1122
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$3700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v7

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 1123
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$3700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v7

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1125
    :cond_e
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$3700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v7

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 1126
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$3700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v7

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1129
    :cond_f
    const-string v7, "pause"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1130
    :cond_10
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 1131
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v8, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v7, v8}, Lcom/htc/music/MediaPlaybackService;->access$3602(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 1132
    :cond_11
    const-string v7, "play"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1133
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$3700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v7

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 1134
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$3700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v7

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1135
    :cond_12
    const-string v7, "stop"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1136
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 1137
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v8, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v7, v8}, Lcom/htc/music/MediaPlaybackService;->access$3602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 1138
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    goto/16 :goto_0

    .line 1139
    :cond_13
    const-string v7, "ffstart"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1140
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v8, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mRepcnt:I
    invoke-static {v7, v8}, Lcom/htc/music/MediaPlaybackService;->access$2302(Lcom/htc/music/MediaPlaybackService;I)I

    .line 1141
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v8, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static {v7, v8}, Lcom/htc/music/MediaPlaybackService;->access$2502(Lcom/htc/music/MediaPlaybackService;I)I

    .line 1142
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1143
    .local v5, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v8, 0x104

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1144
    .end local v5           #msg:Landroid/os/Message;
    :cond_14
    const-string v7, "rwstart"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1145
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v8, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mRepcnt:I
    invoke-static {v7, v8}, Lcom/htc/music/MediaPlaybackService;->access$2302(Lcom/htc/music/MediaPlaybackService;I)I

    .line 1146
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v8, 0x2

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static {v7, v8}, Lcom/htc/music/MediaPlaybackService;->access$2502(Lcom/htc/music/MediaPlaybackService;I)I

    .line 1147
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1148
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v8, 0x104

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1149
    .end local v5           #msg:Landroid/os/Message;
    :cond_15
    const-string v7, "ffstop"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "rwstop"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1150
    :cond_16
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v8, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static {v7, v8}, Lcom/htc/music/MediaPlaybackService;->access$2502(Lcom/htc/music/MediaPlaybackService;I)I

    goto/16 :goto_0

    .line 1151
    :cond_17
    const-string v7, "resume"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1152
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$3600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1154
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)V

    .line 1155
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v8, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v7, v8}, Lcom/htc/music/MediaPlaybackService;->access$3602(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 1164
    :cond_18
    const-string v7, "android.htc.intent.action.PLAYBACK_RINGTONE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    const-string v7, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1167
    :cond_19
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    #setter for: Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J
    invoke-static {v7, v8, v9}, Lcom/htc/music/MediaPlaybackService;->access$3902(Lcom/htc/music/MediaPlaybackService;J)J

    .line 1173
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1174
    const-string v7, "[MediaPlaybackService]"

    const-string v8, "Phone Idel && ACTION_AUDIO_BECOMING_NOISY && FADEIN"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1176
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v7

    if-eqz v7, :cond_1a

    .line 1177
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v7

    const/high16 v8, 0x3f80

    invoke-virtual {v7, v8}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 1178
    :cond_1a
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0

    .line 1180
    :cond_1b
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1181
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0

    .line 1183
    :cond_1c
    const-string v7, "com.htc.music.onerror"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1184
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$4000(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1185
    const-string v7, "error_id"

    const/16 v8, -0x2718

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1187
    .local v2, errorId:I
    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->handleDMCError(I)V
    invoke-static {v7, v2}, Lcom/htc/music/MediaPlaybackService;->access$4100(Lcom/htc/music/MediaPlaybackService;I)V

    goto/16 :goto_0
.end method
