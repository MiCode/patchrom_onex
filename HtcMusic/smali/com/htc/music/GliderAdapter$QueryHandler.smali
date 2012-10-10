.class Lcom/htc/music/GliderAdapter$QueryHandler;
.super Lcom/htc/music/util/DlArtAsyncQueryHandler;
.source "GliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/GliderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/GliderAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/music/GliderAdapter;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter
    .parameter "cr"

    .prologue
    .line 803
    iput-object p1, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    .line 804
    const/4 v0, 0x0

    #getter for: Lcom/htc/music/GliderAdapter;->mIsEnhancerExist:Z
    invoke-static {p1}, Lcom/htc/music/GliderAdapter;->access$600(Lcom/htc/music/GliderAdapter;)Z

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;ZZ)V

    .line 805
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 809
    monitor-enter p0

    .line 811
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mCookie:J
    invoke-static {v5}, Lcom/htc/music/GliderAdapter;->access$700(Lcom/htc/music/GliderAdapter;)J

    move-result-wide v5

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 812
    const-string v5, "[GliderAdapter]"

    const-string v6, "cookie not match"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 854
    if-eqz p3, :cond_0

    .line 855
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 813
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    :goto_0
    return-void

    .line 815
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v5}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    if-nez p3, :cond_4

    .line 816
    :cond_2
    const-string v5, "[GliderAdapter]"

    const-string v6, "arguments invalid"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 854
    if-eqz p3, :cond_3

    .line 855
    :try_start_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 817
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 858
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 820
    :cond_4
    :try_start_4
    const-string v5, "album"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 821
    .local v0, albumColumnIndex:I
    const-string v5, "_id"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 822
    .local v4, idColumnIndex:I
    const-string v5, "album_art"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 823
    .local v2, artColumnIndex:I
    if-ltz v4, :cond_5

    if-ltz v2, :cond_5

    if-gez v0, :cond_7

    .line 824
    :cond_5
    const-string v5, "[GliderAdapter]"

    const-string v6, "onQueryComplete get column index failed"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 854
    if-eqz p3, :cond_6

    .line 855
    :try_start_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 825
    :cond_6
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 828
    :cond_7
    const/4 v1, 0x0

    .line 829
    .local v1, albumName:Ljava/lang/String;
    :try_start_6
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/music/GliderAdapter;->access$800(Lcom/htc/music/GliderAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 830
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 834
    :cond_8
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 835
    if-eqz v1, :cond_9

    const-string v5, "<unknown>"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 836
    :cond_9
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/music/GliderAdapter;->access$800(Lcom/htc/music/GliderAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "<unknown>"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_8

    .line 845
    :cond_a
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v5}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v5

    array-length v5, v5

    if-ge v3, v5, :cond_d

    .line 846
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v5}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v5

    aget-object v6, v5, v3

    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/music/GliderAdapter;->access$800(Lcom/htc/music/GliderAdapter;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v7}, Lcom/htc/music/GliderAdapter;->access$200(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v7

    aget-object v7, v7, v3

    iget v7, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v6, Lcom/htc/music/GliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    .line 845
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 839
    .end local v3           #i:I
    :cond_b
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/music/GliderAdapter;->access$800(Lcom/htc/music/GliderAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 854
    .end local v0           #albumColumnIndex:I
    .end local v1           #albumName:Ljava/lang/String;
    .end local v2           #artColumnIndex:I
    .end local v4           #idColumnIndex:I
    :catchall_1
    move-exception v5

    if-eqz p3, :cond_c

    .line 855
    :try_start_7
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 854
    :cond_c
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 850
    .restart local v0       #albumColumnIndex:I
    .restart local v1       #albumName:Ljava/lang/String;
    .restart local v2       #artColumnIndex:I
    .restart local v3       #i:I
    .restart local v4       #idColumnIndex:I
    :cond_d
    :try_start_8
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    const/4 v6, 0x1

    #setter for: Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z
    invoke-static {v5, v6}, Lcom/htc/music/GliderAdapter;->access$902(Lcom/htc/music/GliderAdapter;Z)Z

    .line 852
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    iget-object v6, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mSelectedPos:I
    invoke-static {v6}, Lcom/htc/music/GliderAdapter;->access$000(Lcom/htc/music/GliderAdapter;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 854
    if-eqz p3, :cond_e

    .line 855
    :try_start_9
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 858
    :cond_e
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0
.end method
