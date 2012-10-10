.class final Lcom/htc/music/HtcMusic$NonUiHandler;
.super Landroid/os/Handler;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method public constructor <init>(Lcom/htc/music/HtcMusic;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 5752
    iput-object p1, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    .line 5753
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5754
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 5759
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 6086
    :pswitch_0
    const-string v12, "[HtcMusic]"

    const-string v13, "Something wrong in NonUiHandler.handleMessage()."

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6088
    :cond_0
    :goto_0
    return-void

    .line 5762
    :pswitch_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5763
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v12, v12, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v12, :cond_3

    .line 5765
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mRetryCount:I
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7900(Lcom/htc/music/HtcMusic;)I

    move-result v12

    const/16 v13, 0x64

    if-gt v12, v13, :cond_1

    .line 5766
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 5767
    const/4 v12, 0x1

    const-wide/16 v13, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5768
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7908(Lcom/htc/music/HtcMusic;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5782
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    :goto_2
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 5772
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v13, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mRetryCount:I
    invoke-static {v12, v13}, Lcom/htc/music/HtcMusic;->access$7902(Lcom/htc/music/HtcMusic;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5779
    :catch_0
    move-exception v3

    .line 5780
    .local v3, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5782
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    .end local v3           #e:Landroid/os/RemoteException;
    :goto_3
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5784
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$8000(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v12

    if-nez v12, :cond_2

    .line 5785
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    const-string v14, "Music"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    #setter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v12, v13}, Lcom/htc/music/HtcMusic;->access$8002(Lcom/htc/music/HtcMusic;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 5789
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$8000(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "category"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 5791
    .local v1, category:I
    const/4 v12, -0x1

    if-lt v1, v12, :cond_0

    const/16 v12, 0x16

    if-gt v1, v12, :cond_0

    .line 5794
    const/16 v12, 0x15

    if-ne v1, v12, :cond_4

    .line 5795
    const-string v12, "[HtcMusic]"

    const-string v13, "category: NpCategory.CATEGORY_DONT_REFRESH"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5776
    .end local v1           #category:I
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v12, v12, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v12

    if-eqz v12, :cond_12

    .line 5782
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    goto :goto_2

    :catchall_0
    move-exception v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v13}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v12

    .line 5799
    .restart local v1       #category:I
    :cond_4
    const/4 v12, -0x1

    if-ne v1, v12, :cond_5

    .line 5800
    const/4 v1, 0x0

    .line 5802
    :cond_5
    const/4 v2, 0x0

    .line 5803
    .local v2, cursor:Landroid/database/Cursor;
    new-instance v7, Lcom/htc/music/NpCategory;

    int-to-short v12, v1

    invoke-direct {v7, v12}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 5804
    .local v7, npc:Lcom/htc/music/NpCategory;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$8000(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "artistid"

    const/4 v14, -0x1

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/htc/music/NpCategory;->setArtistId(I)Lcom/htc/music/NpCategory;

    .line 5805
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$8000(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "albumid"

    const/4 v14, -0x1

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/htc/music/NpCategory;->setAlbumId(I)Lcom/htc/music/NpCategory;

    .line 5806
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$8000(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "genreid"

    const/4 v14, -0x2

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/htc/music/NpCategory;->setGenreId(I)Lcom/htc/music/NpCategory;

    .line 5807
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$8000(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "composer"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 5808
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$8000(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "playlistid"

    const/4 v14, -0x1

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;

    .line 5810
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v12}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/htc/music/NpCategory;->query(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    .line 5811
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_6

    .line 5812
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->setPlaylist(Landroid/database/Cursor;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5817
    :goto_4
    if-eqz v2, :cond_0

    .line 5818
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5819
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 5814
    :cond_6
    :try_start_5
    const-string v12, "[HtcMusic]"

    const-string v13, "NpCategory.query: cursor == null."

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 5817
    :catchall_1
    move-exception v12

    if-eqz v2, :cond_7

    .line 5818
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5819
    const/4 v2, 0x0

    .line 5817
    :cond_7
    throw v12

    .line 5827
    .end local v1           #category:I
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v7           #npc:Lcom/htc/music/NpCategory;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/HtcMusic;->access$8100(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5828
    .local v10, style:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "savestatus"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 5833
    .local v8, saveStatus:I
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5834
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v12, v12, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v12, :cond_9

    .line 5835
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v12, v12, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v13, 0x1

    invoke-interface {v12, v10, v13, v8}, Lcom/htc/music/IMediaPlaybackService;->setAudioEffect(Ljava/lang/String;ZI)V

    .line 5836
    const/4 v12, 0x2

    if-ne v8, v12, :cond_8

    .line 5842
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v12}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 5844
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v10, v12}, Lcom/htc/music/util/SoundEffectHelper;->setEqualizerStyle(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 5855
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    :goto_6
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 5849
    :cond_9
    :try_start_7
    const-string v12, "[HtcMusic]"

    const-string v13, "case SET_SOUND_EFFECT: mService is null."

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .line 5852
    :catch_1
    move-exception v3

    .line 5853
    .local v3, e:Ljava/lang/Exception;
    :try_start_8
    const-string v12, "[HtcMusic]"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 5855
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    goto :goto_6

    .end local v3           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v13}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v12

    .line 5862
    .end local v8           #saveStatus:I
    .end local v10           #style:Ljava/lang/String;
    :pswitch_3
    :try_start_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5863
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v12, v12, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v13, v13, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z

    move-result v13

    if-ne v12, v13, :cond_a

    .line 5865
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v12, v12, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 5866
    const-string v12, "[HtcMusic]"

    const-string v13, "###### case CHECK_PLUGIN_SERVICE_STATE: Close error state if exists. $$$$$$$"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5868
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.htc.music.finisherroractivity"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5870
    .local v5, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v12, v5}, Lcom/htc/music/HtcMusic;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    .line 5893
    .end local v5           #intent:Landroid/content/Intent;
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    :goto_8
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 5872
    :cond_b
    :try_start_a
    const-string v12, "[HtcMusic]"

    const-string v13, "###### case CHECK_PLUGIN_SERVICE_STATE: Go to plugin error state!!! ######"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5874
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v12}, Lcom/htc/music/HtcMusic;->finish()V

    .line 5875
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 5876
    .local v11, targetIntent:Landroid/content/Intent;
    const/high16 v12, 0x1400

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5878
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    const-class v13, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5880
    const-string v12, "pluginmode"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5881
    const-string v12, "errorcause"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v13, v13, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5883
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v12, v11}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 5885
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_7

    .line 5890
    .end local v11           #targetIntent:Landroid/content/Intent;
    :catch_2
    move-exception v3

    .line 5891
    .local v3, e:Landroid/os/RemoteException;
    :try_start_b
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 5893
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    goto :goto_8

    .end local v3           #e:Landroid/os/RemoteException;
    :catchall_3
    move-exception v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v13}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v12

    .line 5961
    :pswitch_4
    const-string v12, "[HtcMusic]"

    const-string v13, "msg.what = CHECK_ERROR_STATE"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5966
    :try_start_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5967
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v12, v12, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3

    if-nez v12, :cond_c

    .line 5990
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    :goto_9
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 5971
    :cond_c
    :try_start_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v12, v12, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v12

    if-gez v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v12, v12, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v12

    if-nez v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v12, v12, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v12, v12, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v12

    if-lez v12, :cond_13

    .line 5975
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    new-instance v13, Lcom/htc/music/HtcMusic$NonUiHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/htc/music/HtcMusic$NonUiHandler$1;-><init>(Lcom/htc/music/HtcMusic$NonUiHandler;)V

    invoke-virtual {v12, v13}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3

    .line 5990
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    goto :goto_9

    .line 5987
    :catch_3
    move-exception v4

    .line 5988
    .local v4, ex:Landroid/os/RemoteException;
    :try_start_e
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 5990
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    .end local v4           #ex:Landroid/os/RemoteException;
    :goto_a
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5997
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v12}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    if-nez v12, :cond_0

    .line 5999
    :try_start_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v12, v12, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v6

    .line 6000
    .local v6, len:I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 6007
    .local v9, status:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mShowEmptyQueue:Z
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$8400(Lcom/htc/music/HtcMusic;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 6010
    if-gtz v6, :cond_e

    const-string v12, "mounted"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 6013
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    new-instance v13, Lcom/htc/music/HtcMusic$NonUiHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/htc/music/HtcMusic$NonUiHandler$2;-><init>(Lcom/htc/music/HtcMusic$NonUiHandler;)V

    invoke-virtual {v12, v13}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_4

    .line 6055
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 6056
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    .end local v6           #len:I
    .end local v9           #status:Ljava/lang/String;
    :goto_b
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 5990
    :catchall_4
    move-exception v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v13}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v12

    .line 6024
    .restart local v6       #len:I
    .restart local v9       #status:Ljava/lang/String;
    :cond_e
    :try_start_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-boolean v12, v12, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v12, :cond_f

    const-string v12, "mounted"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 6026
    const-string v12, "[HtcMusic]"

    const-string v13, "now playing view is on"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4

    .line 6055
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 6056
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    goto :goto_b

    .line 6035
    :cond_f
    :try_start_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    new-instance v13, Lcom/htc/music/HtcMusic$NonUiHandler$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6}, Lcom/htc/music/HtcMusic$NonUiHandler$3;-><init>(Lcom/htc/music/HtcMusic$NonUiHandler;I)V

    invoke-virtual {v12, v13}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4

    .line 6055
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 6056
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    goto :goto_b

    .line 6052
    .end local v6           #len:I
    .end local v9           #status:Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 6053
    .restart local v4       #ex:Landroid/os/RemoteException;
    :try_start_12
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 6055
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 6056
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    goto :goto_b

    .line 6055
    .end local v4           #ex:Landroid/os/RemoteException;
    :catchall_5
    move-exception v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v13}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 6056
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v13}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6055
    :cond_10
    throw v12

    .line 6065
    :pswitch_5
    :try_start_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6066
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v12, v12, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    if-eqz v12, :cond_11

    .line 6068
    :try_start_14
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    if-ltz v12, :cond_11

    .line 6069
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v12, v12, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v12, v13}, Lcom/htc/music/IMediaPlaybackService;->playAlbum(I)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_5

    .line 6076
    :cond_11
    :goto_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 6071
    :catch_5
    move-exception v3

    .line 6072
    .restart local v3       #e:Landroid/os/RemoteException;
    :try_start_15
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    goto :goto_c

    .line 6076
    .end local v3           #e:Landroid/os/RemoteException;
    :catchall_6
    move-exception v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v13}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v12

    .line 6082
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->updateTrackInfoP()V
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$8500(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 5782
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    goto/16 :goto_3

    .line 5990
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v12}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v12

    goto/16 :goto_a

    .line 5759
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
