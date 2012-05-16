.class Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;
.super Landroid/database/AbstractCursor;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingCursor"
.end annotation


# instance fields
.field private mCols:[Ljava/lang/String;

.field private mContentObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mCurPos:I

.field private mCurrentPlaylistCursor:Landroid/database/Cursor;

.field private mCursorIdxs:[I

.field private mDataSetObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mNowPlaying:[I

.field private mService:Lcom/htc/music/IMediaPlaybackService;

.field private mSize:I

.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method public constructor <init>(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "service"
    .parameter "cols"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2756
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 3160
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    .line 3162
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 3164
    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    .line 3166
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    .line 3168
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    .line 3170
    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    .line 3172
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 3174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    .line 3176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    .line 2757
    iput-object p3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    .line 2758
    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 2759
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 2760
    return-void
.end method

.method private dump()V
    .locals 4

    .prologue
    .line 2933
    const-string v1, "("

    .line 2934
    .local v1, where:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-ge v0, v2, :cond_1

    .line 2935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2936
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 2937
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2934
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2940
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

    .line 2941
    const-string v2, "NowPlayingCursor: "

    invoke-static {v2, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2942
    return-void
.end method

.method private makeNowPlayingCursor()V
    .locals 19

    .prologue
    .line 2772
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 2773
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2774
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 2778
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getNowplaying()[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2786
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    if-nez v1, :cond_2

    .line 2787
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "now playing list is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    :cond_1
    :goto_1
    return-void

    .line 2779
    :catch_0
    move-exception v10

    .line 2780
    .local v10, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    goto :goto_0

    .line 2781
    .end local v10           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 2782
    .local v10, ex:Ljava/lang/NullPointerException;
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "mService is null!!, will return directly"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    goto :goto_0

    .line 2791
    .end local v10           #ex:Ljava/lang/NullPointerException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    .line 2792
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-eqz v1, :cond_1

    .line 2796
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 2797
    .local v18, where:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2798
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-ge v11, v1, :cond_4

    .line 2799
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v1, v1, v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2800
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    add-int/lit8 v1, v1, -0x1

    if-ge v11, v1, :cond_3

    .line 2801
    const-string v1, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2798
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2804
    :cond_4
    const-string v1, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2806
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2809
    .local v7, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #calls: Lcom/htc/music/NowPlayingViewHelper;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v1, v7}, Lcom/htc/music/NowPlayingViewHelper;->access$3200(Lcom/htc/music/NowPlayingViewHelper;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 2810
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mIsEnhancerExist:Z
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$3600(Lcom/htc/music/NowPlayingViewHelper;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2811
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 2813
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-nez v1, :cond_6

    .line 2814
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    goto/16 :goto_1

    .line 2817
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 2818
    .local v15, size:I
    new-array v1, v15, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    .line 2819
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2820
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 2821
    .local v8, colidx:I
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_7

    .line 2822
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v1, v11

    .line 2823
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 2821
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2830
    :cond_7
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mPos:I

    .line 2831
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mRowIdColumnIndex:I

    .line 2832
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentRowID:Ljava/lang/Long;

    .line 2833
    invoke-super/range {p0 .. p0}, Landroid/database/AbstractCursor;->moveToFirst()Z

    .line 2834
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    .line 2842
    const/4 v13, 0x0

    .line 2843
    .local v13, removeTrackCount:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .line 2845
    .local v16, trackIds:[I
    const/4 v14, 0x0

    .line 2846
    .local v14, removed:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    add-int/lit8 v11, v1, -0x1

    :goto_4
    if-ltz v11, :cond_9

    .line 2847
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v17, v1, v11

    .line 2848
    .local v17, trackid:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    move/from16 v0, v17

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v9

    .line 2849
    .local v9, crsridx:I
    if-gez v9, :cond_8

    .line 2854
    aput v17, v16, v13

    .line 2855
    add-int/lit8 v13, v13, 0x1

    .line 2846
    :cond_8
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 2859
    .end local v9           #crsridx:I
    .end local v17           #trackid:I
    :cond_9
    if-lez v13, :cond_a

    .line 2860
    new-array v12, v13, [I

    .line 2861
    .local v12, removePosition:[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v12

    move-object/from16 v0, v16

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, v12}, Lcom/htc/music/IMediaPlaybackService;->removeTracksReduceBroadcast([I)I

    move-result v1

    add-int/2addr v14, v1

    .line 2866
    .end local v12           #removePosition:[I
    :cond_a
    if-lez v14, :cond_1

    .line 2867
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    .line 2868
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    .line 2869
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-nez v1, :cond_1

    .line 2870
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 2874
    .end local v14           #removed:I
    .end local v16           #trackIds:[I
    :catch_2
    move-exception v10

    .line 2875
    .local v10, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    goto/16 :goto_1
.end method

.method private moveQueueItem(II)V
    .locals 6
    .parameter "index1"
    .parameter "index2"

    .prologue
    .line 3073
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v0, v3

    .line 3074
    .local v0, PlayListLen:I
    if-lt p1, v0, :cond_0

    .line 3075
    add-int/lit8 p1, v0, -0x1

    .line 3077
    :cond_0
    if-lt p2, v0, :cond_1

    .line 3078
    add-int/lit8 p2, v0, -0x1

    .line 3080
    :cond_1
    if-ge p1, p2, :cond_4

    .line 3081
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v2, v3, p1

    .line 3082
    .local v2, tmp:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 3083
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    aput v4, v3, v1

    .line 3082
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3085
    :cond_2
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aput v2, v3, p2

    .line 3094
    .end local v1           #i:I
    .end local v2           #tmp:I
    :cond_3
    :goto_1
    return-void

    .line 3086
    :cond_4
    if-ge p2, p1, :cond_3

    .line 3087
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v2, v3, p1

    .line 3088
    .restart local v2       #tmp:I
    move v1, p1

    .restart local v1       #i:I
    :goto_2
    if-le v1, p2, :cond_5

    .line 3089
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    aput v4, v3, v1

    .line 3088
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 3091
    :cond_5
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aput v2, v3, p2

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 3012
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 3013
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3014
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 3006
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 3007
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 3008
    :cond_0
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 3060
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3063
    :goto_0
    return v1

    .line 3061
    :catch_0
    move-exception v0

    .line 3062
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 3063
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 2
    .parameter "idx"

    .prologue
    .line 3050
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3053
    :goto_0
    return-object v1

    .line 3051
    :catch_0
    move-exception v0

    .line 3052
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 3053
    const-string v1, ""

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3001
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2881
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 2991
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 2986
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 2967
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2970
    :goto_0
    return v1

    .line 2968
    :catch_0
    move-exception v0

    .line 2969
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2970
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 2977
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2980
    :goto_0
    return-wide v1

    .line 2978
    :catch_0
    move-exception v0

    .line 2979
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2980
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getMediaPlaybackService()Lcom/htc/music/IMediaPlaybackService;
    .locals 1

    .prologue
    .line 2763
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object v0
.end method

.method public getNowPlayingQueue()[I
    .locals 1

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    return-object v0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "column"

    .prologue
    .line 2957
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getShort(I)S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2960
    :goto_0
    return v1

    .line 2958
    :catch_0
    move-exception v0

    .line 2959
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2960
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 2947
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2950
    :goto_0
    return-object v1

    .line 2948
    :catch_0
    move-exception v0

    .line 2949
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2950
    const-string v1, ""

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 2996
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public moveItem(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 2928
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->moveQueueItem(II)V

    .line 2929
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onMove(II)Z

    .line 2930
    return-void
.end method

.method public onMove(II)Z
    .locals 4
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v2, 0x1

    .line 2886
    if-ne p1, p2, :cond_0

    .line 2902
    :goto_0
    return v2

    .line 2889
    :cond_0
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    if-nez v3, :cond_2

    .line 2890
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2897
    :cond_2
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v1, v3, p2

    .line 2898
    .local v1, newid:I
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 2899
    .local v0, crsridx:I
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2900
    iput p2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    goto :goto_0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 3102
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3104
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 3105
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3113
    :goto_0
    return-void

    .line 3106
    :catch_0
    move-exception v0

    .line 3107
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 3108
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3111
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "registerContentObserver: Illegal Argument."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 3132
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3134
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3135
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3143
    :goto_0
    return-void

    .line 3136
    :catch_0
    move-exception v0

    .line 3137
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 3138
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3141
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "registerDataSetObserver: Illegal Argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeItem(I)Z
    .locals 4
    .parameter "which"

    .prologue
    .line 2907
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, p1, p1}, Lcom/htc/music/IMediaPlaybackService;->removeTracks(II)I

    move-result v1

    if-nez v1, :cond_0

    .line 2908
    const/4 v1, 0x0

    .line 2919
    :goto_0
    return v1

    .line 2910
    :cond_0
    move v0, p1

    .line 2911
    .local v0, i:I
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    .line 2912
    :goto_1
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-ge v0, v1, :cond_1

    .line 2913
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 2914
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2916
    :cond_1
    const/4 v1, -0x1

    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2919
    .end local v0           #i:I
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 2917
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public requery()Z
    .locals 5

    .prologue
    .line 3018
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3019
    .local v0, contentObserver:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/ContentObserver;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3021
    .local v1, dataSetObserver:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/DataSetObserver;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    .line 3022
    .local v3, o:Landroid/database/ContentObserver;
    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 3024
    .end local v3           #o:Landroid/database/ContentObserver;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/DataSetObserver;

    .line 3025
    .local v3, o:Landroid/database/DataSetObserver;
    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1

    .line 3028
    .end local v3           #o:Landroid/database/DataSetObserver;
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 3030
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    .line 3031
    .local v3, o:Landroid/database/ContentObserver;
    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_2

    .line 3033
    .end local v3           #o:Landroid/database/ContentObserver;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/DataSetObserver;

    .line 3034
    .local v3, o:Landroid/database/DataSetObserver;
    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3035
    if-eqz v3, :cond_3

    .line 3036
    invoke-virtual {v3}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_3

    .line 3040
    .end local v3           #o:Landroid/database/DataSetObserver;
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3041
    const/4 v0, 0x0

    .line 3042
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3043
    const/4 v1, 0x0

    .line 3044
    const/4 v4, 0x1

    return v4
.end method

.method public setMediaPlaybackService(Lcom/htc/music/IMediaPlaybackService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 2767
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 2768
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 2769
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 3117
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3119
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3120
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3128
    :goto_0
    return-void

    .line 3121
    :catch_0
    move-exception v0

    .line 3122
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 3123
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3126
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "unregisterContentObserver: Illegal Argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 3147
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3149
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3150
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3158
    :goto_0
    return-void

    .line 3151
    :catch_0
    move-exception v0

    .line 3152
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 3153
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3156
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "unregisterDataSetObserver: Illegal Argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
