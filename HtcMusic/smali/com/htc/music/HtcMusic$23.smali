.class Lcom/htc/music/HtcMusic$23;
.super Landroid/os/Handler;
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
    .line 3920
    iput-object p1, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 3923
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 4067
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 3933
    :sswitch_1
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->initialUI()V
    invoke-static {v10}, Lcom/htc/music/HtcMusic;->access$3200(Lcom/htc/music/HtcMusic;)V

    goto :goto_0

    .line 3937
    :sswitch_2
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->animationRefresh()V
    invoke-static {v10}, Lcom/htc/music/HtcMusic;->access$3300(Lcom/htc/music/HtcMusic;)V

    goto :goto_0

    .line 3941
    :sswitch_3
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v10}, Lcom/htc/music/HtcMusic;->access$1200(Lcom/htc/music/HtcMusic;)J

    move-result-wide v6

    .line 3942
    .local v6, next:J
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    invoke-static {v10, v6, v7}, Lcom/htc/music/HtcMusic;->access$3400(Lcom/htc/music/HtcMusic;J)V

    goto :goto_0

    .line 3950
    .end local v6           #next:J
    :sswitch_4
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f070060

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f070061

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x2040151

    new-instance v12, Lcom/htc/music/HtcMusic$23$1;

    invoke-direct {v12, p0}, Lcom/htc/music/HtcMusic$23$1;-><init>(Lcom/htc/music/HtcMusic$23;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 3963
    :sswitch_5
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;
    invoke-static {v10}, Lcom/htc/music/HtcMusic;->access$3500(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/SoundEffectAdapter;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 3964
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;
    invoke-static {v10}, Lcom/htc/music/HtcMusic;->access$3500(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/SoundEffectAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/music/widget/SoundEffectAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 3971
    :sswitch_6
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectType()I

    move-result v2

    .line 3972
    .local v2, effectType:I
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectStr()Ljava/lang/String;

    move-result-object v1

    .line 3974
    .local v1, effectStr:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3975
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    .line 3976
    const-string v1, "Original"

    .line 3979
    :cond_1
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v10}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v11, v11, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v10, v11, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V

    .line 3982
    iget v9, p1, Landroid/os/Message;->arg2:I

    .line 3983
    .local v9, recover:I
    const/4 v10, 0x1

    if-ne v10, v9, :cond_2

    .line 3986
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I
    invoke-static {v10, v2}, Lcom/htc/music/HtcMusic;->access$3602(Lcom/htc/music/HtcMusic;I)I

    .line 3987
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;
    invoke-static {v10, v1}, Lcom/htc/music/HtcMusic;->access$3702(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    .line 3990
    :cond_2
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_0

    .line 3992
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    iget v11, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/music/HtcMusic;->showToast(I)V
    invoke-static {v10, v11}, Lcom/htc/music/HtcMusic;->access$3800(Lcom/htc/music/HtcMusic;I)V

    goto/16 :goto_0

    .line 3997
    .end local v1           #effectStr:Ljava/lang/String;
    .end local v2           #effectType:I
    .end local v9           #recover:I
    :sswitch_7
    const-string v10, "[HtcMusic]"

    const-string v11, "msg.what = START_ENHANCER_SERVICE_ONSTART"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    const-string v11, "action_activity_on_start"

    #calls: Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/htc/music/HtcMusic;->access$3900(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4009
    :sswitch_8
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v10, v10, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v10, :cond_0

    .line 4010
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v10, v10, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v10}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->showContactRingtoneToast()V

    goto/16 :goto_0

    .line 4016
    :sswitch_9
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v10, v10, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v10}, Lcom/htc/widget/HtcMultiSeekBarDialog;->dismiss()V

    goto/16 :goto_0

    .line 4020
    :sswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "TrackName"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4021
    .local v5, mTrack:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "AlbumArtistName"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4022
    .local v3, mAlbumArtist:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "TotalTime"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4023
    .local v4, mTime:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/htc/music/HtcMusic;->access$4000(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4024
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/htc/music/HtcMusic;->access$4100(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4025
    if-eqz v4, :cond_0

    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/htc/music/HtcMusic;->access$4200(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 4031
    .end local v3           #mAlbumArtist:Ljava/lang/String;
    .end local v4           #mTime:Ljava/lang/String;
    .end local v5           #mTrack:Ljava/lang/String;
    :sswitch_b
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->updateTitle()V
    invoke-static {v10}, Lcom/htc/music/HtcMusic;->access$2300(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 4034
    :sswitch_c
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v10}, Lcom/htc/music/HtcMusic;->access$1200(Lcom/htc/music/HtcMusic;)J

    goto/16 :goto_0

    .line 4037
    :sswitch_d
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->changeNowPlayingMode()V
    invoke-static {v10}, Lcom/htc/music/HtcMusic;->access$4300(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 4042
    :sswitch_e
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    iget-boolean v10, v10, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v10, v10, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v10, :cond_3

    .line 4043
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 4044
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->updateTitle()V
    invoke-static {v10}, Lcom/htc/music/HtcMusic;->access$2300(Lcom/htc/music/HtcMusic;)V

    .line 4047
    :cond_3
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v10}, Lcom/htc/music/HtcMusic;->access$4400(Lcom/htc/music/HtcMusic;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v10, :cond_4

    .line 4048
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v10}, Lcom/htc/music/HtcMusic;->access$4400(Lcom/htc/music/HtcMusic;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v11

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->saveRenderer(Ljava/lang/String;)Z

    .line 4051
    :cond_4
    const/4 v0, 0x0

    .line 4053
    .local v0, dms:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    const-string v11, "DLNA"

    const/4 v12, 0x7

    invoke-virtual {v10, v11, v12}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 4055
    .local v8, pref:Landroid/content/SharedPreferences;
    const-string v10, "server"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4057
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4058
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v10}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/htc/music/util/MusicUtils;->switchToPUSH(Landroid/content/Context;Z)Z

    goto/16 :goto_0

    .line 4060
    :cond_5
    iget-object v10, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v10}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/htc/music/util/MusicUtils;->switchToDMC(Landroid/content/Context;Z)Z

    goto/16 :goto_0

    .line 3923
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x5 -> :sswitch_2
        0x8 -> :sswitch_7
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0x33 -> :sswitch_5
        0x34 -> :sswitch_6
        0x66 -> :sswitch_8
        0xc9 -> :sswitch_1
        0x1771 -> :sswitch_9
        0x3a99 -> :sswitch_0
        0x3a9a -> :sswitch_d
        0x3a9b -> :sswitch_e
    .end sparse-switch
.end method
