.class public Lcom/htc/music/browserlayer/GenreBrowserActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "GenreBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;
    }
.end annotation


# static fields
.field private static final ALBUM_TRACK_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC, track"

.field public static final DIALOG_FOR_DELETE:I = 0x1

.field public static final DIALOG_FOR_LONG_PRESS:I = 0x0

.field private static final GENRE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "name COLLATE NOCASE ASC"

.field private static final SEARCH:I = 0x1a

.field private static final TAG:Ljava/lang/String; = "[GenreBrowserActivity]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"

.field private static final UNKNOWN_GENRE_ID:J = -0x1L


# instance fields
.field mActivityTitle:Ljava/lang/String;

.field private mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

.field private mAdapterSent:Z

.field private mArtistId:Ljava/lang/String;

.field mAsyncQuerying:Z

.field private mCountTemplate:Ljava/lang/String;

.field private mCurrentGenreId:Ljava/lang/String;

.field private mCurrentGenreName:Ljava/lang/String;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mFilter:Ljava/lang/String;

.field private mGenreCursor:Landroid/database/Cursor;

.field private mIsSeriveBinded:Z

.field mLowerSearchFilter:Ljava/lang/String;

.field private mNeedBindSerive:Z

.field private mPlaylistUri:Ljava/lang/String;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field protected osc:Landroid/content/ServiceConnection;

