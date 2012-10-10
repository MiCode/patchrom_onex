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
    .line 4246
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
    .line 4249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mUINotInit:Z
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5100(Lcom/htc/music/HtcMusic;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 4552
    :cond_0
    :goto_0
    return-void

    .line 4251
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 4252
    .local v3, action:Ljava/lang/String;
    const-string v22, "com.htc.music.metachanged"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 4253
    const-string v22, "[HtcMusic]"

    const-string v23, "==========META_CHANGED"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x7

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 4258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)V

    .line 4259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 4261
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

    .line 4262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x1

    #calls: Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    invoke-static/range {v22 .. v24}, Lcom/htc/music/HtcMusic;->access$3500(Lcom/htc/music/HtcMusic;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4271
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 4273
    const/4 v12, 0x0

    .line 4274
    .local v12, nSelectPos:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 4275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v12

    .line 4276
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 4278
    if-ltz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/music/GliderAdapter;->getItemCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_6

    .line 4280
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

    .line 4291
    .end local v12           #nSelectPos:I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5400(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5400(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->isShowing()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 4293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/HtcMusic;->access$5400(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->syncUpdateCurrentAlbum(Landroid/app/Dialog;)V

    goto/16 :goto_0

    .line 4264
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 4265
    :catch_0
    move-exception v22

    goto/16 :goto_1

    .line 4282
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

    .line 4284
    :catch_1
    move-exception v7

    .line 4285
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 4286
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v9

    .line 4287
    .local v9, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 4294
    .end local v9           #ex:Ljava/lang/NullPointerException;
    .end local v12           #nSelectPos:I
    :cond_7
    const-string v22, "com.htc.music.playbackcomplete"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 4295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->mPaused:Z
    invoke-static/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->access$5502(Lcom/htc/music/HtcMusic;Z)Z

    .line 4296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 4297
    :cond_8
    const-string v22, "com.htc.music.playstatechanged"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 4299
    const-string v22, "extrastate"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4300
    .local v10, extraState:Ljava/lang/String;
    if-eqz v10, :cond_b

    .line 4301
    const-string v22, "[HtcMusic]"

    const-string v23, "==========PLAYSTATE_CHANGED extraState"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->access$5600(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4304
    .local v19, szTitleInfo:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 4305
    const-string v22, "buffering"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 4306
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
    invoke-static/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->access$5600(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4312
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/ActionBarText;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5800(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 4314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    #calls: Lcom/htc/music/HtcMusic;->setSecondaryTitle(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$5900(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4307
    :cond_a
    const-string v22, "waiting"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 4308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v23, v0

    const v24, 0x7f0701d8

    invoke-virtual/range {v23 .. v24}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->access$5600(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto :goto_3

    .line 4319
    .end local v19           #szTitleInfo:Ljava/lang/String;
    :cond_b
    const-string v22, "[HtcMusic]"

    const-string v23, "==========PLAYSTATE_CHANGED"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)V

    .line 4323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 4325
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

    .line 4326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mPaused:Z
    invoke-static/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->access$5502(Lcom/htc/music/HtcMusic;Z)Z

    .line 4327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J

    move-result-wide v13

    .line 4328
    .local v13, next:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    invoke-static {v0, v13, v14}, Lcom/htc/music/HtcMusic;->access$3500(Lcom/htc/music/HtcMusic;J)V

    goto/16 :goto_0

    .line 4333
    .end local v13           #next:J
    :catch_3
    move-exception v22

    goto/16 :goto_0

    .line 4330
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->mPaused:Z
    invoke-static/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->access$5502(Lcom/htc/music/HtcMusic;Z)Z

    .line 4331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 4337
    .end local v10           #extraState:Ljava/lang/String;
    :cond_d
    const-string v22, "com.htc.music.rotateleft"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 4338
    const-string v22, "[HtcMusic]"

    const-string v23, "==========ANIMATION_MOVE_PREV"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    .line 4341
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$6000(Lcom/htc/music/HtcMusic;)I

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

    .line 4342
    .local v4, bAnimated:Z
    :goto_4
    if-nez v4, :cond_f

    .line 4343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 4344
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

    .line 4357
    .end local v4           #bAnimated:Z
    :catch_4
    move-exception v7

    .line 4358
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4341
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_e
    const/4 v4, 0x0

    goto :goto_4

    .line 4348
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

    .line 4349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueueSize()I

    move-result v11

    .line 4350
    .local v11, len:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v15

    .line 4351
    .local v15, pos:I
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_10

    .line 4352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    add-int/lit8 v23, v11, -0x1

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 4353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V

    goto/16 :goto_0

    .line 4355
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

    .line 4361
    .end local v4           #bAnimated:Z
    .end local v11           #len:I
    .end local v15           #pos:I
    :cond_11
    const-string v22, "[HtcMusic]"

    const-string v23, "Bad! Service is null at aniamtion"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4363
    :cond_12
    const-string v22, "com.htc.music.rotateright"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 4364
    const-string v22, "[HtcMusic]"

    const-string v23, "==========ANIMATION_MOVE_NEXT"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16

    .line 4367
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$6000(Lcom/htc/music/HtcMusic;)I

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

    .line 4368
    .restart local v4       #bAnimated:Z
    :goto_5
    if-nez v4, :cond_14

    .line 4369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 4370
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

    .line 4383
    .end local v4           #bAnimated:Z
    :catch_5
    move-exception v7

    .line 4384
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4367
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v4, 0x0

    goto :goto_5

    .line 4374
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

    .line 4375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v15

    .line 4376
    .restart local v15       #pos:I
    if-nez v15, :cond_15

    .line 4377
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

    .line 4378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V

    goto/16 :goto_0

    .line 4380
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollTo(I)V

    .line 4381
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

    .line 4387
    .end local v4           #bAnimated:Z
    .end local v15           #pos:I
    :cond_16
    const-string v22, "[HtcMusic]"

    const-string v23, "Bad! Service is null at aniamtion"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4389
    :cond_17
    const-string v22, "com.htc.music.rotatecircle_next"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 4391
    const-string v22, "[HtcMusic]"

    const-string v23, "==========ANIMATION_ROTATE_SELF_NEXT"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #calls: Lcom/htc/music/HtcMusic;->onAnimationRotateSelf(Z)V
    invoke-static/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->access$6100(Lcom/htc/music/HtcMusic;Z)V

    goto/16 :goto_0

    .line 4393
    :cond_18
    const-string v22, "com.htc.music.rotatecircle_previous"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 4395
    const-string v22, "[HtcMusic]"

    const-string v23, "==========ANIMATION_ROTATE_SELF_PREV"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/htc/music/HtcMusic;->onAnimationRotateSelf(Z)V
    invoke-static/range {v22 .. v23}, Lcom/htc/music/HtcMusic;->access$6100(Lcom/htc/music/HtcMusic;Z)V

    goto/16 :goto_0

    .line 4397
    :cond_19
    const-string v22, "com.htc.music.rotatequickly"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 4398
    const-string v22, "[HtcMusic]"

    const-string v23, "==========ANIMATION_ROTATE_CIRCLE_QUICK"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4399
    :cond_1a
    const-string v22, "com.htc.music.queuechanged"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 4400
    const-string v22, "[HtcMusic]"

    const-string v23, "==========QUEUE_CHANGED"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    if-eqz v22, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 4403
    const-string v22, "[HtcMusic]"

    const-string v23, "remove message PLAY_ALBUM since QUEUE_CHANGED"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 4407
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1c

    .line 4409
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v16

    .line 4410
    .local v16, queueSize:I
    if-gtz v16, :cond_1c

    .line 4411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    if-eqz v22, :cond_1c

    .line 4412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x6

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 4413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x6

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_6

    .line 4422
    .end local v16           #queueSize:I
    :cond_1c
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->updateGlider()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$6200(Lcom/htc/music/HtcMusic;)V

    .line 4423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x7

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 4417
    :catch_6
    move-exception v7

    .line 4418
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 4424
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_1d
    const-string v22, "com.htc.music.shuffle"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 4425
    const-string v22, "[HtcMusic]"

    const-string v23, "==========ANIMATION_SHUFFLE "

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 4428
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 4429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 4430
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
    invoke-static/range {v23 .. v23}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)I

    move-result v23

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 4432
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

    .line 4433
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

    .line 4435
    :catch_7
    move-exception v7

    .line 4436
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4439
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_1e
    const-string v22, "com.htc.music.refresh"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 4440
    const-string v22, "[HtcMusic]"

    const-string v23, "==========ANIMATION_REFRESH "

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->animationRefresh()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$3400(Lcom/htc/music/HtcMusic;)V

    .line 4442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x7

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 4443
    :cond_1f
    const-string v22, "com.htc.music.changeart"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    .line 4444
    const-string v22, "[HtcMusic]"

    const-string v23, "==========ANIMATION_CHANGE_ART "

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 4447
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

    .line 4449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v21

    .line 4451
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

    .line 4452
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
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$6400(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4454
    const/4 v5, 0x1

    .line 4455
    .local v5, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$6400(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_20

    if-eqz v21, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$6400(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 4457
    const/4 v5, 0x0

    .line 4460
    :cond_20
    if-eqz v5, :cond_0

    .line 4461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    #setter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$6402(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    .line 4462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v12

    .line 4464
    .restart local v12       #nSelectPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v22

    if-eqz v22, :cond_22

    .line 4466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v22

    if-eqz v22, :cond_21

    .line 4467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/music/GliderAdapter;->clearAllCache()V

    .line 4468
    const/4 v12, 0x0

    .line 4470
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V

    .line 4472
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

    .line 4480
    .end local v5           #changed:Z
    .end local v12           #nSelectPos:I
    .end local v21           #temp:Ljava/lang/String;
    :catch_8
    move-exception v7

    .line 4481
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4476
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

    .line 4478
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

    .line 4484
    .end local v17           #selectedPos:I
    :cond_24
    const-string v22, "com.htc.music.onerror"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2a

    .line 4485
    const-string v22, "[HtcMusic]"

    const-string v23, "==========OS_ON_ERROR "

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4486
    const-string v22, "error_id"

    const/16 v23, -0x2710

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 4488
    .local v8, errorId:I
    const/16 v22, -0x2710

    move/from16 v0, v22

    if-eq v8, v0, :cond_25

    .line 4489
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

    .line 4490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/HtcMusic;->handleDMCError(I)V
    invoke-static {v0, v8}, Lcom/htc/music/HtcMusic;->access$6500(Lcom/htc/music/HtcMusic;I)V

    goto/16 :goto_0

    .line 4491
    :cond_25
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v22

    if-eqz v22, :cond_29

    .line 4493
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

    .line 4499
    :cond_26
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->finish()V

    .line 4500
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 4501
    .local v20, targetIntent:Landroid/content/Intent;
    const/high16 v22, 0x1400

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const-class v23, Lcom/htc/music/MediaPlaybackErrorActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4505
    const-string v22, "pluginmode"

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4506
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

    .line 4509
    const/16 v18, 0x0

    .line 4510
    .local v18, szCurPluginName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v22, v0

    if-eqz v22, :cond_27

    .line 4512
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

    .line 4517
    :cond_27
    :goto_8
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_28

    .line 4518
    const-string v22, ".DMCMusicPlaybackService"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_28

    .line 4519
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

    .line 4495
    .end local v18           #szCurPluginName:Ljava/lang/String;
    .end local v20           #targetIntent:Landroid/content/Intent;
    :catch_9
    move-exception v9

    .line 4496
    .local v9, ex:Landroid/os/RemoteException;
    const-string v22, "[HtcMusic]"

    const-string v23, "Remote Exception in OS_ON_ERROR"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 4513
    .end local v9           #ex:Landroid/os/RemoteException;
    .restart local v18       #szCurPluginName:Ljava/lang/String;
    .restart local v20       #targetIntent:Landroid/content/Intent;
    :catch_a
    move-exception v7

    .line 4514
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    .line 4525
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 4526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 4528
    .end local v18           #szCurPluginName:Ljava/lang/String;
    .end local v20           #targetIntent:Landroid/content/Intent;
    :cond_29
    const-string v22, "[HtcMusic]"

    const-string v23, "Something error, we don\'t handle this intent action in local player."

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4531
    .end local v8           #errorId:I
    :cond_2a
    const-string v22, "com.broadcom.bluetooth.avrcp"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2c

    .line 4532
    const-string v22, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "RefreshUI"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 4533
    const-string v22, "controls"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4535
    .local v6, controls:Ljava/lang/String;
    const-string v22, "shuffle"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_2b

    .line 4536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4900(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 4537
    :cond_2b
    const-string v22, "repeat"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 4538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #calls: Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$5000(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 4540
    .end local v6           #controls:Ljava/lang/String;
    :cond_2c
    const-string v22, "com.htc.music.pluginservicebinded"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2d

    .line 4541
    const-string v22, "[HtcMusic]"

    const-string v23, "mStatusListener, Receive PLUGIN_SERVICE_BINDED"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 4543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x7

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 4544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x7

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 4545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 4546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 4549
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
