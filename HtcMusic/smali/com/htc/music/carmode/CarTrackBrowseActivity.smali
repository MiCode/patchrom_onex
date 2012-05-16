.class public Lcom/htc/music/carmode/CarTrackBrowseActivity;
.super Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;
.source "CarTrackBrowseActivity.java"

# interfaces
.implements Lcom/htc/music/carmode/util/CarMusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;,
        Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;
    }
.end annotation


# static fields
.field public static final DIALOG_DRM_CONFIRM:I = 0x3

.field public static final DIALOG_DRM_ERROR:I = 0x2

.field private static final INVALIDATE_LISTVIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[CarTrackBrowserActivity]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field mActivityMainTitle:Ljava/lang/String;

.field mActivitySecondaryTitle:Ljava/lang/String;

.field mActivityTitle:Ljava/lang/String;

.field private mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

.field private mAsyncQuerying:Z

.field private mCategory:S

.field private mCountTemplate:Ljava/lang/String;

.field private mCursorCols:[Ljava/lang/String;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDescription:Ljava/lang/String;

.field private mFilter:Ljava/lang/String;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mMsg:Ljava/lang/String;

.field mPlaybackServiceConnected:Z

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedId:J

.field private mSelectedPosition:I

.field mStopping:Z

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Lcom/htc/widget/HtcListView;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mUiHandler:Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;

.field private preSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 95
    iput-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    .line 103
    iput-short v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mCategory:S

    .line 105
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mStopping:Z

    .line 194
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mPlaybackServiceConnected:Z

    .line 345
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$1;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 361
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$2;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mReScanHandler:Landroid/os/Handler;

    .line 436
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$3;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 1208
    iput-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    .line 1209
    iput-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityMainTitle:Ljava/lang/String;

    .line 1210
    iput-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivitySecondaryTitle:Ljava/lang/String;

    .line 1212
    iput-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mLowerSearchFilter:Ljava/lang/String;

    .line 1214
    iput-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mFilter:Ljava/lang/String;

    .line 1215
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->preSearchTime:J

    .line 1216
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$7;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mDelaySearchHandler:Landroid/os/Handler;

    .line 1227
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAsyncQuerying:Z

    .line 1231
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mUiHandler:Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;

    .line 108
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAsyncQuerying:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/music/carmode/CarTrackBrowseActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAsyncQuerying:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/music/carmode/CarTrackBrowseActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getListSizeTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/carmode/CarTrackBrowseActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/htc/music/carmode/CarTrackBrowseActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/carmode/CarTrackBrowseActivity;Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mUiHandler:Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/carmode/CarTrackBrowseActivity;)S
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-short v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mCategory:S

    return v0
.end method

