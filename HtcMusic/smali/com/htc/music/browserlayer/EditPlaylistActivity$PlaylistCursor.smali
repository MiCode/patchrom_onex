.class Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;
.super Landroid/database/AbstractCursor;
.source "EditPlaylistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaylistCursor"
.end annotation


# instance fields
.field private mCols:[Ljava/lang/String;

.field private mCurPos:I

.field private mCurrentPlaylistCursor:Landroid/database/Cursor;

.field private mCursorIdxs:[I

.field private mNowPlaying:[I

.field private mSize:I

.field final synthetic this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "cols"

    .prologue
    .line 758
    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 958
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    .line 759
    iput-object p2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCols:[Ljava/lang/String;

    .line 760
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->makeNowPlayingCursor()V

    .line 761
    return-void
.end method

.method private dump()V
    .locals 4

    .prologue
    .line 851
    const-string v1, "("

    .line 852
    .local v1, where:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    if-ge v0, v2, :cond_1

    .line 853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mNowPlaying:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 854
    iget v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 852
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 858
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 859
    const-string v2, "NowPlayingCursor: "

    invoke-static {v2, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method private makeNowPlayingCursor()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v12, -0x1

    .line 764
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 767
    :cond_0
    iput-object v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 769
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iget-object v0, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 770
    .local v9, playlistSize:I
    new-array v0, v9, [I

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mNowPlaying:[I

    .line 771
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_1

    .line 772
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mNowPlaying:[I

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    iget-object v0, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    iget v0, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mTrackId:I

    aput v0, v1, v8

    .line 771
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mNowPlaying:[I

    if-nez v0, :cond_3

    .line 776
    iput v12, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    .line 822
    :cond_2
    :goto_1
    return-void

    .line 780
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mNowPlaying:[I

    array-length v0, v0

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    .line 781
    iget v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    if-eqz v0, :cond_2

    .line 785
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 786
    .local v11, where:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    const/4 v8, 0x0

    :goto_2
    iget v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    if-ge v8, v0, :cond_5

    .line 788
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mNowPlaying:[I

    aget v0, v0, v8

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 789
    iget v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_4

    .line 790
    const-string v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 793
    :cond_5
    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCols:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "_id"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 798
    .local v6, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #calls: Lcom/htc/music/browserlayer/EditPlaylistActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v0, v6}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$300(Lcom/htc/music/browserlayer/EditPlaylistActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 799
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$400(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 800
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 802
    :cond_6
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_7

    .line 803
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    goto :goto_1

    .line 806
    :cond_7
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 807
    .local v10, size:I
    new-array v0, v10, [I

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCursorIdxs:[I

    .line 808
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 809
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 810
    .local v7, colidx:I
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v10, :cond_8

    .line 811
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCursorIdxs:[I

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v0, v8

    .line 812
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 810
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 814
    :cond_8
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 815
    iput v12, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurPos:I

    goto/16 :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 947
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 948
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 950
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 952
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 921
    :cond_0
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity;->mCursorCols:[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$500(Lcom/htc/music/browserlayer/EditPlaylistActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "idx"

    .prologue
    .line 931
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCols:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 899
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 883
    :goto_0
    return v1

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->onChange(Z)V

    .line 883
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 890
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 893
    :goto_0
    return-wide v1

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->onChange(Z)V

    .line 893
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 874
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 868
    :goto_0
    return-object v1

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->onChange(Z)V

    .line 868
    const-string v1, ""

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 909
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 4
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v2, 0x1

    .line 831
    if-ne p1, p2, :cond_0

    .line 847
    :goto_0
    return v2

    .line 834
    :cond_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mNowPlaying:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCursorIdxs:[I

    if-nez v3, :cond_2

    .line 835
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 842
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mNowPlaying:[I

    aget v1, v3, p2

    .line 843
    .local v1, newid:I
    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCursorIdxs:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 844
    .local v0, crsridx:I
    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 845
    iput p2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->mCurPos:I

    goto :goto_0
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 925
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;->makeNowPlayingCursor()V

    .line 926
    const/4 v0, 0x1

    return v0
.end method
