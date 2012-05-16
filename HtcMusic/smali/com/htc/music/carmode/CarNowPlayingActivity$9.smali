.class Lcom/htc/music/carmode/CarNowPlayingActivity$9;
.super Landroid/content/BroadcastReceiver;
.source "CarNowPlayingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 969
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0x12

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 973
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.htc.music.metachanged"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 975
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "received ======== META_CHANGED"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackInfo()V
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1300(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 977
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackTime()V
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1400(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 979
    const-string v4, "current_playing_pos"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 981
    .local v2, nSelectPos:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarGliderAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1040
    .end local v2           #nSelectPos:I
    :cond_0
    :goto_0
    return-void

    .line 983
    .restart local v2       #nSelectPos:I
    :cond_1
    if-ltz v2, :cond_2

    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarGliderAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/music/carmode/CarGliderAdapter;->getItemCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 985
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    goto :goto_0

    .line 987
    :cond_2
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    goto :goto_0

    .line 992
    .end local v2           #nSelectPos:I
    :cond_3
    const-string v4, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 994
    const-string v3, "[CarNowPlayingActivity]"

    const-string v4, "received ======== PLAYBACK_COMPLETE"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updatePlayState()V
    invoke-static {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1700(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 996
    :cond_4
    const-string v4, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 997
    const-string v3, "[CarNowPlayingActivity]"

    const-string v4, "received ======== PLAYSTATE_CHANGE"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackTime()V
    invoke-static {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1400(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 999
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updatePlayState()V
    invoke-static {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1700(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1000
    :cond_5
    const-string v4, "com.htc.music.queuechanged"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1001
    const-string v3, "[CarNowPlayingActivity]"

    const-string v4, "received ======== QUEUE_CHANGED"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1004
    const-string v3, "[CarNowPlayingActivity]"

    const-string v4, "remove message PLAY_ALBUM since QUEUE_CHANGED"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 1008
    :cond_6
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateGlider()V
    invoke-static {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1800(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1009
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackInfo()V
    invoke-static {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1300(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto/16 :goto_0

    .line 1010
    :cond_7
    const-string v4, "com.htc.music.rotateright"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1011
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "received ==========ANIMATION_MOVE_NEXT"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1900(Lcom/htc/music/carmode/CarNowPlayingActivity;)I

    move-result v4

    if-ne v4, v6, :cond_8

    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1013
    .local v1, bAnimated:Z
    :goto_1
    if-nez v1, :cond_9

    .line 1014
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->skipAnimation()V
    invoke-static {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2000(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto/16 :goto_0

    .end local v1           #bAnimated:Z
    :cond_8
    move v1, v3

    .line 1012
    goto :goto_1

    .line 1018
    .restart local v1       #bAnimated:Z
    :cond_9
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1019
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1021
    .end local v1           #bAnimated:Z
    :cond_a
    const-string v4, "com.htc.music.rotateleft"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1022
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "received ==========ANIMATION_MOVE_PREV"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1900(Lcom/htc/music/carmode/CarNowPlayingActivity;)I

    move-result v4

    if-ne v4, v6, :cond_b

    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 1024
    .restart local v1       #bAnimated:Z
    :goto_2
    if-nez v1, :cond_c

    .line 1025
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->skipAnimation()V
    invoke-static {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2000(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto/16 :goto_0

    .end local v1           #bAnimated:Z
    :cond_b
    move v1, v3

    .line 1023
    goto :goto_2

    .line 1029
    .restart local v1       #bAnimated:Z
    :cond_c
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1030
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1034
    .end local v1           #bAnimated:Z
    :cond_d
    const-string v3, "com.htc.music.refresh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1035
    const-string v3, "[CarNowPlayingActivity]"

    const-string v4, "received ==========ANIMATION_REFRESH"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->animationRefresh()V
    invoke-static {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2100(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1037
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackInfo()V
    invoke-static {v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1300(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto/16 :goto_0
.end method
