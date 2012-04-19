.class Landroid/media/MediaPluginDLNA$ControllerListener;
.super Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method private constructor <init>(Landroid/media/MediaPluginDLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Landroid/media/MediaPluginDLNA$ControllerListener;-><init>(Landroid/media/MediaPluginDLNA;)V

    return-void
.end method


# virtual methods
.method public onControllerInfoupdated(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V
    .locals 0
    .parameter "ctlInfo"

    .prologue
    .line 199
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 203
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError: renderID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-lez p2, :cond_0

    .line 205
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/media/MediaPlugin$OnEventListener;->onError(II)V

    .line 206
    :cond_0
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 4
    .parameter "playState"

    .prologue
    const/16 v1, 0x1800

    const/4 v3, 0x0

    .line 146
    sparse-switch p1, :sswitch_data_0

    .line 191
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayStateChanged:: unknow state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$700(Landroid/media/MediaPluginDLNA;)I

    move-result v1

    invoke-interface {v0, v1, v3}, Landroid/media/MediaPlugin$OnEventListener;->onStateChanged(II)V

    .line 195
    return-void

    .line 148
    :sswitch_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1010

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    .line 149
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mSeeking:Z
    invoke-static {v0, v3}, Landroid/media/MediaPluginDLNA;->access$802(Landroid/media/MediaPluginDLNA;Z)Z

    .line 150
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 151
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_PLAYING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :sswitch_1
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1040

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    .line 155
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 156
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_STOPPED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :sswitch_2
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1020

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    .line 160
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 161
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_PAUSED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :sswitch_3
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    .line 165
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mSeeking:Z
    invoke-static {v0, v3}, Landroid/media/MediaPluginDLNA;->access$802(Landroid/media/MediaPluginDLNA;Z)Z

    .line 166
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_TRANSITIONING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    :sswitch_4
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    .line 170
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mSeeking:Z
    invoke-static {v0, v3}, Landroid/media/MediaPluginDLNA;->access$802(Landroid/media/MediaPluginDLNA;Z)Z

    .line 171
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_BUFFERING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :sswitch_5
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    .line 175
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_SENDING_CONTENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    :sswitch_6
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_NO_MEDIA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 181
    :sswitch_7
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1001

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    .line 182
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 183
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 186
    :sswitch_8
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    const/16 v1, 0x1080

    #setter for: Landroid/media/MediaPluginDLNA;->mState:I
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$702(Landroid/media/MediaPluginDLNA;I)I

    .line 187
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 188
    const-string v0, "[MediaPluginDLNA]"

    const-string/jumbo v1, "onPlayStateChanged::STATE_AUTOPLAYWANTSHOWSTOP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 146
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x64 -> :sswitch_4
        0x6a -> :sswitch_5
        0x3e8 -> :sswitch_8
    .end sparse-switch
.end method

.method public onResponse(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "rendererID"
    .parameter "responseID"
    .parameter "responseReason"

    .prologue
    .line 210
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResponse: renderID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$ControllerListener;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    .line 212
    return-void
.end method
