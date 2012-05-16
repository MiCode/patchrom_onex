.class Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;
.super Lcom/htc/music/util/DlArtAsyncQueryHandler;
.source "LandingPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentAlbumQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter
    .parameter "res"

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    .line 1217
    const/4 v0, 0x0

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z
    invoke-static {p1}, Lcom/htc/music/LandingPageActivity;->access$3700(Lcom/htc/music/LandingPageActivity;)Z

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;ZZ)V

    .line 1218
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 17
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1222
    const-string v14, "[LandingPage]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RecentAlbumQueryHandler, onQueryComplete(), token: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-gtz v14, :cond_4

    .line 1225
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->hideRecentlyAlbumDialogs()V
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1100(Lcom/htc/music/LandingPageActivity;)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 1227
    new-instance v1, Lcom/htc/music/LandingPageActivity$BaseItem;

    invoke-direct {v1}, Lcom/htc/music/LandingPageActivity$BaseItem;-><init>()V

    .line 1228
    .local v1, addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    const/4 v14, -0x2

    invoke-virtual {v1, v14}, Lcom/htc/music/LandingPageActivity$BaseItem;->setId(I)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    .end local v1           #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$3900(Lcom/htc/music/LandingPageActivity;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 1259
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$3900(Lcom/htc/music/LandingPageActivity;)Landroid/database/Cursor;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v15}, Lcom/htc/music/LandingPageActivity;->access$4000(Lcom/htc/music/LandingPageActivity;)Landroid/database/ContentObserver;

    move-result-object v15

    invoke-interface {v14, v15}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$3900(Lcom/htc/music/LandingPageActivity;)Landroid/database/Cursor;

    move-result-object v14

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    const/4 v15, 0x0

    #setter for: Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v14, v15}, Lcom/htc/music/LandingPageActivity;->access$3902(Lcom/htc/music/LandingPageActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1267
    :cond_2
    if-eqz p3, :cond_3

    .line 1268
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$4000(Lcom/htc/music/LandingPageActivity;)Landroid/database/ContentObserver;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1271
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v0, p3

    #setter for: Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v14, v0}, Lcom/htc/music/LandingPageActivity;->access$3902(Lcom/htc/music/LandingPageActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1272
    if-eqz p3, :cond_c

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-lez v14, :cond_c

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1274
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v7, v14, [Z

    .line 1275
    .local v7, existArray:[Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_6

    .line 1276
    const/4 v14, 0x0

    aput-boolean v14, v7, v8

    .line 1275
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1230
    .end local v7           #existArray:[Z
    .end local v8           #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$3800(Lcom/htc/music/LandingPageActivity;)[I

    move-result-object v14

    if-eqz v14, :cond_5

    .line 1231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 1232
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$3800(Lcom/htc/music/LandingPageActivity;)[I

    move-result-object v14

    array-length v14, v14

    if-ge v8, v14, :cond_1

    .line 1233
    new-instance v1, Lcom/htc/music/LandingPageActivity$BaseItem;

    invoke-direct {v1}, Lcom/htc/music/LandingPageActivity$BaseItem;-><init>()V

    .line 1234
    .restart local v1       #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$3800(Lcom/htc/music/LandingPageActivity;)[I

    move-result-object v14

    aget v14, v14, v8

    invoke-virtual {v1, v14}, Lcom/htc/music/LandingPageActivity$BaseItem;->setId(I)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1238
    .end local v1           #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    .end local v8           #i:I
    :cond_5
    const-string v14, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1239
    .local v11, ididx:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 1240
    .local v5, count:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1241
    const-string v14, "[LandingPage]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "count="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 1244
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    new-array v15, v5, [I

    #setter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static {v14, v15}, Lcom/htc/music/LandingPageActivity;->access$3802(Lcom/htc/music/LandingPageActivity;[I)[I

    .line 1245
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    if-ge v8, v5, :cond_1

    .line 1246
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1247
    .local v9, id:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$3800(Lcom/htc/music/LandingPageActivity;)[I

    move-result-object v14

    aput v9, v14, v8

    .line 1249
    new-instance v1, Lcom/htc/music/LandingPageActivity$BaseItem;

    invoke-direct {v1}, Lcom/htc/music/LandingPageActivity$BaseItem;-><init>()V

    .line 1250
    .restart local v1       #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$3800(Lcom/htc/music/LandingPageActivity;)[I

    move-result-object v14

    aget v14, v14, v8

    invoke-virtual {v1, v14}, Lcom/htc/music/LandingPageActivity$BaseItem;->setId(I)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1253
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 1245
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1260
    .end local v1           #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    .end local v5           #count:I
    .end local v8           #i:I
    .end local v9           #id:I
    .end local v11           #ididx:I
    :catch_0
    move-exception v6

    .line 1261
    .local v6, e:Ljava/lang/Exception;
    const-string v14, "[LandingPage]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mAlbumCursor error : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1279
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v7       #existArray:[Z
    .restart local v8       #i:I
    :cond_6
    const-string v14, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1280
    .local v10, idIdx:I
    const-string v14, "album"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1281
    .local v3, albumIdx:I
    const-string v14, "artist"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1282
    .local v4, artistIdx:I
    const-string v14, "album_art"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1283
    .local v2, albumArtIdx:I
    const/4 v8, 0x0

    :goto_4
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-ge v8, v14, :cond_9

    .line 1284
    const/4 v13, 0x0

    .local v13, j:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_7

    .line 1285
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/music/LandingPageActivity$BaseItem;

    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getId()I
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$4100(Lcom/htc/music/LandingPageActivity$BaseItem;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-ne v14, v15, :cond_8

    .line 1286
    const/4 v14, 0x1

    aput-boolean v14, v7, v13

    .line 1287
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/music/LandingPageActivity$BaseItem;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/music/LandingPageActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/music/LandingPageActivity$BaseItem;

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/music/LandingPageActivity$BaseItem;->setSecondaryText(Ljava/lang/String;)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/music/LandingPageActivity$BaseItem;

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/music/LandingPageActivity$BaseItem;->setArtPath(Ljava/lang/String;)V

    .line 1293
    :cond_7
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 1283
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1284
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1296
    .end local v13           #j:I
    :cond_9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    .local v12, inValidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/LandingPageActivity$BaseItem;>;"
    const/4 v8, 0x0

    :goto_6
    array-length v14, v7

    if-ge v8, v14, :cond_b

    .line 1298
    aget-boolean v14, v7, v8

    if-nez v14, :cond_a

    .line 1299
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1302
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1309
    .end local v2           #albumArtIdx:I
    .end local v3           #albumIdx:I
    .end local v4           #artistIdx:I
    .end local v7           #existArray:[Z
    .end local v8           #i:I
    .end local v10           #idIdx:I
    .end local v12           #inValidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/LandingPageActivity$BaseItem;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1000(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v14

    if-eqz v14, :cond_d

    .line 1310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v14}, Lcom/htc/music/LandingPageActivity;->access$1000(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->notifyDataSetChanged()V

    .line 1312
    :cond_d
    return-void
.end method
