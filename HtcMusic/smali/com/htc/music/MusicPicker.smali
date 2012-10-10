.class public Lcom/htc/music/MusicPicker;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "MusicPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MusicPicker$QueryHandler;,
        Lcom/htc/music/MusicPicker$TrackListAdapter;
    }
.end annotation


# static fields
.field static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC, title COLLATE NOCASE ASC, track COLLATE NOCASE ASC"

.field static final ALBUM_MENU:I = 0x2

.field static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist ASC, title COLLATE NOCASE ASC, track COLLATE NOCASE ASC, album COLLATE NOCASE ASC"

.field static final ARTIST_MENU:I = 0x3

.field static final CURSOR_COLS:[Ljava/lang/String; = null

.field static final DBG:Z = false

.field static final FOCUS_KEY:Ljava/lang/String; = "focused"

.field static final IS_RING_TYPE:Ljava/lang/String; = "isRingType"

.field static final LIMIT_SIZE:Ljava/lang/String; = "sizeLimit"

.field static final LIST_STATE_KEY:Ljava/lang/String; = "liststate"

.field static final MEDIASTORE_DRM_CD:I = 0x5

.field static final MEDIASTORE_DRM_FL:I = 0x3

.field static final MY_QUERY_TOKEN:I = 0x2a

.field static final SORT_MODE_KEY:Ljava/lang/String; = "sortMode"

.field static final TAG:Ljava/lang/String; = "[MusicPickerActivity]"

.field static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"

.field static final TRACK_MENU:I = 0x1

.field static sFormatBuilder:Ljava/lang/StringBuilder;

.field static sFormatter:Ljava/util/Formatter;

.field static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field mAdapter:Lcom/htc/music/MusicPicker$TrackListAdapter;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBaseUri:Landroid/net/Uri;

.field mCancelButton:Lcom/htc/widget/HtcFooterButton;

.field mCursor:Landroid/database/Cursor;

.field private mIsPlaying:Z

.field mListHasFocus:Z

.field mListShown:Z

.field mListState:Landroid/os/Parcelable;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field mMimeTypeFilter:Ljava/lang/String;

.field mOkayButton:Lcom/htc/widget/HtcFooterButton;

.field mPickerView:Landroid/view/View;

.field mPlayingId:J

.field mQueryHandler:Lcom/htc/music/MusicPicker$QueryHandler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field mSelectedId:J

.field mSelectedUri:Landroid/net/Uri;

.field mShowDRM:Z

.field mShowOgg:Z

.field mSizeLimit:I

.field mSortMode:I

.field mSortOrder:Ljava/lang/String;

.field setPickerViewVisibilityRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 116
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const-string v1, "artist"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/htc/music/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 133
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/htc/music/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/htc/music/MusicPicker;->sFormatter:Ljava/util/Formatter;

    .line 135
    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lcom/htc/music/MusicPicker;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 113
    iput-boolean v1, p0, Lcom/htc/music/MusicPicker;->mIsPlaying:Z

    .line 146
    iput-object v2, p0, Lcom/htc/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/MusicPicker;->mSortMode:I

    .line 172
    iput-wide v3, p0, Lcom/htc/music/MusicPicker;->mSelectedId:J

    .line 178
    iput-wide v3, p0, Lcom/htc/music/MusicPicker;->mPlayingId:J

    .line 183
    iput-boolean v1, p0, Lcom/htc/music/MusicPicker;->mShowDRM:Z

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MusicPicker;->mShowOgg:Z

    .line 185
    iput-object v2, p0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    .line 187
    iput v1, p0, Lcom/htc/music/MusicPicker;->mSizeLimit:I

    .line 472
    new-instance v0, Lcom/htc/music/MusicPicker$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MusicPicker$1;-><init>(Lcom/htc/music/MusicPicker;)V

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 637
    new-instance v0, Lcom/htc/music/MusicPicker$2;

    invoke-direct {v0, p0}, Lcom/htc/music/MusicPicker$2;-><init>(Lcom/htc/music/MusicPicker;)V

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->setPickerViewVisibilityRunnable:Ljava/lang/Runnable;

    .line 876
    new-instance v0, Lcom/htc/music/MusicPicker$3;

    invoke-direct {v0, p0}, Lcom/htc/music/MusicPicker$3;-><init>(Lcom/htc/music/MusicPicker;)V

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/MusicPicker;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/music/MusicPicker;->getUnknownArtist()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/MusicPicker;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/music/MusicPicker;->getUnknownAlbum()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/MusicPicker;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPicker;->setSelectedItemPosition(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/MusicPicker;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/MusicPicker;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/MusicPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/music/MusicPicker;->isPlaying()Z

    move-result v0

    return v0
.end method

.method private addExtraQueryConditions(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "where"

    .prologue
    .line 1062
    iget-boolean v0, p0, Lcom/htc/music/MusicPicker;->mShowDRM:Z

    if-eqz v0, :cond_2

    .line 1063
    const-string v0, " AND is_music!=3 AND is_music!=5 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    :goto_0
    iget-boolean v0, p0, Lcom/htc/music/MusicPicker;->mShowOgg:Z

    if-nez v0, :cond_0

    .line 1070
    const-string v0, " AND is_music!=3 AND mime_type NOT LIKE \'application/ogg%\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    :cond_0
    iget v0, p0, Lcom/htc/music/MusicPicker;->mSizeLimit:I

    if-lez v0, :cond_1

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND _size <= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/MusicPicker;->mSizeLimit:I

    mul-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPicker;->addMimeTypeFilter(Ljava/lang/StringBuilder;)V

    .line 1080
    const-string v0, "[MusicPickerActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query condition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    return-void

    .line 1067
    :cond_2
    const-string v0, " AND is_music<=1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private addMimeTypeFilter(Ljava/lang/StringBuilder;)V
    .locals 6
    .parameter "where"

    .prologue
    .line 1104
    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1105
    iget-object v4, p0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, entries:[Ljava/lang/String;
    array-length v2, v0

    .line 1107
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1108
    .local v3, mimeTypeFilter:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_3

    .line 1109
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1110
    aget-object v4, v0, v1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1109
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1112
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mime_type == \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    add-int/lit8 v4, v2, -0x1

    if-eq v1, v4, :cond_0

    .line 1115
    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1118
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1119
    const-string v4, " AND ("

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1121
    const-string v4, " )"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    .end local v0           #entries:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #mimeTypeFilter:Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method

.method private getUnknownAlbum()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 1048
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1049
    .local v7, where:Ljava/lang/StringBuilder;
    const-string v0, "album ISNULL"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    const-string v0, " OR album = \'<unknown>\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    invoke-direct {p0, v7}, Lcom/htc/music/MusicPicker;->addExtraQueryConditions(Ljava/lang/StringBuilder;)V

    .line 1052
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1054
    .local v6, cur:Landroid/database/Cursor;
    return-object v6
.end method

.method private getUnknownArtist()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 1038
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1039
    .local v7, where:Ljava/lang/StringBuilder;
    const-string v0, "artist ISNULL"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    const-string v0, " OR artist = \'<unknown>\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    invoke-direct {p0, v7}, Lcom/htc/music/MusicPicker;->addExtraQueryConditions(Ljava/lang/StringBuilder;)V

    .line 1042
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1044
    .local v6, cur:Landroid/database/Cursor;
    return-object v6
.end method

.method private isPlaying()Z
    .locals 1

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/htc/music/MusicPicker;->mIsPlaying:Z

    return v0
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "secs"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 455
    const v2, 0x7f070005

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, durationformat:Ljava/lang/String;
    sget-object v2, Lcom/htc/music/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 462
    sget-object v1, Lcom/htc/music/MusicPicker;->sTimeArgs:[Ljava/lang/Object;

    .line 463
    .local v1, timeArgs:[Ljava/lang/Object;
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 464
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 465
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 466
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 467
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 469
    sget-object v2, Lcom/htc/music/MusicPicker;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setSelectedItemPosition(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cur"

    .prologue
    .line 1084
    iget-wide v3, p0, Lcom/htc/music/MusicPicker;->mSelectedId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 1085
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 1086
    .local v1, savedCursorPos:I
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1087
    .local v0, idIndex:I
    const/4 v2, -0x1

    .line 1088
    .local v2, selectedPos:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1089
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1090
    iget-wide v3, p0, Lcom/htc/music/MusicPicker;->mSelectedId:J

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 1091
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1093
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 1097
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1098
    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 1099
    invoke-virtual {p0, v2}, Lcom/htc/music/MusicPicker;->setSelection(I)V

    .line 1101
    .end local v0           #idIndex:I
    .end local v1           #savedCursorPos:I
    .end local v2           #selectedPos:I
    :cond_2
    return-void
.end method


# virtual methods
.method canBeForwarded(Landroid/net/Uri;)Z
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 1007
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/htc/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1008
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1022
    :goto_0
    return v10

    .line 1010
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1011
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1012
    const/4 v7, 0x0

    .line 1013
    goto :goto_0

    .line 1015
    :cond_1
    const/4 v6, 0x1

    .line 1016
    .local v6, canBeForwarded:Z
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1017
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    const-string v1, "is_music"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1018
    .local v8, isMusic:J
    const-wide/16 v0, 0x1

    cmp-long v0, v8, v0

    if-lez v0, :cond_2

    .line 1019
    const-wide/16 v0, 0x3

    cmp-long v0, v8, v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x5

    cmp-long v0, v8, v0

    if-eqz v0, :cond_3

    const/4 v6, 0x1

    .line 1020
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1021
    const/4 v7, 0x0

    move v10, v6

    .line 1022
    goto :goto_0

    :cond_3
    move v6, v10

    .line 1019
    goto :goto_1
.end method

.method doQuery(ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 25
    .parameter "sync"
    .parameter "filterstring"

    .prologue
    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mQueryHandler:Lcom/htc/music/MusicPicker$QueryHandler;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPicker$QueryHandler;->cancelOperation(I)V

    .line 795
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 796
    .local v24, where:Ljava/lang/StringBuilder;
    const-string v2, "title != \'\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MusicPicker;->mSortMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 798
    const-string v2, " AND artist is not null"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const-string v2, " AND artist != \'<unknown>\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 807
    .local v6, keywords:[Ljava/lang/String;
    if-nez p2, :cond_4

    const/16 v19, 0x1

    .line 808
    .local v19, searchContainsUnkown:Z
    :goto_1
    if-eqz p2, :cond_6

    .line 809
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MusicPicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    .line 810
    .local v23, unknownArtist:Ljava/lang/String;
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MusicPicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    .line 811
    .local v22, unknownAlbum:Ljava/lang/String;
    const-string v2, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 812
    .local v20, searchWords:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v2, v0

    new-array v6, v2, [Ljava/lang/String;

    .line 813
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v15

    .line 814
    .local v15, col:Ljava/text/Collator;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 815
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move-object/from16 v0, v20

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_5

    .line 816
    aget-object v2, v20, v16

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v20, v16

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 817
    :cond_1
    const/16 v19, 0x1

    .line 818
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v20, v16

    invoke-static {v3}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v16

    .line 815
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 800
    .end local v6           #keywords:[Ljava/lang/String;
    .end local v15           #col:Ljava/text/Collator;
    .end local v16           #i:I
    .end local v19           #searchContainsUnkown:Z
    .end local v20           #searchWords:[Ljava/lang/String;
    .end local v22           #unknownAlbum:Ljava/lang/String;
    .end local v23           #unknownArtist:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MusicPicker;->mSortMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 801
    const-string v2, " AND album is not null"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    const-string v2, " AND album != \'<unknown>\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 807
    .restart local v6       #keywords:[Ljava/lang/String;
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 820
    .restart local v15       #col:Ljava/text/Collator;
    .restart local v16       #i:I
    .restart local v19       #searchContainsUnkown:Z
    .restart local v20       #searchWords:[Ljava/lang/String;
    .restart local v22       #unknownAlbum:Ljava/lang/String;
    .restart local v23       #unknownArtist:Ljava/lang/String;
    :cond_5
    const/16 v16, 0x0

    :goto_3
    move-object/from16 v0, v20

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_6

    .line 821
    const-string v2, " AND "

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    const-string v2, "artist_key||"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    const-string v2, "album_key||"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    const-string v2, "title_key LIKE ?"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 828
    .end local v15           #col:Ljava/text/Collator;
    .end local v16           #i:I
    .end local v20           #searchWords:[Ljava/lang/String;
    .end local v22           #unknownAlbum:Ljava/lang/String;
    .end local v23           #unknownArtist:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/music/MusicPicker;->addExtraQueryConditions(Ljava/lang/StringBuilder;)V

    .line 830
    if-eqz p1, :cond_9

    .line 832
    const/16 v17, 0x0

    .line 833
    .local v17, ret:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    sget-object v4, Lcom/htc/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 835
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MusicPicker;->mSortMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 836
    if-eqz v19, :cond_7

    .line 837
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MusicPicker;->getUnknownArtist()Landroid/database/Cursor;

    move-result-object v21

    .line 838
    .local v21, unknown:Landroid/database/Cursor;
    if-eqz v21, :cond_7

    .line 839
    new-instance v18, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v17, v2, v3

    const/4 v3, 0x1

    aput-object v21, v2, v3

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v17           #ret:Landroid/database/Cursor;
    .local v18, ret:Landroid/database/Cursor;
    move-object/from16 v17, v18

    .line 863
    .end local v18           #ret:Landroid/database/Cursor;
    .end local v21           #unknown:Landroid/database/Cursor;
    :cond_7
    :goto_4
    return-object v17

    .line 844
    .restart local v17       #ret:Landroid/database/Cursor;
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/MusicPicker;->mSortMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 845
    if-eqz v19, :cond_7

    .line 846
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MusicPicker;->getUnknownAlbum()Landroid/database/Cursor;

    move-result-object v21

    .line 847
    .restart local v21       #unknown:Landroid/database/Cursor;
    if-eqz v21, :cond_7

    .line 848
    new-instance v18, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v17, v2, v3

    const/4 v3, 0x1

    aput-object v21, v2, v3

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v17           #ret:Landroid/database/Cursor;
    .restart local v18       #ret:Landroid/database/Cursor;
    move-object/from16 v17, v18

    .end local v18           #ret:Landroid/database/Cursor;
    .restart local v17       #ret:Landroid/database/Cursor;
    goto :goto_4

    .line 858
    .end local v17           #ret:Landroid/database/Cursor;
    .end local v21           #unknown:Landroid/database/Cursor;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mAdapter:Lcom/htc/music/MusicPicker$TrackListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 859
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MusicPicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 860
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/MusicPicker;->mQueryHandler:Lcom/htc/music/MusicPicker$QueryHandler;

    const/16 v8, 0x2a

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    sget-object v11, Lcom/htc/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    move-object v13, v6

    invoke-virtual/range {v7 .. v14}, Lcom/htc/music/MusicPicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :goto_5
    const/16 v17, 0x0

    goto :goto_4

    .line 855
    .restart local v17       #ret:Landroid/database/Cursor;
    :catch_0
    move-exception v2

    goto :goto_5
.end method

.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 633
    const-string v0, "[MusicPickerActivity]"

    const-string v1, "htc activity onAnimationEnd"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->setPickerViewVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 635
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 981
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 983
    :pswitch_0
    iget-wide v0, p0, Lcom/htc/music/MusicPicker;->mSelectedId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->canBeForwarded(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 985
    const v0, 0x7f070095

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 989
    :cond_1
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MusicPicker;->setResult(ILandroid/content/Intent;)V

    .line 990
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->finish()V

    goto :goto_0

    .line 995
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->finish()V

    goto :goto_0

    .line 981
    nop

    :pswitch_data_0
    .packed-switch 0x7f08001c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 959
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-ne v0, p1, :cond_0

    .line 960
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 961
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 962
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 963
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 964
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MusicPicker;->mIsPlaying:Z

    .line 965
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MusicPicker;->mPlayingId:J

    .line 966
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 968
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 725
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 727
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 728
    .local v0, res:Landroid/content/res/Resources;
    const-string v2, "common_app_bkg"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 729
    .local v1, resId:I
    const-string v2, "common_app_bkg"

    invoke-static {p0, v2, v1}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 731
    if-lez v1, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 734
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "icicle"

    .prologue
    .line 500
    invoke-super/range {p0 .. p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 501
    const-string v2, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MusicPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MusicPicker;->mAudioManager:Landroid/media/AudioManager;

    .line 503
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 504
    .local v11, f:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    const-string v2, "file"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mScanListener:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/htc/music/MusicPicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 513
    const/16 v16, 0x1

    .line 514
    .local v16, sortMode:I
    if-nez p1, :cond_6

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "showDrm"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MusicPicker;->mShowDRM:Z

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "showOgg"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MusicPicker;->mShowOgg:Z

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sizeLimit"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MusicPicker;->mSizeLimit:I

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "MimeTypeFilter"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 523
    const-string v2, "[MusicPickerActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mime type filter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MusicPicker;->mShowOgg:Z

    .line 543
    :cond_0
    :goto_0
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 544
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 554
    :cond_1
    const v2, 0x7f03003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MusicPicker;->setContentView(I)V

    .line 555
    new-instance v2, Lcom/htc/widget/ActionBarText;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v2, :cond_2

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 559
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v2, :cond_3

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 563
    :cond_3
    const v2, 0x7f08001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcFooter;

    .line 565
    .local v15, savePanel:Lcom/htc/widget/HtcFooter;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 566
    const v2, 0x7f070070

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MusicPicker;->setTitle(I)V

    .line 568
    const-string v2, "title_key"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    .line 572
    .local v5, listView:Lcom/htc/widget/HtcListView;
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 573
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 574
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 577
    const v2, 0x7f080093

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MusicPicker;->mPickerView:Landroid/view/View;

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mPickerView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 580
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    .line 581
    .local v12, handler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->setPickerViewVisibilityRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v12, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 584
    new-instance v2, Lcom/htc/music/MusicPicker$TrackListAdapter;

    const v6, 0x7f03003d

    const/4 v3, 0x0

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-array v8, v3, [I

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/MusicPicker$TrackListAdapter;-><init>(Lcom/htc/music/MusicPicker;Landroid/content/Context;Lcom/htc/widget/HtcListView;I[Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MusicPicker;->mAdapter:Lcom/htc/music/MusicPicker$TrackListAdapter;

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mAdapter:Lcom/htc/music/MusicPicker$TrackListAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MusicPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 590
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 593
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcListView;->setSaveEnabled(Z)V

    .line 594
    const-string v2, "title COLLATE NOCASE ASC"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 595
    new-instance v2, Lcom/htc/music/MusicPicker$QueryHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/htc/music/MusicPicker$QueryHandler;-><init>(Lcom/htc/music/MusicPicker;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MusicPicker;->mQueryHandler:Lcom/htc/music/MusicPicker$QueryHandler;

    .line 600
    const v2, 0x7f08001d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MusicPicker;->mOkayButton:Lcom/htc/widget/HtcFooterButton;

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mOkayButton:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x2040151

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mOkayButton:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x20800a7

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mOkayButton:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    const v2, 0x7f08001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MusicPicker;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x2040152

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x20800a3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 613
    .local v10, builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v14

    .line 614
    .local v14, path:Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 615
    .local v13, idx:I
    if-ltz v13, :cond_4

    .line 616
    const/4 v2, 0x0

    invoke-virtual {v14, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 618
    :cond_4
    invoke-virtual {v10, v14}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 619
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 623
    .local v9, baseSelectedUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v9, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/MusicPicker;->mSelectedId:J

    .line 629
    .end local v9           #baseSelectedUri:Landroid/net/Uri;
    .end local v10           #builder:Landroid/net/Uri$Builder;
    .end local v13           #idx:I
    .end local v14           #path:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/music/MusicPicker;->setSortMode(I)Z

    .line 630
    .end local v5           #listView:Lcom/htc/widget/HtcListView;
    .end local v12           #handler:Landroid/os/Handler;
    .end local v15           #savePanel:Lcom/htc/widget/HtcFooter;
    :goto_1
    return-void

    .line 527
    :cond_6
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 531
    const-string v2, "liststate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 532
    const-string v2, "focused"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MusicPicker;->mListHasFocus:Z

    .line 533
    const-string v2, "sortMode"

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 534
    const-string v2, "showDrm"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MusicPicker;->mShowDRM:Z

    .line 535
    const-string v2, "showOgg"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MusicPicker;->mShowOgg:Z

    .line 536
    const-string v2, "sizeLimit"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/MusicPicker;->mSizeLimit:I

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "MimeTypeFilter"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 539
    const-string v2, "[MusicPickerActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mime type filter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/MusicPicker;->mMimeTypeFilter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/MusicPicker;->mShowOgg:Z

    goto/16 :goto_0

    .line 546
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 548
    const-string v2, "[MusicPickerActivity]"

    const-string v3, "No data URI given to PICK action"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MusicPicker;->finish()V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 660
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 661
    const v0, 0x7f07006d

    invoke-interface {p1, v2, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 662
    const v0, 0x7f07006e

    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 663
    const/4 v0, 0x3

    const v1, 0x7f07006f

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 664
    return v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 493
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 494
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 495
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 868
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 874
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->setSelected(Landroid/database/Cursor;)V

    .line 875
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 653
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/music/MusicPicker;->setSortMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    const/4 v0, 0x1

    .line 656
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 695
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 696
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->stopMediaPlayer()V

    .line 697
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 698
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 669
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 670
    iget-object v2, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 672
    .local v0, enabled:Ljava/lang/Boolean;
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 673
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 674
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 675
    :cond_0
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 676
    if-eqz v1, :cond_1

    .line 677
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 678
    :cond_1
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 679
    if-eqz v1, :cond_2

    .line 680
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 681
    :cond_2
    return v3

    .line 670
    .end local v0           #enabled:Ljava/lang/Boolean;
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 648
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onRestart()V

    .line 649
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    .line 650
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 714
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 715
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 716
    .local v0, res:Landroid/content/res/Resources;
    const-string v2, "common_app_bkg"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 717
    .local v1, resId:I
    const-string v2, "common_app_bkg"

    invoke-static {p0, v2, v1}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 719
    if-lez v1, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 722
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 685
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 688
    const-string v0, "liststate"

    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 689
    const-string v0, "focused"

    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 690
    const-string v0, "sortMode"

    iget v1, p0, Lcom/htc/music/MusicPicker;->mSortMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 691
    const-string v0, "sizeLimit"

    iget v1, p0, Lcom/htc/music/MusicPicker;->mSizeLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 692
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "filter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1002
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/htc/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1003
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mAdapter:Lcom/htc/music/MusicPicker$TrackListAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/music/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1004
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 701
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 707
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mAdapter:Lcom/htc/music/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 708
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mAdapter:Lcom/htc/music/MusicPicker$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;Z)V

    .line 709
    return-void
.end method

.method setSelected(Landroid/database/Cursor;)V
    .locals 11
    .parameter "c"

    .prologue
    .line 906
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 907
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 908
    .local v4, newId:J
    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 910
    iput-wide v4, p0, Lcom/htc/music/MusicPicker;->mSelectedId:J

    .line 911
    iget-wide v7, p0, Lcom/htc/music/MusicPicker;->mPlayingId:J

    cmp-long v7, v4, v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v7, :cond_4

    .line 912
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->stopMediaPlayer()V

    .line 913
    iget-object v7, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    const-string v9, "is_music"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 914
    .local v1, isMusic:J
    const-wide/16 v7, 0x1

    cmp-long v7, v1, v7

    if-lez v7, :cond_2

    .line 915
    iput-wide v4, p0, Lcom/htc/music/MusicPicker;->mPlayingId:J

    .line 916
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 956
    .end local v1           #isMusic:J
    :cond_1
    :goto_0
    return-void

    .line 927
    .restart local v1       #isMusic:J
    :cond_2
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v7, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 929
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Lcom/htc/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v7, p0, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 930
    iget-object v7, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 932
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "isRingType"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 933
    .local v3, isRingType:Z
    const-string v7, "[MusicPickerActivity]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isRingType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    if-eqz v3, :cond_3

    .line 935
    iget-object v7, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 940
    :goto_1
    iget-object v7, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V

    .line 941
    iget-object v7, p0, Lcom/htc/music/MusicPicker;->mAudioManager:Landroid/media/AudioManager;

    iget-object v8, p0, Lcom/htc/music/MusicPicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v9, 0x3

    const/4 v10, 0x2

    invoke-virtual {v7, v8, v9, v10}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 943
    iget-object v7, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V

    .line 944
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/music/MusicPicker;->mIsPlaying:Z

    .line 945
    iput-wide v4, p0, Lcom/htc/music/MusicPicker;->mPlayingId:J

    .line 946
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->invalidateViews()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    .end local v3           #isRingType:Z
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->updateConfirmButtons()V

    goto :goto_0

    .line 937
    .restart local v3       #isRingType:Z
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 947
    .end local v3           #isRingType:Z
    :catch_0
    move-exception v0

    .line 948
    .local v0, e:Ljava/io/IOException;
    const-string v7, "[MusicPickerActivity]"

    const-string v8, "Unable to play track"

    invoke-static {v7, v8, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 949
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_2

    .line 952
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #isMusic:J
    :cond_4
    iget-object v7, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v7, :cond_1

    .line 953
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->stopMediaPlayer()V

    .line 954
    invoke-virtual {p0}, Lcom/htc/music/MusicPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto/16 :goto_0
.end method

.method setSortMode(I)Z
    .locals 4
    .parameter "sortMode"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 742
    iget v2, p0, Lcom/htc/music/MusicPicker;->mSortMode:I

    if-eq p1, v2, :cond_0

    .line 743
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 762
    :goto_0
    return v0

    .line 745
    :pswitch_0
    iput p1, p0, Lcom/htc/music/MusicPicker;->mSortMode:I

    .line 746
    const-string v2, "title COLLATE NOCASE ASC"

    iput-object v2, p0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 747
    invoke-virtual {p0, v1, v3}, Lcom/htc/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 750
    :pswitch_1
    iput p1, p0, Lcom/htc/music/MusicPicker;->mSortMode:I

    .line 751
    const-string v2, "album COLLATE NOCASE ASC, title COLLATE NOCASE ASC, track COLLATE NOCASE ASC"

    iput-object v2, p0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 752
    invoke-virtual {p0, v1, v3}, Lcom/htc/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 755
    :pswitch_2
    iput p1, p0, Lcom/htc/music/MusicPicker;->mSortMode:I

    .line 756
    const-string v2, "artist ASC, title COLLATE NOCASE ASC, track COLLATE NOCASE ASC, album COLLATE NOCASE ASC"

    iput-object v2, p0, Lcom/htc/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 757
    invoke-virtual {p0, v1, v3}, Lcom/htc/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 743
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method stopMediaPlayer()V
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 973
    iget-object v0, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 974
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 975
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MusicPicker;->mIsPlaying:Z

    .line 976
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/MusicPicker;->mPlayingId:J

    .line 978
    :cond_0
    return-void
.end method

.method updateConfirmButtons()V
    .locals 5

    .prologue
    .line 1026
    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-wide v1, p0, Lcom/htc/music/MusicPicker;->mSelectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    .line 1027
    .local v0, enable:Z
    :goto_0
    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mOkayButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v1, :cond_0

    .line 1028
    iget-object v1, p0, Lcom/htc/music/MusicPicker;->mOkayButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1031
    :cond_0
    return-void

    .line 1026
    .end local v0           #enable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