.field private preSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 118
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mNeedBindSerive:Z

    .line 119
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mIsSeriveBinded:Z

    .line 259
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->osc:Landroid/content/ServiceConnection;

    .line 278
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 307
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 1140
    iput-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mActivityTitle:Ljava/lang/String;

    .line 1142
    iput-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    .line 1144
    iput-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mFilter:Ljava/lang/String;

    .line 1145
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->preSearchTime:J

    .line 1146
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$7;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    .line 1157
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAsyncQuerying:Z

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mNeedBindSerive:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/music/browserlayer/GenreBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$102(Lcom/htc/music/browserlayer/GenreBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mIsSeriveBinded:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/GenreBrowserActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/GenreBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getGenreCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/GenreBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getGenreCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 815
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v5, v1

    .line 819
    .local v5, cols:[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    .local v14, where:Ljava/lang/StringBuilder;
    const-string v1, "name != \'\'"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    const-string v1, "  AND _id in (select audio_genres_map.genre_id as _id from audio_genres_map left outer join audio_meta on audio_genres_map.audio_id= audio_meta._id where audio_meta.is_music>=1)"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    const/4 v7, 0x0

    .line 825
    .local v7, keywords:[Ljava/lang/String;
    if-nez p2, :cond_1

    const/4 v11, 0x1

    .line 826
    .local v11, searchContainsUnkown:Z
    :goto_0
    if-eqz p2, :cond_0

    .line 840
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    .line 841
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 842
    const-string v1, " AND "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    const-string v1, "name LIKE ?"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    const v1, 0x7f070050

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 846
    .local v12, unknown:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    const/4 v11, 0x1

    .line 850
    .end local v12           #unknown:Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    .line 851
    .local v9, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_2

    .line 852
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAsyncQuerying:Z

    .line 853
    const/4 v2, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "name COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    .line 860
    .end local v9           #ret:Landroid/database/Cursor;
    .local v10, ret:Landroid/database/Cursor;
    :goto_1
    if-eqz v11, :cond_3

    if-nez p1, :cond_3

    .line 861
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getUnknownGenre()Landroid/database/Cursor;

    move-result-object v13

    .line 862
    .local v13, unknwon:Landroid/database/Cursor;
    if-eqz v13, :cond_3

    .line 863
    new-instance v9, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const/4 v2, 0x1

    aput-object v13, v1, v2

    invoke-direct {v9, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 867
    .end local v10           #ret:Landroid/database/Cursor;
    .end local v13           #unknwon:Landroid/database/Cursor;
    .restart local v9       #ret:Landroid/database/Cursor;
    :goto_2
    return-object v9

    .line 825
    .end local v9           #ret:Landroid/database/Cursor;
    .end local v11           #searchContainsUnkown:Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 857
    .restart local v9       #ret:Landroid/database/Cursor;
    .restart local v11       #searchContainsUnkown:Z
    :cond_2
    sget-object v4, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "name COLLATE NOCASE ASC"

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    move-object v10, v9

    .end local v9           #ret:Landroid/database/Cursor;
    .restart local v10       #ret:Landroid/database/Cursor;
    goto :goto_1

    :cond_3
    move-object v9, v10

    .end local v10           #ret:Landroid/database/Cursor;
    .restart local v9       #ret:Landroid/database/Cursor;
    goto :goto_2
.end method

.method private setTitle()V
    .locals 2

    .prologue
    .line 352
    const-string v0, ""

    .line 354
    .local v0, fancyName:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 355
    const v1, 0x7f070075

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 359
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mActivityTitle:Ljava/lang/String;

    .line 362
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    return-void

    .line 357
    :cond_0
    const v1, 0x7f070030

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    .prologue
    .line 733
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->playAllAction(Z)Z

    move-result v0

    return v0
.end method

.method public getUnknownGenre()Landroid/database/Cursor;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 871
    new-array v6, v12, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v6, v5

    const-string v0, "name"

    aput-object v0, v6, v2

    .line 875
    .local v6, cols:[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 876
    .local v11, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    const-string v0, " AND is_music>=1"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    const-string v0, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 881
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 885
    .local v7, cur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 886
    .local v10, ret:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 887
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 888
    .local v9, record:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 889
    .local v8, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    new-instance v10, Lcom/htc/music/util/ArrayListCursor;

    .end local v10           #ret:Landroid/database/Cursor;
    invoke-direct {v10, v6, v9}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 899
    .end local v8           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v9           #record:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    .restart local v10       #ret:Landroid/database/Cursor;
    :cond_0
    if-eqz v7, :cond_1

    .line 900
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 901
    const/4 v7, 0x0

    .line 904
    :cond_1
    return-object v10
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->showDatabaseError()V

    .line 333
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->closeContextMenu()V

    .line 334
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 349
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mActivityTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 338
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mActivityTitle:Ljava/lang/String;

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setTitle(Ljava/lang/String;)V

    .line 342
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->showEmptyView(I)V

    goto :goto_0

    .line 347
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->hideEmptyErrorView()V

    .line 348
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method isAsyncQuerying()Z
    .locals 1

    .prologue
    .line 1109
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAsyncQuerying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 368
    sparse-switch p1, :sswitch_data_0

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 370
    :sswitch_0
    if-nez p2, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->finish()V

    goto :goto_0

    .line 373
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v3, :cond_0

    .line 374
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getGenreCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 380
    :sswitch_1
    if-ne p2, v3, :cond_0

    .line 381
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/htc/music/util/MusicUtils;->getSongListForGenre(Landroid/content/Context;I)[I

    move-result-object v0

    .line 383
    .local v0, list:[I
    const-string v3, "playlist"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 384
    .local v1, playlist:I
    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 389
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_2
    if-ne p2, v3, :cond_0

    .line 390
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 392
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/htc/music/util/MusicUtils;->getSongListForGenre(Landroid/content/Context;I)[I

    move-result-object v0

    .line 394
    .restart local v0       #list:[I
    if-eqz v0, :cond_2

    array-length v3, v0

    if-nez v3, :cond_3

    .line 398
    :cond_2
    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 401
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 403
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v3, :cond_0

    .line 404
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getGenreCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 410
    .end local v0           #list:[I
    :sswitch_3
    if-ne p2, v3, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->finish()V

    goto :goto_0

    .line 368
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_0
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 128
    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCountTemplate:Ljava/lang/String;

    .line 129
    if-eqz p1, :cond_1

    .line 130
    const-string v0, "selectedgenre"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    .line 131
    const-string v0, "artistid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 132
    const-string v0, "playlisturi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    .line 138
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setVolumeControlStream(I)V

    .line 143
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v7, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v0, "file"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setContentView(I)V

    .line 151
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    .line 152
    .local v9, lv:Lcom/htc/widget/HtcListView;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 155
    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 156
    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 158
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    .line 159
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f03000c

    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/GenreBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    .line 163
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setTitle()V

    .line 166
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getGenreCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 178
    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 179
    const v0, 0x7f0700a8

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setSearchHint(I)V

    .line 180
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->enableSearch()V

    .line 182
    :cond_0
    return-void

    .line 134
    .end local v7           #f:Landroid/content/IntentFilter;
    .end local v9           #lv:Lcom/htc/widget/HtcListView;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 135
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "artistid"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 136
    const-string v0, "playlisturi"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    goto/16 :goto_0

    .line 168
    .end local v8           #intent:Landroid/content/Intent;
    .restart local v7       #f:Landroid/content/IntentFilter;
    .restart local v9       #lv:Lcom/htc/widget/HtcListView;
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->setActivity(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V

    .line 169
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    .line 171
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_1

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getGenreCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const v10, 0x7f070050

    const v9, 0x2040214

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 467
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 468
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 540
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    :goto_0
    return-object v5

    .line 471
    :pswitch_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 472
    :cond_1
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 476
    .local v4, title:Ljava/lang/String;
    :goto_1
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/CharSequence;

    const v5, 0x7f070058

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    const v5, 0x7f070059

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    const/4 v5, 0x2

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 480
    .local v3, items:[Ljava/lang/CharSequence;
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/htc/music/browserlayer/GenreBrowserActivity$4;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V

    invoke-virtual {v5, v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto :goto_0

    .line 474
    .end local v3           #items:[Ljava/lang/CharSequence;
    .end local v4           #title:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    .restart local v4       #title:Ljava/lang/String;
    goto :goto_1

    .line 509
    .end local v4           #title:Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 510
    const v5, 0x7f070018

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, f:Ljava/lang/String;
    :goto_2
    const/4 v1, 0x0

    .line 516
    .local v1, desc:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 517
    :cond_3
    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 520
    :goto_3
    const-string v5, "GenreBrowserActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCurrentGenreId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040013

    new-instance v7, Lcom/htc/music/browserlayer/GenreBrowserActivity$6;

    invoke-direct {v7, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    new-instance v7, Lcom/htc/music/browserlayer/GenreBrowserActivity$5;

    invoke-direct {v7, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 512
    .end local v1           #desc:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    :cond_4
    const v5, 0x7f070017

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #f:Ljava/lang/String;
    goto :goto_2

    .line 519
    .restart local v1       #desc:Ljava/lang/String;
    :cond_5
    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 589
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 590
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 604
    :cond_0
    :goto_0
    return v4

    .line 598
    :cond_1
    const/16 v0, 0x9

    const v1, 0x7f070009

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 599
    const/16 v0, 0xc

    const v1, 0x7f07000a

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 600
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    const/16 v0, 0x16

    const v1, 0x2040218

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDeletionCompleted()V
    .locals 2

    .prologue
    .line 546
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDeletionCompleted()V

    .line 547
    const-string v0, "GenreBrowserActivity"

    const-string v1, "call onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getGenreCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 556
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 206
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 208
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 210
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 212
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 219
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    iput-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    .line 222
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 223
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 419
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, currentGenreId:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 441
    :goto_0
    return-void

    .line 434
    :cond_0
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "com.htc.media/albumtrack"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v2, "playlisturi"

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v2, "genreid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v2, "pickermode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    const/16 v2, 0xf

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 446
    const-string v1, "GenreBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 450
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    .line 452
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    .line 454
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->showDialog(I)V

    .line 455
    const/4 v0, 0x1

    .line 457
    :cond_0
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 632
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 728
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 647
    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    .line 649
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->playAllAction(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 722
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 723
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 632
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xc -> :sswitch_1
        0x16 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->setAutoRequery(ZZ)V

    .line 322
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 323
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 8
    .parameter "id"
    .parameter "dialog"

    .prologue
    const v7, 0x7f070050

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 560
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 561
    packed-switch p1, :pswitch_data_0

    .line 585
    .end local p2
    :goto_0
    return-void

    .line 564
    .restart local p2
    :pswitch_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    const-string v4, "<unknown>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 565
    :cond_0
    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 568
    .local v2, title:Ljava/lang/String;
    :goto_1
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 567
    .end local v2           #title:Ljava/lang/String;
    .restart local p2
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    .restart local v2       #title:Ljava/lang/String;
    goto :goto_1

    .line 572
    .end local v2           #title:Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 573
    const v3, 0x7f070018

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, f:Ljava/lang/String;
    :goto_2
    const/4 v0, 0x0

    .line 578
    .local v0, desc:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    const-string v4, "<unknown>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 579
    :cond_2
    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 582
    :goto_3
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 575
    .end local v0           #desc:Ljava/lang/String;
    .end local v1           #f:Ljava/lang/String;
    .restart local p2
    :cond_3
    const v3, 0x7f070017

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #f:Ljava/lang/String;
    goto :goto_2

    .line 581
    .restart local v0       #desc:Ljava/lang/String;
    :cond_4
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/16 v3, 0xc

    .line 610
    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 615
    .local v0, enabled:Ljava/lang/Boolean;
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 616
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 618
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 619
    if-eqz v1, :cond_1

    .line 620
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 621
    :cond_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 622
    if-eqz v1, :cond_2

    .line 623
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 625
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 610
    .end local v0           #enabled:Ljava/lang/Boolean;
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 227
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 228
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setTitle()V

    .line 229
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->setAutoRequery(ZZ)V

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->showSpinner(Z)V

    .line 234
    :cond_2
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapterSent:Z

    .line 187
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 195
    const-string v0, "selectedgenre"

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 199
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1120
    packed-switch p2, :pswitch_data_0

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1122
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->setAutoRequeryOffAndAutoOn()V

    goto :goto_0

    .line 1126
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->setAutoRequery(Z)V

    goto :goto_0

    .line 1130
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->setAutoRequeryOffAndAutoOn()V

    goto :goto_0

    .line 1120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 4
    .parameter "filter"

    .prologue
    .line 1114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->preSearchTime:J

    .line 1115
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mFilter:Ljava/lang/String;

    .line 1116
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1117
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mNeedBindSerive:Z

    .line 239
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    const-string v0, "[GenreBrowserActivity]"

    const-string v1, "onStart, Fail to bind service."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mNeedBindSerive:Z

    .line 245
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 246
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 250
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mIsSeriveBinded:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mIsSeriveBinded:Z

    .line 254
    :cond_0
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mNeedBindSerive:Z

    .line 256
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 257
    return-void
.end method

.method public playAllAction(Z)Z
    .locals 24
    .parameter "forceShuffle"

    .prologue
    .line 738
    const/4 v14, 0x0

    .line 739
    .local v14, cursor:Landroid/database/Cursor;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 740
    .local v23, where:Ljava/lang/StringBuilder;
    const-string v2, "title != \'\'"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 745
    .local v5, whereclause:Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "album_id"

    aput-object v6, v4, v2

    const/4 v6, 0x0

    const-string v7, "title COLLATE NOCASE ASC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 749
    .local v22, results:Landroid/database/Cursor;
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "name COLLATE NOCASE ASC"

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 756
    .local v17, genres:Landroid/database/Cursor;
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 758
    :cond_1
    if-eqz v22, :cond_2

    .line 759
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 760
    const/16 v22, 0x0

    .line 762
    :cond_2
    if-eqz v17, :cond_3

    .line 763
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 764
    const/16 v17, 0x0

    .line 766
    :cond_3
    const/4 v2, 0x1

    .line 811
    :goto_0
    return v2

    .line 768
    :cond_4
    const/4 v14, 0x0

    .line 769
    if-nez v17, :cond_7

    const/16 v16, 0x0

    .line 770
    .local v16, genreCount:I
    :goto_1
    move/from16 v20, v16

    .line 771
    .local v20, len:I
    if-eqz v22, :cond_5

    .line 772
    add-int/lit8 v20, v20, 0x1

    .line 773
    move-object/from16 v14, v22

    .line 776
    :cond_5
    move/from16 v0, v20

    new-array v15, v0, [Landroid/database/Cursor;

    .line 777
    .local v15, cursors:[Landroid/database/Cursor;
    if-eqz v22, :cond_6

    .line 779
    add-int/lit8 v2, v20, -0x1

    aput-object v22, v15, v2

    .line 781
    :cond_6
    if-eqz v17, :cond_9

    .line 782
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 783
    const-string v2, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 784
    .local v13, colidx:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_8

    .line 785
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 786
    .local v18, gid:I
    const-string v2, "external"

    move/from16 v0, v18

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v8, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "album COLLATE NOCASE ASC, track"

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 790
    .local v12, c:Landroid/database/Cursor;
    aput-object v12, v15, v19

    .line 791
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 784
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 769
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #colidx:I
    .end local v15           #cursors:[Landroid/database/Cursor;
    .end local v16           #genreCount:I
    .end local v18           #gid:I
    .end local v19           #i:I
    .end local v20           #len:I
    :cond_7
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v16

    goto :goto_1

    .line 793
    .restart local v13       #colidx:I
    .restart local v15       #cursors:[Landroid/database/Cursor;
    .restart local v16       #genreCount:I
    .restart local v19       #i:I
    .restart local v20       #len:I
    :cond_8
    new-instance v14, Landroid/database/MergeCursor;

    .end local v14           #cursor:Landroid/database/Cursor;
    invoke-direct {v14, v15}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 795
    .end local v13           #colidx:I
    .end local v19           #i:I
    .restart local v14       #cursor:Landroid/database/Cursor;
    :cond_9
    if-eqz v14, :cond_b

    .line 796
    const/16 v21, 0x0

    .line 797
    .local v21, npc:Lcom/htc/music/NpCategory;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 798
    new-instance v21, Lcom/htc/music/NpCategory;

    .end local v21           #npc:Lcom/htc/music/NpCategory;
    const/16 v2, 0x11

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 800
    .restart local v21       #npc:Lcom/htc/music/NpCategory;
    :cond_a
    if-eqz p1, :cond_d

    .line 801
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v14, v1}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    .line 804
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 805
    const/4 v14, 0x0

    .line 807
    .end local v21           #npc:Lcom/htc/music/NpCategory;
    :cond_b
    if-eqz v17, :cond_c

    .line 808
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 809
    const/16 v17, 0x0

    .line 811
    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 803
    .restart local v21       #npc:Lcom/htc/music/NpCategory;
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v14, v1}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto :goto_3
.end method
