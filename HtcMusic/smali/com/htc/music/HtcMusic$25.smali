.class Lcom/htc/music/HtcMusic$25;
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
    .line 4214
    iput-object p1, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mUINotInit:Z
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5000(Lcom/htc/music/HtcMusic;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 4520
    :cond_0
    :goto_0
    return-void

    .line 4219
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 4220
    .local v3, action:Ljava/lang/String;
    const-string v22, "com.htc.music.metachanged"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 4221
    const-string v22, "[HtcMusic]"

    const-string v23, "==========META_CHANGED"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x7

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 4226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5100(Lcom/htc/music/HtcMusic;)V

    .line 4227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 4229
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 4230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x1

    #calls: Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    invoke-static/range {v22 .. v24}, Lcom/htc/music/HtcMusic;->access$3400(Lcom/htc/music/HtcMusic;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4239
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 4241
    const/4 v12, 0x0

    .line 4242
    .local v12, nSelectPos:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 4243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v12

    .line 4244
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 4246
    if-ltz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/music/GliderAdapter;->getItemCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_6

    .line 4248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4259
    .end local v12           #nSelectPos:I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5300(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5300(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->isShowing()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 4261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/HtcMusic;->access$5300(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->syncUpdateCurrentAlbum(Landroid/app/Dialog;)V

    goto/16 :goto_0

    .line 4232
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$1200(Lcom/htc/music/HtcMusic;)J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 4233
    :catch_0
    move-exception v22

    goto/16 :goto_1

    .line 4250
    .restart local v12       #nSelectPos:I
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 4252
    :catch_1
    move-exception v7

    .line 4253
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 4254
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v9

    .line 4255
    .local v9, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 4262
    .end local v9           #ex:Ljava/lang/NullPointerException;
    .end local v12           #nSelectPos:I
    :cond_7
    const-string v22, "com.htc.music.playbackcomplete"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 4263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->mPaused:Z
    invoke-static/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->access$5402(Lcom/htc/music/HtcMusic;Z)Z

    .line 4264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5100(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 4265
    :cond_8
    const-string v22, "com.htc.music.playstatechanged"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 4267
    const-string v22, "extrastate"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4268
    .local v10, extraState:Ljava/lang/String;
    if-eqz v10, :cond_b

    .line 4269
    const-string v22, "[HtcMusic]"

    const-string v23, "==========PLAYSTATE_CHANGED extraState"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->access$5500(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4272
    .local v19, szTitleInfo:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 4273
    const-string v22, "buffering"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 4274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v23, v0

    const v24, 0x7f0701d6

    invoke-virtual/range {v23 .. v24}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->access$5500(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4280
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5600(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/ActionBarText;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 4282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    #calls: Lcom/htc/music/HtcMusic;->setSecondaryTitle(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$5800(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4275
    :cond_a
    const-string v22, "waiting"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 4276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v23, v0

    const v24, 0x7f0701d7

    invoke-virtual/range {v23 .. v24}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->access$5500(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto :goto_3

    .line 4287
    .end local v19           #szTitleInfo:Ljava/lang/String;
    :cond_b
    const-string v22, "[HtcMusic]"

    const-string v23, "==========PLAYSTATE_CHANGED"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5100(Lcom/htc/music/HtcMusic;)V

    .line 4291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 4293
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 4294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mPaused:Z
    invoke-static/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->access$5402(Lcom/htc/music/HtcMusic;Z)Z

    .line 4295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$1200(Lcom/htc/music/HtcMusic;)J

    move-result-wide v13

    .line 4296
    .local v13, next:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    invoke-static {v0, v13, v14}, Lcom/htc/music/HtcMusic;->access$3400(Lcom/htc/music/HtcMusic;J)V

    goto/16 :goto_0

    .line 4301
    .end local v13           #next:J
    :catch_3
    move-exception v22

    goto/16 :goto_0

    .line 4298
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->mPaused:Z
    invoke-static/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->access$5402(Lcom/htc/music/HtcMusic;Z)Z

    .line 4299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$1200(Lcom/htc/music/HtcMusic;)J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 4305
    .end local v10           #extraState:Ljava/lang/String;
    :cond_d
    const-string v22, "com.htc.music.rotateleft"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 4306
    const-string v22, "[HtcMusic]"

    const-string v23, "==========ANIMATION_MOVE_PREV"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    .line 4309
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5900(Lcom/htc/music/HtcMusic;)I

    move-result v22

    const/16 v23, 0x12

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    const/4 v4, 0x1

    .line 4310
    .local v4, bAnimated:Z
    :goto_4
    if-nez v4, :cond_f

    .line 4311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 4312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 4325
    .end local v4           #bAnimated:Z
    :catch_4
    move-exception v7

    .line 4326
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4309
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_e
    const/4 v4, 0x0

    goto :goto_4

    .line 4316
    .restart local v4       #bAnimated:Z
    :cond_f
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 4317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueueSize()I

    move-result v11

    .line 4318
    .local v11, len:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v15

    .line 4319
    .local v15, pos:I
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_10

    .line 4320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    add-int/lit8 v23, v11, -0x1

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 4321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V

    goto/16 :goto_0

    .line 4323
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollTo(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 4329
    .end local v4           #bAnimated:Z
    .end local v11           #len:I
    .end local v15           #pos:I
    :cond_11
    const-string v22, "[HtcMusic]"

    const-string v23, "Bad! Service is null at aniamtion"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4331
    :cond_12
    const-string v22, "com.htc.music.rotateright"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 4332
    const-string v22, "[HtcMusic]"

    const-string v23, "==========ANIMATION_MOVE_NEXT"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16

    .line 4335
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5900(Lcom/htc/music/HtcMusic;)I

    move-result v22

    const/16 v23, 0x12

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    if-eqz v22, :cond_13

    const/4 v4, 0x1

    .line 4336
    .restart local v4       #bAnimated:Z
    :goto_5
    if-nez v4, :cond_14

    .line 4337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 4338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 4351
    .end local v4           #bAnimated:Z
    :catch_5
    move-exception v7

    .line 4352
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4335
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v4, 0x0

    goto :goto_5

    .line 4342
    .restart local v4       #bAnimated:Z
    :cond_14
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 4343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v15

    .line 4344
    .restart local v15       #pos:I
    if-nez v15, :cond_15

    .line 4345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 4346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V

    goto/16 :goto_0

    .line 4348
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollTo(I)V

    .line 4349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 4355
    .end local v4           #bAnimated:Z
    .end local v15           #pos:I
    :cond_16
    const-string v22, "[HtcMusic]"

    const-string v23, "Bad! Service is null at aniamtion"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4357
    :cond_17
    const-string v22, "com.htc.music.rotatecircle_next"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 4359
    const-string v22, "[HtcMusic]"

    const-string v23, "==========ANIMATION_ROTATE_SELF_NEXT"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #calls: Lcom/htc/music/HtcMusic;->onAnimationRotateSelf(Z)V
    invoke-static/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->access$6000(Lcom/htc/music/HtcMusic;Z)V

    goto/16 :goto_0

    .line 4361
    :cond_18
    const-string v22, "com.htc.music.rotatecircle_previous"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 4363
    const-string v22, "[HtcMusic]"

    const-string v23, "==========ANIMATION_ROTATE_SELF_PREV"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/htc/music/HtcMusic;->onAnimationRotateSelf(Z)V
    invoke-static/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->access$6000(Lcom/htc/music/HtcMusic;Z)V

    goto/16 :goto_0

    .line 4365
    :cond_19
    const-string v22, "com.htc.music.rotatequickly"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 4366
    const-string v22, "[HtcMusic]"

    const-string v23, "==========ANIMATION_ROTATE_CIRCLE_QUICK"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4367
    :cond_1a
    const-string v22, "com.htc.music.queuechanged"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 4368
    const-string v22, "[HtcMusic]"

    const-string v23, "==========QUEUE_CHANGED"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    if-eqz v22, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 4371
    const-string v22, "[HtcMusic]"

    const-string v23, "remove message PLAY_ALBUM since QUEUE_CHANGED"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 4375
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1c

    .line 4377
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v16

    .line 4378
    .local v16, queueSize:I
    if-gtz v16, :cond_1c

    .line 4379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    if-eqz v22, :cond_1c

    .line 4380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x6

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 4381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x6

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_6

    .line 4390
    .end local v16           #queueSize:I
    :cond_1c
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->updateGlider()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$6100(Lcom/htc/music/HtcMusic;)V

    .line 4391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x7

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 4385
    :catch_6
    move-exception v7

    .line 4386
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 4392
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_1d
    const-string v22, "com.htc.music.shuffle"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 4393
    const-string v22, "[HtcMusic]"

    const-string v23, "==========ANIMATION_SHUFFLE "

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 4396
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 4397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 4398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v23, v0

    #calls: Lcom/htc/music/HtcMusic;->getAlbumQueuePosition()I
    invoke-static/range {v23 .. v23}, Lcom/htc/music/HtcMusic;->access$6200(Lcom/htc/music/HtcMusic;)I

    move-result v23

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 4400
    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/htc/music/IMediaPlaybackService;->getAnimationStatus()Z

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 4401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_0

    .line 4403
    :catch_7
    move-exception v7

    .line 4404
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4407
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_1e
    const-string v22, "com.htc.music.refresh"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 4408
    const-string v22, "[HtcMusic]"

    const-string v23, "==========ANIMATION_REFRESH "

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->animationRefresh()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$3300(Lcom/htc/music/HtcMusic;)V

    .line 4410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x7

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 4411
    :cond_1f
    const-string v22, "com.htc.music.changeart"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    .line 4412
    const-string v22, "[HtcMusic]"

    const-string v23, "==========ANIMATION_CHANGE_ART "

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 4415
    const/16 v22, 0x0

    :try_start_b
    invoke-static/range {v22 .. v22}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v22

    if-eqz v22, :cond_23

    .line 4417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v21

    .line 4419
    .local v21, temp:Ljava/lang/String;
    const-string v22, "[HtcMusic]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getAlbumArt path:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4420
    const-string v22, "[HtcMusic]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mLastPluginArtPath = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4422
    const/4 v5, 0x1

    .line 4423
    .local v5, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_20

    if-eqz v21, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 4425
    const/4 v5, 0x0

    .line 4428
    :cond_20
    if-eqz v5, :cond_0

    .line 4429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    #setter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$6302(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    .line 4430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v12

    .line 4432
    .restart local v12       #nSelectPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v22

    if-eqz v22, :cond_22

    .line 4434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v22

    if-eqz v22, :cond_21

    .line 4435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/music/GliderAdapter;->clearAllCache()V

    .line 4436
    const/4 v12, 0x0

    .line 4438
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V

    .line 4440
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_0

    .line 4448
    .end local v5           #changed:Z
    .end local v12           #nSelectPos:I
    .end local v21           #temp:Ljava/lang/String;
    :catch_8
    move-exception v7

    .line 4449
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4444
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_23
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v17

    .line 4446
    .local v17, selectedPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_0

    .line 4452
    .end local v17           #selectedPos:I
    :cond_24
    const-string v22, "com.htc.music.onerror"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2a

    .line 4453
    const-string v22, "[HtcMusic]"

    const-string v23, "==========OS_ON_ERROR "

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4454
    const-string v22, "error_id"

    const/16 v23, -0x2710

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 4456
    .local v8, errorId:I
    const/16 v22, -0x2710

    move/from16 v0, v22

    if-eq v8, v0, :cond_25

    .line 4457
    const-string v22, "[HtcMusic]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "error id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/HtcMusic;->handleDMCError(I)V
    invoke-static {v0, v8}, Lcom/htc/music/HtcMusic;->access$6400(Lcom/htc/music/HtcMusic;I)V

    goto/16 :goto_0

    .line 4459
    :cond_25
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v22

    if-eqz v22, :cond_29

    .line 4461
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_9

    move-result v22

    if-nez v22, :cond_0

    .line 4467
    :cond_26
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->finish()V

    .line 4468
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 4469
    .local v20, targetIntent:Landroid/content/Intent;
    const/high16 v22, 0x1400

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const-class v23, Lcom/htc/music/MediaPlaybackErrorActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4473
    const-string v22, "pluginmode"

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4474
    const-string v22, "errorcause"

    const-string v23, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4477
    const/16 v18, 0x0

    .line 4478
    .local v18, szCurPluginName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_27

    .line 4480
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    invoke-interface/range {v22 .. v23}, Lcom/htc/music/IMediaPlaybackService;->getPluginName(I)Ljava/lang/String;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_a

    move-result-object v18

    .line 4485
    :cond_27
    :goto_8
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_28

    .line 4486
    const-string v22, ".DMCMusicPlaybackService"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_28

    .line 4487
    const-string v22, "[HtcMusic]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "DMC Error:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4463
    .end local v18           #szCurPluginName:Ljava/lang/String;
    .end local v20           #targetIntent:Landroid/content/Intent;
    :catch_9
    move-exception v9

    .line 4464
    .local v9, ex:Landroid/os/RemoteException;
    const-string v22, "[HtcMusic]"

    const-string v23, "Remote Exception in OS_ON_ERROR"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 4481
    .end local v9           #ex:Landroid/os/RemoteException;
    .restart local v18       #szCurPluginName:Ljava/lang/String;
    .restart local v20       #targetIntent:Landroid/content/Intent;
    :catch_a
    move-exception v7

    .line 4482
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    .line 4493
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 4494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 4496
    .end local v18           #szCurPluginName:Ljava/lang/String;
    .end local v20           #targetIntent:Landroid/content/Intent;
    :cond_29
    const-string v22, "[HtcMusic]"

    const-string v23, "Something error, we don\'t handle this intent action in local player."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4499
    .end local v8           #errorId:I
    :cond_2a
    const-string v22, "com.broadcom.bluetooth.avrcp"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2c

    .line 4500
    const-string v22, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "RefreshUI"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 4501
    const-string v22, "controls"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4503
    .local v6, controls:Ljava/lang/String;
    const-string v22, "shuffle"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_2b

    .line 4504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4700(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 4505
    :cond_2b
    const-string v22, "repeat"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 4506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 4508
    .end local v6           #controls:Ljava/lang/String;
    :cond_2c
    const-string v22, "com.htc.music.pluginservicebinded"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2d

    .line 4509
    const-string v22, "[HtcMusic]"

    const-string v23, "mStatusListener, Receive PLUGIN_SERVICE_BINDED"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 4511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x7

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 4512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x7

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 4513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 4514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 4517
    :cond_2d
    const-string v22, "[HtcMusic]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown action = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
