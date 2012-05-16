.class final Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
.super Landroid/os/Handler;
.source "DMPMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMPMusicPlaybackService;


# direct methods
.method public constructor <init>(Lcom/htc/music/DMPMusicPlaybackService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    .line 257
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 258
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .parameter "msg"

    .prologue
    .line 263
    const-string v23, "[DMPMusicPlaybackService]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "<< NonUIHandler >>, msg.what = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    .line 266
    .local v13, data:Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 269
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->initErrorRetryHandle()V
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$300(Lcom/htc/music/DMPMusicPlaybackService;)V

    .line 270
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const v24, 0x1f8b1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    const/4 v6, 0x1

    .line 271
    .local v6, changeSong:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/htc/music/DMPMusicPlaybackService;->prev(Z)V

    goto :goto_0

    .line 270
    .end local v6           #changeSong:Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 277
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->initErrorRetryHandle()V
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$300(Lcom/htc/music/DMPMusicPlaybackService;)V

    .line 278
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const v24, 0x1f8b1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/4 v6, 0x1

    .line 279
    .restart local v6       #changeSong:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/htc/music/DMPMusicPlaybackService;->next(ZZ)V

    goto :goto_0

    .line 278
    .end local v6           #changeSong:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 283
    :pswitch_2
    const-string v23, "uriPath"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 284
    .local v22, uriPath:Ljava/lang/String;
    if-eqz v22, :cond_3

    const-string v23, "htc-dlna"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 285
    const-string v23, "[DMPMusicPlaybackService]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MSG_SET_DATA_SOURCE, can NOT seek uriPath: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v23, "htc-dlna"

    const-string v24, "http"

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 289
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$200(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->setDataSourceAsync(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    .end local v22           #uriPath:Ljava/lang/String;
    :pswitch_3
    const-string v23, "[DMPMusicPlaybackService]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "#### case MSG_REQUEST_ALBUMART: mIsAlbumArtGetting = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v25 .. v25}, Lcom/htc/music/DMPMusicPlaybackService;->access$400(Lcom/htc/music/DMPMusicPlaybackService;)Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v13}, Landroid/os/Bundle;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_4

    .line 298
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 300
    .local v8, cv:Landroid/content/ContentValues;
    const-string v23, "shuffle"

    const-string v24, "shuffle"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    const-string v23, "position"

    const-string v24, "position"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v23, "server"

    const-string v24, "server"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v23, "content"

    const-string v24, "content"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v8           #cv:Landroid/content/ContentValues;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$400(Lcom/htc/music/DMPMusicPlaybackService;)Z

    move-result v23

    if-nez v23, :cond_e

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_d

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 314
    .restart local v8       #cv:Landroid/content/ContentValues;
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 315
    .local v12, cvShufflemode:Ljava/lang/Integer;
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 316
    .local v10, cvPosition:Ljava/lang/Integer;
    const/16 v21, 0x0

    .line 317
    .local v21, serverID:Ljava/lang/String;
    const/4 v7, 0x0

    .line 319
    .local v7, contentID:Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 320
    const-string v23, "shuffle"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 321
    const-string v23, "position"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 322
    const-string v23, "server"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 323
    const-string v23, "content"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 326
    :cond_5
    if-eqz v12, :cond_c

    if-eqz v10, :cond_c

    if-eqz v21, :cond_c

    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$600(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v23

    if-eqz v23, :cond_c

    .line 328
    const/16 v19, 0x1

    .line 330
    .local v19, isNeedToQuery:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 331
    const-string v23, "[DMPMusicPlaybackService]"

    const-string v24, "<<<<<<<<<<<<<< There is this content in hashtable...Check the file exists or not...>>>>>>>>>>>>>>>>"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/DMPMusicPlaybackService;->access$800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, albumArtFilePath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    .local v4, albumArtFile:Ljava/io/File;
    const-string v23, "[DMPMusicPlaybackService]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "<> path => "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 337
    const/16 v19, 0x0

    .line 338
    const-string v23, "[DMPMusicPlaybackService]"

    const-string v24, "<<< Don\'t query again...>>>"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .end local v4           #albumArtFile:Ljava/io/File;
    .end local v5           #albumArtFilePath:Ljava/lang/String;
    :cond_6
    :goto_3
    if-nez v19, :cond_b

    .line 352
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/DMPMusicPlaybackService;->access$800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 354
    .restart local v5       #albumArtFilePath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v23

    if-eqz v23, :cond_8

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v23

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const-string v25, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v5, v2}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_0

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v23

    const/16 v24, 0x2afc

    invoke-virtual/range {v23 .. v24}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 341
    .restart local v4       #albumArtFile:Ljava/io/File;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const/16 v19, 0x1

    .line 343
    const-string v23, "[DMPMusicPlaybackService]"

    const-string v24, "<<< There is no File...Need to query...>>>"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 359
    .end local v4           #albumArtFile:Ljava/io/File;
    :cond_8
    :try_start_1
    const-string v23, "[DMPMusicPlaybackService]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "case MSG_REQUEST_ALBUMART: shuffle on, mNotify is null...contentID: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", albumArtFilePath: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 370
    :catch_0
    move-exception v15

    .line 372
    .local v15, e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 363
    .end local v15           #e:Landroid/os/RemoteException;
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v23

    if-eqz v23, :cond_a

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v23

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const-string v25, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v5, v2}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 367
    :cond_a
    const-string v23, "[DMPMusicPlaybackService]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "case MSG_REQUEST_ALBUMART: shuffle off, mNotify is null...contentID: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", albumArtFilePath: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 383
    .end local v5           #albumArtFilePath:Ljava/lang/String;
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$600(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v23 .. v24}, Lcom/htc/music/DMPMusicPlaybackService;->access$402(Lcom/htc/music/DMPMusicPlaybackService;Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 385
    :catch_1
    move-exception v15

    .line 387
    .restart local v15       #e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 392
    .end local v15           #e:Landroid/os/RemoteException;
    .end local v19           #isNeedToQuery:Z
    :cond_c
    const-string v23, "[DMPMusicPlaybackService]"

    const-string v24, "case MSG_REQUEST_ALBUMART: current cv is incorrect. remove it and try next one."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_0

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v23

    const/16 v24, 0x2afc

    invoke-virtual/range {v23 .. v24}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 401
    .end local v7           #contentID:Ljava/lang/String;
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v10           #cvPosition:Ljava/lang/Integer;
    .end local v12           #cvShufflemode:Ljava/lang/Integer;
    .end local v21           #serverID:Ljava/lang/String;
    :cond_d
    const-string v23, "[DMPMusicPlaybackService]"

    const-string v24, "case MSG_REQUEST_ALBUMART: No album art request..."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 405
    :cond_e
    const-string v23, "[DMPMusicPlaybackService]"

    const-string v24, "#### case MSG_REQUEST_ALBUMART: Getting some album art now....ignore this time request..."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    :pswitch_4
    const-string v23, "adn_server"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 414
    .restart local v21       #serverID:Ljava/lang/String;
    const-string v23, "adn_content"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 415
    .restart local v7       #contentID:Ljava/lang/String;
    const-string v23, "adn_filepath"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 417
    .local v16, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_f

    .line 418
    const-string v23, "[DMPMusicPlaybackService]"

    const-string v24, "something wrong, this arraylist should not be empty at this moment."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 422
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 423
    .restart local v8       #cv:Landroid/content/ContentValues;
    if-nez v8, :cond_10

    .line 424
    const-string v23, "[DMPMusicPlaybackService]"

    const-string v24, "something wrong, this content value should not be null at this moment."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 428
    :cond_10
    const-string v23, "shuffle"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 429
    .local v12, cvShufflemode:I
    const-string v23, "position"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 430
    .local v10, cvPosition:I
    const-string v23, "content"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 431
    .local v9, cvContentID:Ljava/lang/String;
    const-string v23, "server"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 433
    .local v11, cvServerID:Ljava/lang/String;
    if-eqz v11, :cond_11

    if-eqz v9, :cond_11

    if-ltz v10, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$1100(Lcom/htc/music/DMPMusicPlaybackService;)I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_11

    if-eqz v12, :cond_12

    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_12

    .line 437
    :cond_11
    const-string v23, "[DMPMusicPlaybackService]"

    const-string v24, "something wrong, CV is incorrect."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 441
    :cond_12
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v23 .. v24}, Lcom/htc/music/DMPMusicPlaybackService;->access$402(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v23

    const/16 v24, 0x2afc

    invoke-virtual/range {v23 .. v24}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    .line 448
    if-nez v16, :cond_13

    .line 449
    const-string v23, "[DMPMusicPlaybackService]"

    const-string v24, "## case MSG_HANDLE_ALBUMART: filePath from middlelayer is null!!!!!!!!!!"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :cond_13
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 456
    .local v17, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    invoke-static {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$1200(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 458
    .local v3, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v23

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-lez v23, :cond_16

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v14

    .line 462
    .local v14, dlnapath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->ensurePathExists(Ljava/lang/String;)V
    invoke-static {v0, v14}, Lcom/htc/music/DMPMusicPlaybackService;->access$1300(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->eraseAllFilesIfNeeded(Ljava/lang/String;)V
    invoke-static {v0, v14}, Lcom/htc/music/DMPMusicPlaybackService;->access$1400(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)V

    .line 465
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 467
    .restart local v5       #albumArtFilePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    invoke-static {v0, v3, v5}, Lcom/htc/music/DMPMusicPlaybackService;->access$1500(Lcom/htc/music/DMPMusicPlaybackService;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/Hashtable;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_14

    .line 474
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v23

    const-string v24, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v10, v5, v1}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    .line 494
    :goto_5
    :try_start_5
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 495
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 477
    :cond_14
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v23

    const-string v24, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v10, v5, v1}, Lcom/htc/music/IPluginIPCNotify;->onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 480
    :catch_2
    move-exception v15

    .line 482
    .restart local v15       #e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 483
    .end local v15           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v15

    .line 485
    .local v15, e:Ljava/lang/NullPointerException;
    const-string v23, "[DMPMusicPlaybackService]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "case MSG_HANDLE_ALBUMART: NullPointerException... mNotify => "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v15}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_5

    .line 490
    .end local v15           #e:Ljava/lang/NullPointerException;
    :cond_15
    const-string v23, "[DMPMusicPlaybackService]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Handle Album Art...fail to save file to SD card...filePath = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 496
    :catch_4
    move-exception v15

    .line 498
    .local v15, e:Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 502
    .end local v5           #albumArtFilePath:Ljava/lang/String;
    .end local v14           #dlnapath:Ljava/lang/String;
    .end local v15           #e:Ljava/io/IOException;
    :cond_16
    const-string v23, "[DMPMusicPlaybackService]"

    const-string v24, "Handle Album Art...afDescriptor is null or length is 0..."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 508
    .end local v3           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .end local v17           #filename:Ljava/lang/String;
    :cond_17
    const-string v23, "[DMPMusicPlaybackService]"

    const-string v24, "Handle Album Art...Incorrect Server/content..."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 515
    .end local v7           #contentID:Ljava/lang/String;
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v9           #cvContentID:Ljava/lang/String;
    .end local v10           #cvPosition:I
    .end local v11           #cvServerID:Ljava/lang/String;
    .end local v12           #cvShufflemode:I
    .end local v16           #filePath:Ljava/lang/String;
    .end local v21           #serverID:Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z
    invoke-static/range {v23 .. v24}, Lcom/htc/music/DMPMusicPlaybackService;->access$402(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    goto/16 :goto_0

    .line 520
    :pswitch_6
    const-string v23, "interval"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 522
    .local v18, interval:I
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->getNowplayingQueue(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 523
    :catch_5
    move-exception v15

    .line 525
    .local v15, e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 531
    .end local v15           #e:Landroid/os/RemoteException;
    .end local v18           #interval:I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->requestUpperDoNext(Z)V
    invoke-static/range {v23 .. v24}, Lcom/htc/music/DMPMusicPlaybackService;->access$1600(Lcom/htc/music/DMPMusicPlaybackService;Z)V

    goto/16 :goto_0

    .line 535
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$200(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    move-result-object v23

    if-eqz v23, :cond_18

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    invoke-static/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService;->access$200(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->release()V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    invoke-static/range {v23 .. v24}, Lcom/htc/music/DMPMusicPlaybackService;->access$202(Lcom/htc/music/DMPMusicPlaybackService;Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    .line 539
    :cond_18
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->getLooper()Landroid/os/Looper;

    move-result-object v20

    .line 541
    .local v20, looper:Landroid/os/Looper;
    if-eqz v20, :cond_0

    .line 542
    invoke-virtual/range {v20 .. v20}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x2af9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
