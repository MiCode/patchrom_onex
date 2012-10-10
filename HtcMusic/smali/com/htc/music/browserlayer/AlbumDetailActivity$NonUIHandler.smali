.class final Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
.super Landroid/os/Handler;
.source "AlbumDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUIHandler"
.end annotation


# static fields
.field private static final ADD_TO_PLAYLIST:I = 0x7

.field private static final DECODE_ALBUM_ART:I = 0x2

.field private static final HANDLE_CONTACT_RINGTONE_RESULT:I = 0x6

.field private static final MERGE_DL_ALBUM_ART:I = 0x8

.field private static final PLAY_ALL:I = 0x4

.field private static final PLAY_ALL_FROM_INDEX:I = 0x3

.field private static final QUERY_ALBUM_INFO:I = 0x0

.field private static final QUERY_TRACK_CURSOR:I = 0x1

.field private static final QUERY_TRACK_GENRE:I = 0x9

.field private static final SHUFFLE_ALL:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/os/Looper;)V
    .locals 3
    .parameter
    .parameter "looper"

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    .line 1368
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1370
    const-string v0, "[AlbumDetailActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NonUIHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    return-void
.end method

.method private checkDrmFile(Landroid/net/Uri;I)V
    .locals 13
    .parameter "uri"
    .parameter "position"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1625
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v9}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1627
    .local v6, resolver:Landroid/content/ContentResolver;
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-static {v9, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v7

    .line 1628
    .local v7, status:I
    const/4 v9, -0x1

    if-ne v7, v9, :cond_0

    .line 1629
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v9, v11}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 1663
    :goto_0
    return-void

    .line 1630
    :cond_0
    if-nez v7, :cond_3

    .line 1631
    const/4 v4, 0x0

    .line 1632
    .local v4, msg:Ljava/lang/String;
    invoke-static {v6, p1, v11}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 1634
    .local v0, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_1

    .line 1635
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;
    invoke-static {v11}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/NpCategory;

    move-result-object v11

    new-array v12, v12, [I

    invoke-static {v9, v10, p2, v11, v12}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    .line 1637
    :cond_1
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-static {v10, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;
    invoke-static {v9, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3202(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1638
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;
    invoke-static {v9}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1639
    move v5, p2

    .line 1640
    .local v5, pos:I
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    goto :goto_0

    .line 1642
    .end local v5           #pos:I
    :cond_2
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;
    invoke-static {v11}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/NpCategory;

    move-result-object v11

    new-array v12, v12, [I

    invoke-static {v9, v10, p2, v11, v12}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    .line 1649
    .end local v0           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v4           #msg:Ljava/lang/String;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1650
    .local v3, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const-class v10, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1651
    const-string v9, "drmtargettomain"

    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1653
    :try_start_0
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v9

    const-string v10, "_id"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1655
    .local v2, id_idx:I
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1656
    .local v8, trackId:Ljava/lang/String;
    const-string v9, "track"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1661
    .end local v2           #id_idx:I
    :goto_1
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v10, -0x2

    invoke-virtual {v9, v3, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1657
    .end local v8           #trackId:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1658
    .local v1, e:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v10

    const-string v11, "_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1659
    .restart local v8       #trackId:Ljava/lang/String;
    const-string v9, "track"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private decodeHeaderArtCover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "albumArtPath"
    .parameter "albumName"
    .parameter "albumId"
    .parameter "coverResID"

    .prologue
    const/4 v4, 0x1

    .line 1600
    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1602
    .local v2, resources:Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 1603
    .local v3, tempAlbumArt:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->isUnknownAlbum(Ljava/lang/String;)Z
    invoke-static {v5, p2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2800(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1605
    const-string v5, "[AlbumDetailActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Decode file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1607
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1608
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1609
    const v5, 0x7f02003e

    invoke-static {v2, v5, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1610
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p1, v5, v6}, Lcom/htc/music/util/MusicUtils;->getAlbumArtBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1611
    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    .line 1612
    const-string v5, "[AlbumDetailActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Decode file fail, decode by albumId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1614
    .local v0, id:I
    const/4 v5, -0x1

    if-le v0, v5, :cond_0

    .line 1615
    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v5, v0, v6, v7}, Lcom/htc/music/util/MusicUtils;->getArtworkQuick(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1619
    .end local v0           #id:I
    .end local v1           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    const-string v5, "[AlbumDetailActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Going to notify UI: mAlbumArt="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_1

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->updateAlbumArt(Landroid/graphics/Bitmap;)V

    .line 1622
    return-void

    .line 1619
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addToPlaylist(IJ)V
    .locals 2
    .parameter "audioId"
    .parameter "playlistId"

    .prologue
    .line 1408
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1409
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1410
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1411
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1412
    return-void
.end method

.method public decodeAlbumArt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "albumArtPath"
    .parameter "albumName"

    .prologue
    .line 1382
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1383
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1384
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "ALBUM_NAME"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1386
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1387
    return-void
.end method

.method public handleContactRingtoneResult(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1404
    .local p1, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1405
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .parameter "msg"

    .prologue
    .line 1420
    const-string v2, "[AlbumDetailActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< NonUIHandler >>>>> + msg.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1597
    :cond_0
    :goto_0
    return-void

    .line 1424
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->increaseQueryingCount()V
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    .line 1425
    const-string v2, "[AlbumDetailActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NonUIHandler.handleMessage][QUERY_ALBUM_INFO] msg.obj="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDbTable:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2100()[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1430
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2100()[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1435
    :pswitch_1
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v2, "title"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1436
    .local v24, where:Ljava/lang/StringBuilder;
    const-string v2, " != \'\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "album_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND is_music>=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1440
    const-string v2, " AND "

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "artist_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    :cond_2
    const/4 v5, 0x0

    .line 1444
    .local v5, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDbTable:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1445
    sget-object v5, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1449
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 1451
    .local v16, genreId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_5

    .line 1452
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    .end local v16           #genreId:J
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->increaseQueryingCount()V
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2700()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "track"

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1447
    :cond_4
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 1454
    .restart local v16       #genreId:J
    :cond_5
    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    goto :goto_2

    .line 1456
    .end local v16           #genreId:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v13

    .line 1458
    .local v13, composer:Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v23

    .line 1459
    .local v23, unknown:Z
    if-eqz v23, :cond_7

    .line 1460
    const-string v2, " AND "

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    invoke-static/range {v24 .. v24}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 1463
    :cond_7
    const-string v2, "\'"

    const-string v3, "\'\'"

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1464
    const-string v2, " AND "

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "composer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1474
    .end local v5           #uri:Landroid/net/Uri;
    .end local v13           #composer:Ljava/lang/String;
    .end local v23           #unknown:Z
    .end local v24           #where:Ljava/lang/StringBuilder;
    :pswitch_2
    const/4 v12, 0x0

    .line 1475
    .local v12, albumName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    .line 1476
    .local v15, data:Landroid/os/Bundle;
    if-eqz v15, :cond_8

    .line 1477
    const-string v2, "ALBUM_NAME"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1480
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f020041

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v3, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->decodeHeaderArtCover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1483
    .end local v12           #albumName:Ljava/lang/String;
    .end local v15           #data:Landroid/os/Bundle;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1487
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 1488
    .local v18, index:I
    const-string v2, "[AlbumDetailActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Play album from index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1493
    .local v19, path:Ljava/lang/String;
    if-eqz v19, :cond_9

    const-string v2, "content://drm/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1494
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->checkDrmFile(Landroid/net/Uri;I)V

    goto/16 :goto_0

    .line 1496
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/NpCategory;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [I

    move/from16 v0, v18

    invoke-static {v2, v3, v0, v4, v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto/16 :goto_0

    .line 1512
    .end local v18           #index:I
    .end local v19           #path:Ljava/lang/String;
    :pswitch_4
    const/16 v20, 0x0

    .line 1513
    .local v20, playlist:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    monitor-enter v3

    .line 1514
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_b

    .line 1515
    :cond_a
    const-string v2, "[AlbumDetailActivity]"

    const-string v4, "menu play_all with empty mTrackCursor!!"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    monitor-exit v3

    goto/16 :goto_0

    .line 1520
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1518
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v20

    .line 1519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1520
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1521
    if-eqz v20, :cond_c

    move-object/from16 v0, v20

    array-length v2, v0

    if-gtz v2, :cond_d

    .line 1522
    :cond_c
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "menu play_all with empty list!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1527
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/NpCategory;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-static {v2, v0, v3, v4}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto/16 :goto_0

    .line 1532
    .end local v20           #playlist:[I
    :pswitch_5
    const/16 v22, 0x0

    .line 1533
    .local v22, shufflelist:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    monitor-enter v3

    .line 1534
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_f

    .line 1535
    :cond_e
    const-string v2, "[AlbumDetailActivity]"

    const-string v4, "menu SHUFFLE_ALL with empty mTrackCursor!!"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    monitor-exit v3

    goto/16 :goto_0

    .line 1540
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 1538
    :cond_f
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v22

    .line 1539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1540
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1541
    if-eqz v22, :cond_10

    move-object/from16 v0, v22

    array-length v2, v0

    if-gtz v2, :cond_11

    .line 1542
    :cond_10
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "menu shuffle_all with empty list!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1546
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/NpCategory;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-static {v2, v0, v3, v4}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto/16 :goto_0

    .line 1551
    .end local v22           #shufflelist:[I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/util/RingtoneHelper;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/util/RingtoneHelper;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/htc/music/util/RingtoneHelper;->hadnleContactRingtoneResult(Ljava/util/ArrayList;Z)V

    .line 1554
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showContactRingtoneToast()V

    goto/16 :goto_0

    .line 1558
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v2, 0x1

    new-array v4, v2, [I

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    aput v6, v4, v2

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    .line 1562
    :pswitch_8
    const/4 v10, 0x0

    .line 1564
    .local v10, albumId:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/database/Cursor;

    .line 1565
    .local v21, realCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v14

    .line 1566
    .local v14, cursor:Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const-string v3, "album"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$502(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1569
    const-string v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1570
    .local v11, albumIndex:I
    if-ltz v11, :cond_13

    .line 1571
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1574
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->isUnknownAlbum(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2800(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const v4, 0x7f07004e

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$502(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1583
    :cond_14
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const-string v3, "album_art"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3002(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const-string v3, "minyear"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReleaseYear:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3102(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1586
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->setMainTitle(Ljava/lang/String;)V

    .line 1589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->setSecondaryTitle(Ljava/lang/String;)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->hideEmptyErrorViewUI()V

    .line 1593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->notifyDataSetChanged()V

    .line 1594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020041

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v10, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->decodeHeaderArtCover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1578
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const-string v3, "artist"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$602(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->isUnknownArtist(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2900(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const v4, 0x7f07004d

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$602(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3

    .line 1422
    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public mergeDlAlbumArt(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1415
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1416
    return-void
.end method

.method public playAll()V
    .locals 1

    .prologue
    .line 1396
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendEmptyMessage(I)Z

    .line 1397
    return-void
.end method

.method public playAllFromIndex(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1390
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1391
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1392
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1393
    return-void
.end method

.method public queryAlbumInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "albumId"

    .prologue
    .line 1374
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1375
    return-void
.end method

.method public queryTrackCursor()V
    .locals 1

    .prologue
    .line 1378
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendEmptyMessage(I)Z

    .line 1379
    return-void
.end method

.method public shuffleAll()V
    .locals 1

    .prologue
    .line 1400
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendEmptyMessage(I)Z

    .line 1401
    return-void
.end method
