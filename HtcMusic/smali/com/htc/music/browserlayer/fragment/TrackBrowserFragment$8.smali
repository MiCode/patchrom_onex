.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;
.super Ljava/lang/Object;
.source "TrackBrowserFragment.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1335
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 16
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1337
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iget-boolean v13, v13, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getAutoRequery()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1338
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 1341
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v13

    instance-of v13, v13, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;

    if-eqz v13, :cond_a

    .line 1343
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;

    .line 1344
    .local v4, c:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->moveItem(II)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_9

    .line 1347
    const/4 v2, 0x0

    .line 1349
    .local v2, bMove:Z
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_4

    .line 1350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v13

    add-int/lit8 v14, p1, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    :cond_1
    const/4 v2, 0x1

    .line 1357
    :cond_2
    add-int/lit8 v7, p1, 0x1

    .local v7, i:I
    :goto_0
    move/from16 v0, p2

    if-gt v7, v0, :cond_8

    .line 1358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v13

    add-int/lit8 v14, v7, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1365
    .end local v7           #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1366
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v13

    add-int/lit8 v14, p1, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    :cond_5
    const/4 v2, 0x1

    .line 1372
    :cond_6
    add-int/lit8 v7, p1, -0x1

    .restart local v7       #i:I
    :goto_1
    move/from16 v0, p2

    if-lt v7, v0, :cond_8

    .line 1373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1374
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v13

    add-int/lit8 v14, v7, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1381
    :cond_8
    if-eqz v2, :cond_9

    .line 1382
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    .end local v2           #bMove:Z
    .end local v7           #i:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v13

    check-cast v13, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    invoke-virtual {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->notifyDataSetChanged()V

    .line 1387
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1388
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    const/4 v14, 0x1

    #setter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDeletedOneRow:Z
    invoke-static {v13, v14}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1502(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Z)Z

    .line 1436
    .end local v4           #c:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;
    :goto_2
    return-void

    .line 1393
    :cond_a
    :try_start_0
    const-string v13, "external"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1600(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 1394
    .local v3, baseUri:Landroid/net/Uri;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1395
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "_id=?"

    .line 1396
    .local v11, where:Ljava/lang/String;
    const/4 v13, 0x1

    new-array v12, v13, [Ljava/lang/String;

    .line 1397
    .local v12, wherearg:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1399
    .local v8, res:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v13

    const-string v14, "play_order"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 1401
    .local v5, colidx:I
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_b

    .line 1403
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v13

    move/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1404
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1405
    .local v9, toidx:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v13

    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1406
    const-string v13, "play_order"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1407
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 1408
    invoke-virtual {v8, v3, v10, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1409
    add-int/lit8 v7, p1, 0x1

    .restart local v7       #i:I
    :goto_3
    move/from16 v0, p2

    if-gt v7, v0, :cond_c

    .line 1410
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1411
    const-string v13, "play_order"

    add-int/lit8 v14, v7, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1412
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 1413
    invoke-virtual {v8, v3, v10, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1409
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1415
    .end local v7           #i:I
    .end local v9           #toidx:I
    :cond_b
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_c

    .line 1417
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v13

    move/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1418
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1419
    .restart local v9       #toidx:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v13

    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1420
    const-string v13, "play_order"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1421
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 1422
    invoke-virtual {v8, v3, v10, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1423
    add-int/lit8 v7, p1, -0x1

    .restart local v7       #i:I
    :goto_4
    move/from16 v0, p2

    if-lt v7, v0, :cond_c

    .line 1424
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1425
    const-string v13, "play_order"

    add-int/lit8 v14, v7, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1426
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 1427
    invoke-virtual {v8, v3, v10, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1423
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 1431
    .end local v7           #i:I
    .end local v9           #toidx:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$8;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v13

    invoke-interface {v13}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1432
    .end local v3           #baseUri:Landroid/net/Uri;
    .end local v5           #colidx:I
    .end local v8           #res:Landroid/content/ContentResolver;
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v11           #where:Ljava/lang/String;
    .end local v12           #wherearg:[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1433
    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    const-string v13, "TrackBrowserActivity"

    const-string v14, "Failed to drop item."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