.method static synthetic access$800(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/carmode/CarTrackBrowseActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/music/carmode/CarTrackBrowseActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mSelectedPosition:I

    return v0
.end method

.method private checkDrmFile(Landroid/net/Uri;IJ)V
    .locals 13
    .parameter "uri"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 449
    .local v7, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    .line 450
    .local v8, status:I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_0

    .line 451
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->showDialog(I)V

    .line 495
    :goto_0
    return-void

    .line 452
    :cond_0
    if-nez v8, :cond_5

    .line 453
    const/4 v5, 0x0

    .line 454
    .local v5, msg:Ljava/lang/String;
    const/4 v10, 0x1

    invoke-static {v7, p1, v10}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v1

    .line 455
    .local v1, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v1, :cond_2

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, category:Lcom/htc/music/NpCategory;
    iget-object v10, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mFilter:Ljava/lang/String;

    if-nez v10, :cond_1

    .line 460
    new-instance v0, Lcom/htc/music/NpCategory;

    .end local v0           #category:Lcom/htc/music/NpCategory;
    iget-short v10, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mCategory:S

    invoke-direct {v0, v10}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 463
    .restart local v0       #category:Lcom/htc/music/NpCategory;
    :cond_1
    iget-object v10, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v11, 0x0

    new-array v11, v11, [I

    invoke-static {p0, v10, p2, v0, v11}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    .line 465
    .end local v0           #category:Lcom/htc/music/NpCategory;
    :cond_2
    invoke-static {p0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mMsg:Ljava/lang/String;

    .line 466
    iget-object v10, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mMsg:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 467
    move v6, p2

    .line 468
    .local v6, pos:I
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->showDialog(I)V

    goto :goto_0

    .line 470
    .end local v6           #pos:I
    :cond_3
    const/4 v0, 0x0

    .line 471
    .restart local v0       #category:Lcom/htc/music/NpCategory;
    iget-object v10, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mFilter:Ljava/lang/String;

    if-nez v10, :cond_4

    .line 474
    new-instance v0, Lcom/htc/music/NpCategory;

    .end local v0           #category:Lcom/htc/music/NpCategory;
    iget-short v10, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mCategory:S

    invoke-direct {v0, v10}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 477
    .restart local v0       #category:Lcom/htc/music/NpCategory;
    :cond_4
    iget-object v10, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v11, 0x0

    new-array v11, v11, [I

    invoke-static {p0, v10, p2, v0, v11}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    .line 481
    .end local v0           #category:Lcom/htc/music/NpCategory;
    .end local v1           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v5           #msg:Ljava/lang/String;
    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 482
    .local v4, intent:Landroid/content/Intent;
    const-class v10, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v4, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 483
    const-string v10, "drmtargettomain"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 485
    :try_start_0
    iget-object v10, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 487
    .local v3, id_idx:I
    iget-object v10, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 488
    .local v9, trackId:Ljava/lang/String;
    const-string v10, "track"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .end local v3           #id_idx:I
    :goto_1
    const/4 v10, -0x2

    invoke-virtual {p0, v4, v10}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 489
    .end local v9           #trackId:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 490
    .local v2, e:Ljava/lang/Exception;
    iget-object v10, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v11, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v12, "_id"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 491
    .restart local v9       #trackId:Ljava/lang/String;
    const-string v10, "track"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private getActivityTitle()Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7f070027

    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, fancyName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    :goto_0
    if-nez v0, :cond_0

    .line 670
    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 672
    :cond_0
    return-object v0

    .line 660
    :cond_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v2, :cond_2

    .line 661
    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 664
    :cond_2
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 665
    .local v1, iCount:I
    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getListSizeTitle(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getListSizeTitle(I)Ljava/lang/String;
    .locals 4
    .parameter "iListSize"

    .prologue
    .line 1250
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1251
    .local v0, szTitle:Ljava/lang/String;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1252
    :cond_0
    const v1, 0x7f07002a

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1254
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "%1s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1255
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%1s"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1259
    :goto_0
    return-object v1

    .line 1258
    :cond_2
    const-string v1, "[CarTrackBrowserActivity]"

    const-string v2, "getListSizeTitle(), Can\'t find String htc_all_tracks_title_counts or htc_all_tracks_title_one!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    const-string v1, ""

    goto :goto_0
.end method

.method private getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "async"
    .parameter "filter"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 603
    const/4 v8, 0x0

    .line 604
    .local v8, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_2

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAsyncQuerying:Z

    .line 605
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    const/4 v6, 0x0

    .line 610
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 624
    new-array v6, v2, [Ljava/lang/String;

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 626
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    const-string v0, "title LIKE ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    :cond_0
    const-string v0, " AND is_music>=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    if-eqz p1, :cond_3

    .line 633
    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "title COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const/4 v8, 0x0

    .line 645
    :goto_1
    if-eqz v8, :cond_1

    if-eqz p1, :cond_1

    .line 646
    invoke-virtual {p0, v8}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->init(Landroid/database/Cursor;)V

    .line 649
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 651
    :cond_1
    return-object v8

    .end local v6           #keywords:[Ljava/lang/String;
    .end local v9           #where:Ljava/lang/StringBuilder;
    :cond_2
    move v0, v1

    .line 604
    goto :goto_0

    .line 637
    .restart local v6       #keywords:[Ljava/lang/String;
    .restart local v9       #where:Ljava/lang/StringBuilder;
    :cond_3
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "title COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1
.end method

.method private joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "c"

    .prologue
    .line 1160
    if-nez p1, :cond_0

    .line 1161
    const/4 v0, 0x0

    .line 1203
    :goto_0
    return-object v0

    .line 1163
    :cond_0
    instance-of v0, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/htc/music/util/AlbumArtMergeCursor;

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p1

    .line 1164
    goto :goto_0

    .line 1167
    :cond_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1168
    .local v8, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1169
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_art"

    aput-object v1, v2, v0

    .line 1174
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1176
    .local v10, artCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 1177
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1178
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1179
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1185
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1186
    const/4 p1, 0x0

    .line 1187
    const/4 v0, 0x0

    goto :goto_0

    .line 1190
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    .local v6, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1192
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1193
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1194
    .local v12, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1195
    .local v9, albumIdx:I
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1196
    .local v11, id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1202
    .end local v9           #albumIdx:I
    .end local v11           #id:I
    .end local v12           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_5
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1203
    .local v7, albumArtCrsor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v0, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    invoke-direct {v0, p1, v7, v10}, Lcom/htc/music/widget/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 432
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setMainTitle(I)V

    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setSecondaryTitleVisible(Z)V

    .line 434
    return-void
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 294
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .locals 5
    .parameter "newCursor"

    .prologue
    const/4 v2, 0x1

    .line 379
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-nez v1, :cond_1

    .line 380
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v1, :cond_2

    .line 387
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->clearChoices()V

    .line 389
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 390
    .local v0, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 392
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v1, :cond_3

    .line 394
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->showDatabaseError()V

    .line 395
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->closeContextMenu()V

    .line 396
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 400
    :cond_3
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 401
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 402
    invoke-direct {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    .line 403
    :cond_4
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 404
    const v1, 0x7f070037

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->showEmptyView(I)V

    goto :goto_0

    .line 409
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->hideEmptyErrorView()V

    .line 411
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    .line 412
    const v1, 0x7f030036

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setContentView(I)V

    .line 413
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 414
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 415
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 418
    :cond_6
    invoke-direct {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    .line 420
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 421
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 428
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.music.metachanged"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 423
    :cond_8
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 424
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityMainTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setMainTitle(Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivitySecondaryTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 115
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "description"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mDescription:Ljava/lang/String;

    .line 117
    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mCountTemplate:Ljava/lang/String;

    .line 119
    invoke-virtual {p0, v5}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setVolumeControlStream(I)V

    .line 122
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const-string v1, "_data"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mCursorCols:[Ljava/lang/String;

    .line 143
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setContentView(I)V

    .line 145
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 146
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 149
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setDividerHeight(I)V

    .line 152
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f030009

    new-array v5, v6, [Ljava/lang/String;

    new-array v6, v6, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/carmode/CarTrackBrowseActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    .line 159
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    invoke-direct {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setTitle()V

    .line 161
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 163
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 165
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v7, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v0, "file"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    const v0, 0x7f0700ab

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setSearchHint(I)V

    .line 174
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    .line 177
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x1080027

    const v3, 0x1040013

    .line 552
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 553
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 554
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 587
    invoke-super {p0, p1}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 556
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/htc/music/carmode/util/CarMusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070068

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/carmode/CarTrackBrowseActivity$4;

    invoke-direct {v2, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$4;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V

    invoke-virtual {v1, v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 565
    :pswitch_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/htc/music/carmode/util/CarMusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/carmode/CarTrackBrowseActivity$6;

    invoke-direct {v2, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$6;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V

    invoke-virtual {v1, v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/htc/music/carmode/CarTrackBrowseActivity$5;

    invoke-direct {v3, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$5;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 554
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 255
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 257
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 259
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 261
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 265
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 269
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 270
    iput-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    .line 272
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_2

    .line 273
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mUiHandler:Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;

    if-eqz v1, :cond_3

    .line 277
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mUiHandler:Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity$UIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 280
    :cond_3
    const-string v1, "[CarTrackBrowserActivity]"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-super {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 283
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 499
    const-string v2, "TrackBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onListItemClick, position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iput p3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mSelectedPosition:I

    .line 508
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "content://drm/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 510
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2, p3, p4, p5}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->checkDrmFile(Landroid/net/Uri;IJ)V

    goto :goto_0

    .line 514
    :cond_2
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mFilter:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 515
    new-instance v0, Lcom/htc/music/NpCategory;

    iget-short v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mCategory:S

    invoke-direct {v0, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 517
    .local v0, category:Lcom/htc/music/NpCategory;
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    new-array v3, v5, [I

    invoke-static {p0, v2, p3, v0, v3}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    .line 521
    .end local v0           #category:Lcom/htc/music/NpCategory;
    :cond_3
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    new-array v4, v5, [I

    invoke-static {p0, v2, p3, v3, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAllNotReShuffle(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 324
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 332
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 334
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    .line 338
    :cond_1
    invoke-super {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 339
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 592
    invoke-super {p0, p1, p2}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 593
    packed-switch p1, :pswitch_data_0

    .line 598
    .end local p2
    :goto_0
    return-void

    .line 595
    .restart local p2
    :pswitch_0
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 302
    invoke-super {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 304
    invoke-direct {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setTitle()V

    .line 306
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 308
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 317
    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAsyncQuerying:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->showSpinner(Z)V

    .line 320
    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 374
    const-string v0, "description"

    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-super {p0, p1}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 376
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1152
    move v1, p2

    .line 1153
    .local v1, start:I
    add-int v0, p2, p3

    .line 1154
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1155
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 1157
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1124
    const-string v0, "[CarTrackBrowserActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    packed-switch p2, :pswitch_data_0

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1127
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 1128
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 1129
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1134
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v0, :cond_2

    .line 1135
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->setAutoRequery(Z)V

    .line 1136
    :cond_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1141
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v0, :cond_3

    .line 1142
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 1143
    :cond_3
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 1125
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
    .line 1116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->preSearchTime:J

    .line 1117
    iput-object p1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mFilter:Ljava/lang/String;

    .line 1118
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1121
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 197
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mStopping:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mPlaybackServiceConnected:Z

    .line 227
    :goto_0
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mPlaybackServiceConnected:Z

    .line 204
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    if-nez v0, :cond_1

    .line 205
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f030009

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/carmode/CarTrackBrowseActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    .line 212
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    invoke-direct {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setTitle()V

    .line 215
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 219
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 222
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setTitle()V

    .line 223
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mAdapter:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 232
    const-string v0, "[CarTrackBrowserActivity]"

    const-string v1, "onServiceDisconnected... finish."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->finish()V

    .line 234
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 181
    invoke-super {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mStopping:Z

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 192
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mStopping:Z

    .line 240
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 242
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mPlaybackServiceConnected:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mPlaybackServiceConnected:Z

    .line 247
    :cond_0
    invoke-super {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 248
    return-void
.end method
