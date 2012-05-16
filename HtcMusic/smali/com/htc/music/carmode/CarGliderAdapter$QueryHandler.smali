.class Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;
.super Lcom/htc/music/util/DlArtAsyncQueryHandler;
.source "CarGliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarGliderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarGliderAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/music/carmode/CarGliderAdapter;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter
    .parameter "cr"

    .prologue
    .line 872
    iput-object p1, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    .line 873
    const/4 v0, 0x0

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mIsEnhancerExist:Z
    invoke-static {p1}, Lcom/htc/music/carmode/CarGliderAdapter;->access$700(Lcom/htc/music/carmode/CarGliderAdapter;)Z

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;ZZ)V

    .line 874
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 878
    monitor-enter p0

    .line 880
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mCookie:J
    invoke-static {v5}, Lcom/htc/music/carmode/CarGliderAdapter;->access$800(Lcom/htc/music/carmode/CarGliderAdapter;)J

    move-result-wide v5

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 881
    const-string v5, "[CarGliderAdapter]"

    const-string v6, "cookie not match"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 924
    if-eqz p3, :cond_0

    .line 925
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 882
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 929
    :goto_0
    return-void

    .line 884
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    invoke-static {v5}, Lcom/htc/music/carmode/CarGliderAdapter;->access$200(Lcom/htc/music/carmode/CarGliderAdapter;)[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    if-nez p3, :cond_4

    .line 885
    :cond_2
    const-string v5, "[CarGliderAdapter]"

    const-string v6, "arguments invalid"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 924
    if-eqz p3, :cond_3

    .line 925
    :try_start_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 886
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 928
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 889
    :cond_4
    :try_start_4
    const-string v5, "album"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 890
    .local v0, albumColumnIndex:I
    const-string v5, "_id"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 891
    .local v4, idColumnIndex:I
    const-string v5, "album_art"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 892
    .local v2, artColumnIndex:I
    if-ltz v4, :cond_5

    if-ltz v2, :cond_5

    if-gez v0, :cond_7

    .line 893
    :cond_5
    const-string v5, "[CarGliderAdapter]"

    const-string v6, "onQueryComplete get column index failed"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 924
    if-eqz p3, :cond_6

    .line 925
    :try_start_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 894
    :cond_6
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 897
    :cond_7
    const/4 v1, 0x0

    .line 898
    .local v1, albumName:Ljava/lang/String;
    :try_start_6
    iget-object v5, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/music/carmode/CarGliderAdapter;->access$900(Lcom/htc/music/carmode/CarGliderAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 899
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 903
    :cond_8
    const/4 v5, -0x1

    iget-object v6, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mUnknownAlbumId:I
    invoke-static {v6}, Lcom/htc/music/carmode/CarGliderAdapter;->access$1000(Lcom/htc/music/carmode/CarGliderAdapter;)I

    move-result v6

    if-ne v5, v6, :cond_a

    .line 904
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 905
    if-eqz v1, :cond_9

    const-string v5, "<unknown>"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 906
    :cond_9
    iget-object v5, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    #setter for: Lcom/htc/music/carmode/CarGliderAdapter;->mUnknownAlbumId:I
    invoke-static {v5, v6}, Lcom/htc/music/carmode/CarGliderAdapter;->access$1002(Lcom/htc/music/carmode/CarGliderAdapter;I)I

    .line 910
    :cond_a
    iget-object v5, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/music/carmode/CarGliderAdapter;->access$900(Lcom/htc/music/carmode/CarGliderAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_8

    .line 915
    :cond_b
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v5, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    invoke-static {v5}, Lcom/htc/music/carmode/CarGliderAdapter;->access$200(Lcom/htc/music/carmode/CarGliderAdapter;)[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    move-result-object v5

    array-length v5, v5

    if-ge v3, v5, :cond_c

    .line 916
    iget-object v5, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    invoke-static {v5}, Lcom/htc/music/carmode/CarGliderAdapter;->access$200(Lcom/htc/music/carmode/CarGliderAdapter;)[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    move-result-object v5

    aget-object v6, v5, v3

    iget-object v5, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/music/carmode/CarGliderAdapter;->access$900(Lcom/htc/music/carmode/CarGliderAdapter;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    invoke-static {v7}, Lcom/htc/music/carmode/CarGliderAdapter;->access$200(Lcom/htc/music/carmode/CarGliderAdapter;)[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    move-result-object v7

    aget-object v7, v7, v3

    iget v7, v7, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v6, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    .line 915
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 920
    :cond_c
    iget-object v5, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    const/4 v6, 0x1

    #setter for: Lcom/htc/music/carmode/CarGliderAdapter;->mIsDownloadInfoQueried:Z
    invoke-static {v5, v6}, Lcom/htc/music/carmode/CarGliderAdapter;->access$1102(Lcom/htc/music/carmode/CarGliderAdapter;Z)Z

    .line 922
    iget-object v5, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    iget-object v6, p0, Lcom/htc/music/carmode/CarGliderAdapter$QueryHandler;->this$0:Lcom/htc/music/carmode/CarGliderAdapter;

    #getter for: Lcom/htc/music/carmode/CarGliderAdapter;->mSelectedPos:I
    invoke-static {v6}, Lcom/htc/music/carmode/CarGliderAdapter;->access$000(Lcom/htc/music/carmode/CarGliderAdapter;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/music/carmode/CarGliderAdapter;->requestAllBitmap(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 924
    if-eqz p3, :cond_d

    .line 925
    :try_start_7
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 928
    :cond_d
    monitor-exit p0

    goto/16 :goto_0

    .line 924
    .end local v0           #albumColumnIndex:I
    .end local v1           #albumName:Ljava/lang/String;
    .end local v2           #artColumnIndex:I
    .end local v3           #i:I
    .end local v4           #idColumnIndex:I
    :catchall_1
    move-exception v5

    if-eqz p3, :cond_e

    .line 925
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 924
    :cond_e
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method
