.class Lcom/htc/music/MediaPlaybackService$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 770
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$QueryHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    .line 771
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 772
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 16
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 776
    if-nez p2, :cond_1

    .line 777
    const-string v13, "[MediaPlaybackService]"

    const-string v14, "onQueryComplete, cookie is null! Do nothing"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    if-eqz p3, :cond_0

    .line 779
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    if-nez p3, :cond_2

    .line 784
    const-string v13, "[MediaPlaybackService]"

    const-string v14, "onQueryComplete, cursor is null! Do nothing"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v3, p2

    .line 787
    check-cast v3, Landroid/os/Bundle;

    .line 788
    .local v3, bundle:Landroid/os/Bundle;
    const-string v13, "command"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 789
    .local v11, szCommand:Ljava/lang/String;
    const-string v13, "id"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 790
    .local v8, iID:I
    const-string v13, "[MediaPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onQueryComplete, cmd = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", iID = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    if-nez v11, :cond_3

    .line 793
    const-string v13, "[MediaPlaybackService]"

    const-string v14, "onQueryComplete, szCommand is null! Do nothing"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    if-eqz p3, :cond_0

    .line 795
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 799
    :cond_3
    const-string v13, "play_artist"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "play_album"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "play_track"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "play_playlist"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 803
    :cond_4
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 804
    .local v9, len:I
    if-gtz v9, :cond_5

    .line 805
    const-string v13, "[MediaPlaybackService]"

    const-string v14, "onQueryComplete, attempt to play empty song list"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    if-eqz p3, :cond_0

    .line 807
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 811
    :cond_5
    new-array v2, v9, [I

    .line 812
    .local v2, audioIDList:[I
    new-array v1, v9, [I

    .line 813
    .local v1, albumIDList:[I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 814
    const-string v13, "audio_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 815
    .local v6, iAudioIDColidx:I
    if-gez v6, :cond_6

    .line 816
    const-string v13, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 818
    :cond_6
    const-string v13, "album_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 819
    .local v5, iAlbumIDColidx:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v9, :cond_7

    .line 820
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    aput v13, v2, v4

    .line 821
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    aput v13, v1, v4

    .line 822
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 819
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 827
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/MediaPlaybackService$QueryHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v13, v1}, Lcom/htc/music/MediaPlaybackService;->setAlbumQueue([I)V

    .line 828
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/MediaPlaybackService$QueryHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;
    invoke-static {v13}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v10

    .line 829
    .local v10, service:Lcom/htc/music/IMediaPlaybackService;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/MediaPlaybackService$QueryHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v14, "uimode"

    invoke-virtual {v13, v14}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/UiModeManager;

    .line 830
    .local v12, uiModeMgr:Landroid/app/UiModeManager;
    const/4 v7, 0x1

    .line 831
    .local v7, iCurrModeType:I
    if-eqz v12, :cond_9

    .line 832
    invoke-virtual {v12}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v7

    .line 833
    const-string v13, "[MediaPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "iCurrModeType = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :goto_2
    const/4 v13, 0x3

    if-eq v7, v13, :cond_a

    .line 839
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/MediaPlaybackService$QueryHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v10, v13, v2, v14, v15}, Lcom/htc/music/util/MusicUtils;->playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    .line 846
    .end local v1           #albumIDList:[I
    .end local v2           #audioIDList:[I
    .end local v4           #i:I
    .end local v5           #iAlbumIDColidx:I
    .end local v6           #iAudioIDColidx:I
    .end local v7           #iCurrModeType:I
    .end local v9           #len:I
    .end local v10           #service:Lcom/htc/music/IMediaPlaybackService;
    .end local v12           #uiModeMgr:Landroid/app/UiModeManager;
    :cond_8
    :goto_3
    if-eqz p3, :cond_0

    .line 847
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 836
    .restart local v1       #albumIDList:[I
    .restart local v2       #audioIDList:[I
    .restart local v4       #i:I
    .restart local v5       #iAlbumIDColidx:I
    .restart local v6       #iAudioIDColidx:I
    .restart local v7       #iCurrModeType:I
    .restart local v9       #len:I
    .restart local v10       #service:Lcom/htc/music/IMediaPlaybackService;
    .restart local v12       #uiModeMgr:Landroid/app/UiModeManager;
    :cond_9
    const-string v13, "[MediaPlaybackService]"

    const-string v14, "uiModeMgr is null, set iCurrModeType = UI_MODE_TYPE_NORMAL"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 842
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/MediaPlaybackService$QueryHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v10, v13, v2, v14, v15}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_3
.end method
