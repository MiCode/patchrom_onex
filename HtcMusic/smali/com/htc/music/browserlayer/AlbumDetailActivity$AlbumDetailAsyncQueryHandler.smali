.class Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AlbumDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumDetailAsyncQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 2021
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    .line 2022
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 2023
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const v4, 0x7f070037

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2027
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 2029
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->decreaseQueryingCount()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    .line 2031
    sparse-switch p1, :sswitch_data_0

    .line 2101
    :cond_0
    :goto_0
    return-void

    .line 2033
    :sswitch_0
    if-nez p3, :cond_1

    .line 2034
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->removeMessages(I)V

    .line 2035
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->clearQueryingCount()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$4000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    .line 2036
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showDatabaseErrorUI()V

    goto :goto_0

    .line 2040
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 2041
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->removeMessages(I)V

    .line 2042
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->clearQueryingCount()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$4000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    .line 2043
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showEmptyViewUI(I)V

    .line 2044
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2048
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->mergeDlAlbumArt(Landroid/database/Cursor;)V

    goto :goto_0

    .line 2052
    :sswitch_1
    if-nez p3, :cond_3

    .line 2053
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showDatabaseErrorUI()V

    goto :goto_0

    .line 2057
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 2058
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showEmptyViewUI(I)V

    .line 2059
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2063
    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->hideEmptyErrorViewUI()V

    .line 2065
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    monitor-enter v1

    .line 2066
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2067
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2068
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v4, 0x0

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2070
    :cond_5
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2071
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2072
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 2073
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1602(Lcom/htc/music/browserlayer/AlbumDetailActivity;I)I

    .line 2074
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2075
    const/4 v8, 0x0

    .line 2076
    .local v8, uriStr:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDbTable:I
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 2077
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #uriStr:Ljava/lang/StringBuilder;
    sget-object v0, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2081
    .restart local v8       #uriStr:Ljava/lang/StringBuilder;
    :goto_1
    const-string v0, "/"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v4

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/genres"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2083
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->increaseQueryingCount()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    .line 2084
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$4100()[Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    .end local v3           #uri:Landroid/net/Uri;
    .end local v8           #uriStr:Ljava/lang/StringBuilder;
    :cond_6
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 2071
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2079
    .restart local v8       #uriStr:Ljava/lang/StringBuilder;
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #uriStr:Ljava/lang/StringBuilder;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v8       #uriStr:Ljava/lang/StringBuilder;
    goto :goto_1

    .line 2090
    .end local v8           #uriStr:Ljava/lang/StringBuilder;
    :sswitch_2
    if-eqz p3, :cond_8

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 2091
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2092
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const-string v1, "name"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumGenre:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3402(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2093
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->notifyDataSetChanged()V

    .line 2095
    :cond_8
    if-eqz p3, :cond_0

    .line 2096
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2031
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method
