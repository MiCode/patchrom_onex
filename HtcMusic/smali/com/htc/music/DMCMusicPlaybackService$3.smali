.class Lcom/htc/music/DMCMusicPlaybackService$3;
.super Landroid/os/Handler;
.source "DMCMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCMusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v2, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 1070
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1187
    :goto_0
    return-void

    .line 1072
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1073
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "call play STATE_PLAYING_TRANSITIONING discard "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1078
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call play mPlaystate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0, v4}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 1080
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I
    invoke-static {v0, v3}, Lcom/htc/music/DMCMusicPlaybackService;->access$1902(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 1081
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->startPlay()V

    goto :goto_0

    .line 1083
    :cond_1
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "STATE_PAUSED_TRANSITIONING"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1900(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    const/16 v1, 0x23

    if-le v0, v1, :cond_2

    .line 1085
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "transition timeout discard it"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I
    invoke-static {v0, v3}, Lcom/htc/music/DMCMusicPlaybackService;->access$1902(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 1087
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0, v5}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    goto :goto_0

    .line 1090
    :cond_2
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$2000(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1091
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$2000(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1092
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$2000(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1094
    :cond_3
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1908(Lcom/htc/music/DMCMusicPlaybackService;)I

    goto/16 :goto_0

    .line 1100
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1101
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "call pause STATE_PLAYING_TRANSITIONING discard "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1105
    :cond_4
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    if-nez v0, :cond_5

    .line 1106
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0, v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 1107
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "call pause"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->requestPause()V

    .line 1109
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I
    invoke-static {v0, v3}, Lcom/htc/music/DMCMusicPlaybackService;->access$1902(Lcom/htc/music/DMCMusicPlaybackService;I)I

    goto/16 :goto_0

    .line 1110
    :cond_5
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 1111
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "STATE_PLAYING_TRANSITIONING"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1900(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    const/16 v1, 0x23

    if-le v0, v1, :cond_6

    .line 1113
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "transition timeout discard it"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I
    invoke-static {v0, v3}, Lcom/htc/music/DMCMusicPlaybackService;->access$1902(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 1115
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0, v5}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    goto/16 :goto_0

    .line 1118
    :cond_6
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$2000(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1119
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$2000(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1120
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlaybackHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$2000(Lcom/htc/music/DMCMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1122
    :cond_7
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1908(Lcom/htc/music/DMCMusicPlaybackService;)I

    goto/16 :goto_0

    .line 1124
    :cond_8
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN STATE : = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "discard pause "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0, v5}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    goto/16 :goto_0

    .line 1132
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    if-eq v0, v1, :cond_b

    .line 1133
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 1134
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0, v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 1138
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->playNext()V

    .line 1139
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "call next"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I
    invoke-static {v0, v3}, Lcom/htc/music/DMCMusicPlaybackService;->access$1902(Lcom/htc/music/DMCMusicPlaybackService;I)I

    goto/16 :goto_0

    .line 1135
    :cond_a
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    if-nez v0, :cond_9

    .line 1136
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0, v4}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    goto :goto_1

    .line 1153
    :cond_b
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "Discard next event"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1160
    :pswitch_3
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    if-eq v0, v1, :cond_e

    .line 1161
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    if-ne v0, v2, :cond_d

    .line 1162
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0, v1}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 1167
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->playPrevious()V

    .line 1168
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mTransitionCount:I
    invoke-static {v0, v3}, Lcom/htc/music/DMCMusicPlaybackService;->access$1902(Lcom/htc/music/DMCMusicPlaybackService;I)I

    .line 1169
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "call previous"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1164
    :cond_d
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    if-nez v0, :cond_c

    .line 1165
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #setter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0, v4}, Lcom/htc/music/DMCMusicPlaybackService;->access$1802(Lcom/htc/music/DMCMusicPlaybackService;I)I

    goto :goto_2

    .line 1182
    :cond_e
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "Discard prev event"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1070
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
