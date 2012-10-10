.class public Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
.super Lcom/htc/music/widget/GroupListActivity;
.source "AlbumTrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/htc/music/widget/GroupListView$OnGroupClickListener;
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;,
        Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final TAG:Ljava/lang/String; = "[AlbumTrackBrowserActivity]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field private final DIALOG_FOR_DELETE:I

.field private final DIALOG_MENU_CHILD:I

.field private final DIALOG_MENU_GROUP:I

.field private final DIALOG_SET_AS_RINGTONE:I

.field private final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

.field private final DIALOG_SHARETEXT:I

.field private final DIALOG_SHARETYPE:I

.field private final DIALOG_SHARE_DRM_FILE:I

.field private final DIALOG_SHARE_NORMAL_FILE:I

.field private final PLAY_ALL:I

.field private mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mAlbumId:Ljava/lang/String;

.field private mAlbumList:[I

.field private mArtist:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field mButtonClicked:Landroid/view/View$OnClickListener;

.field private mCancel:Lcom/htc/widget/HtcFooterButton;

.field private mComposer:Ljava/lang/String;

.field private mContextMenuIds:[I

.field private mContextMenuItems:[Ljava/lang/CharSequence;

.field private mContextMenuTitle:Ljava/lang/String;

.field private mCurrentChildPos:I

.field private mCurrentGroupPos:I

.field private mCurrentListItemIndex:I

.field private mDbTable:I

.field private mGenre:Ljava/lang/String;

.field private mGenreId:Ljava/lang/String;

.field private mGlist:Lcom/htc/music/widget/GroupListView;

.field private mIsSeriveBinded:Z

.field private mMemoryCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

.field private mNeedBindSerive:Z

.field private mNoChildMode:Z

.field private mPlaylistUri:Ljava/lang/String;

.field mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

.field private mSave:Lcom/htc/widget/HtcFooterButton;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedAlbumId:I

.field private mSelectedAlbumName:Ljava/lang/String;

.field private mSelectedArtistName:Ljava/lang/String;

.field private mSelectedAudioId:I

.field private mSelectedFilePath:Ljava/lang/String;

.field private mSelectedTrackName:Ljava/lang/String;

.field private mService:Lcom/htc/music/IMediaPlaybackService;

.field private mShareText:Ljava/lang/String;

.field private mSongList:[I

.field protected osc:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 185
    invoke-direct {p0}, Lcom/htc/music/widget/GroupListActivity;-><init>()V

    .line 98
    const/16 v0, 0x1b

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->PLAY_ALL:I

    .line 100
    iput v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_MENU_GROUP:I

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_MENU_CHILD:I

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SHARETYPE:I

    .line 103
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SHARETEXT:I

    .line 104
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SHARE_NORMAL_FILE:I

    .line 105
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SHARE_DRM_FILE:I

    .line 106
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SET_AS_RINGTONE:I

    .line 107
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

    .line 108
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_FOR_DELETE:I

    .line 142
    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    .line 144
    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    .line 146
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumName:Ljava/lang/String;

    .line 148
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedArtistName:Ljava/lang/String;

    .line 150
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedTrackName:Ljava/lang/String;

    .line 152
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    .line 163
    iput v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    .line 164
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShareText:Ljava/lang/String;

    .line 166
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    .line 168
    new-instance v0, Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    .line 170
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 172
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNeedBindSerive:Z

    .line 173
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mIsSeriveBinded:Z

    .line 334
    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->osc:Landroid/content/ServiceConnection;

    .line 365
    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 1404
    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mButtonClicked:Landroid/view/View$OnClickListener;

    .line 186
    return-void
.end method

.method private IsPickerMode()Z
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1471
    :cond_0
    const/4 v0, 0x0

    .line 1474
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNeedBindSerive:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedTrackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedTrackName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mIsSeriveBinded:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/util/MemoryCacheMBitmapByTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$202(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Lcom/htc/music/IMediaPlaybackService;)Lcom/htc/music/IMediaPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/widget/GroupListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuIds:[I

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    return p1
.end method

.method static synthetic access$502(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showTrackOptions(Ljava/lang/String;III)V

    return-void
.end method

.method private getAddBtnText()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, count:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    if-eqz v4, :cond_0

    .line 777
    const/4 v1, 0x0

    .line 778
    .local v1, list:[I
    iget-boolean v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    if-eqz v4, :cond_1

    .line 779
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v4}, Lcom/htc/music/widget/GroupListView;->getGroupSeclectList()[I

    move-result-object v1

    .line 782
    :goto_0
    if-nez v1, :cond_2

    move v0, v3

    .line 785
    .end local v1           #list:[I
    :cond_0
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f07006a

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f07005e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 786
    .local v2, text:Ljava/lang/String;
    return-object v2

    .line 781
    .end local v2           #text:Ljava/lang/String;
    .restart local v1       #list:[I
    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v4}, Lcom/htc/music/widget/GroupListView;->getChildSeclectList()[I

    move-result-object v1

    goto :goto_0

    .line 782
    :cond_2
    array-length v0, v1

    goto :goto_1
.end method

.method private getAlbumType()I
    .locals 1

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1479
    const/4 v0, 0x2

    .line 1483
    :goto_0
    return v0

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1481
    const/4 v0, 0x1

    goto :goto_0

    .line 1483
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getAllSongListAndPrepare()[I
    .locals 3

    .prologue
    .line 1498
    const/4 v0, 0x0

    .line 1499
    .local v0, list:[I
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1500
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForGenreAndPrepare(Landroid/content/Context;I)[I

    move-result-object v0

    .line 1507
    :goto_0
    return-object v0

    .line 1501
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1502
    iget v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForArtistAndPrepare(Landroid/content/Context;II)[I

    move-result-object v0

    goto :goto_0

    .line 1504
    :cond_1
    const-string v1, "[AlbumTrackBrowserActivity]"

    const-string v2, "select items but no match"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 22
    .parameter "filterstring"

    .prologue
    .line 635
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    .local v20, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 637
    :cond_0
    const-string v1, "album != \'\'"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    :goto_0
    const/4 v5, 0x0

    .line 643
    .local v5, keywords:[Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 644
    const-string v1, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 645
    .local v18, searchWords:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v1, v0

    new-array v5, v1, [Ljava/lang/String;

    .line 646
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v12

    .line 647
    .local v12, col:Ljava/text/Collator;
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 648
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move-object/from16 v0, v18

    array-length v1, v0

    move/from16 v0, v16

    if-ge v0, v1, :cond_2

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v18, v16

    invoke-static {v2}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v16

    .line 648
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 639
    .end local v5           #keywords:[Ljava/lang/String;
    .end local v12           #col:Ljava/text/Collator;
    .end local v16           #i:I
    .end local v18           #searchWords:[Ljava/lang/String;
    :cond_1
    const-string v1, "title != \'\'"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 651
    .restart local v5       #keywords:[Ljava/lang/String;
    .restart local v12       #col:Ljava/text/Collator;
    .restart local v16       #i:I
    .restart local v18       #searchWords:[Ljava/lang/String;
    :cond_2
    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, v18

    array-length v1, v0

    move/from16 v0, v16

    if-ge v0, v1, :cond_3

    .line 652
    const-string v1, " AND "

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    const-string v1, "artist_key||"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    const-string v1, "album_key ||"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    const-string v1, "title_key LIKE ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 659
    .end local v12           #col:Ljava/text/Collator;
    .end local v16           #i:I
    .end local v18           #searchWords:[Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 661
    .local v21, whereclause:Ljava/lang/String;
    const/16 v1, 0x8

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "numsongs"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "minyear"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "maxyear"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "album_art"

    aput-object v2, v3, v1

    const/4 v1, 0x7

    const-string v2, "album_key"

    aput-object v2, v3, v1

    .line 667
    .local v3, cols:[Ljava/lang/String;
    const/16 v1, 0x8

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v8, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v8, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v8, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v8, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v8, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v8, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v8, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v8, v1

    .line 675
    .local v8, cursorCols:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 676
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 677
    const-string v1, "external"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils$Artists2$Albums;->getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "album COLLATE NOCASE ASC"

    .end local v5           #keywords:[Ljava/lang/String;
    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 767
    .local v17, ret:Landroid/database/Cursor;
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v1, :cond_5

    :cond_4
    if-eqz v17, :cond_5

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v17

    .line 771
    :cond_5
    return-object v17

    .line 683
    .end local v17           #ret:Landroid/database/Cursor;
    .restart local v5       #keywords:[Ljava/lang/String;
    :cond_6
    const-string v1, "external"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "album COLLATE NOCASE ASC"

    .end local v5           #keywords:[Ljava/lang/String;
    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .restart local v17       #ret:Landroid/database/Cursor;
    goto :goto_3

    .line 689
    .end local v17           #ret:Landroid/database/Cursor;
    .restart local v5       #keywords:[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 690
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 691
    .local v14, genreId:J
    const-wide/16 v1, -0x1

    cmp-long v1, v14, v1

    if-nez v1, :cond_8

    .line 699
    const-string v1, " AND _id  in (select  distinct album_id from audio where _id NOT IN (select audio_id from audio_genres_map ) )"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :goto_4
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "album COLLATE NOCASE ASC"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 721
    .restart local v17       #ret:Landroid/database/Cursor;
    goto :goto_3

    .line 709
    .end local v17           #ret:Landroid/database/Cursor;
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND _id  in (select  distinct album_id from audio where _id IN (select audio_id from audio_genres_map WHERE genre_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 721
    .end local v14           #genreId:J
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 722
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    .line 723
    .local v13, composer:Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v19

    .line 724
    .local v19, unknown:Z
    if-eqz v19, :cond_a

    .line 725
    const-string v1, " AND _id IN (SELECT distinct album_id FROM audio_meta where (audio_meta.composer ISNULL OR audio_meta.composer = \'\' OR audio_meta.composer = \'<unknown>\'))"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :goto_5
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "album COLLATE NOCASE ASC"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 740
    .restart local v17       #ret:Landroid/database/Cursor;
    goto/16 :goto_3

    .line 730
    .end local v17           #ret:Landroid/database/Cursor;
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND _id IN (SELECT distinct album_id FROM audio_meta where audio_meta.composer = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 745
    .end local v13           #composer:Ljava/lang/String;
    .end local v19           #unknown:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND album_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    :cond_c
    const-string v1, " AND is_musicis_music>=1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "title COLLATE NOCASE ASC"

    move-object/from16 v6, p0

    move-object v10, v5

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .restart local v17       #ret:Landroid/database/Cursor;
    goto/16 :goto_3
.end method

.method private getTypeId()I
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1493
    :goto_0
    return v0

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1491
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 1493
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1459
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    .line 1467
    :goto_0
    return-void

    .line 1460
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1462
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1463
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1465
    :cond_1
    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shareMusicFile()V
    .locals 5

    .prologue
    .line 1924
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    iget v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    invoke-static {p0, v2, v3}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1926
    .local v0, canShare:I
    packed-switch v0, :pswitch_data_0

    .line 1939
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1940
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1942
    .end local v1           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 1929
    :pswitch_0
    const-string v2, "[AlbumTrackBrowserActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "normal file case, Audio Path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showNewDialog(I)V

    goto :goto_0

    .line 1934
    :pswitch_1
    const-string v2, "[AlbumTrackBrowserActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SD DRM case, Audio Path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showNewDialog(I)V

    goto :goto_0

    .line 1926
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 1914
    invoke-static {p0, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShareText:Ljava/lang/String;

    .line 1915
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShareText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1916
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShareText:Ljava/lang/String;

    .line 1919
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showNewDialog(I)V

    .line 1920
    return-void
.end method

.method private showTrackOptions(Ljava/lang/String;III)V
    .locals 8
    .parameter "name"
    .parameter "groupPos"
    .parameter "childPos"
    .parameter "index"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1511
    iput p2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCurrentGroupPos:I

    .line 1512
    iput p3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCurrentChildPos:I

    .line 1513
    iput p4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCurrentListItemIndex:I

    .line 1515
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuTitle:Ljava/lang/String;

    .line 1517
    if-ltz p3, :cond_0

    .line 1519
    new-array v1, v7, [Ljava/lang/CharSequence;

    const v2, 0x7f070059

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f07005a

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f070056

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x2040214

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x4

    const v3, 0x2040216

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x204020f

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuItems:[Ljava/lang/CharSequence;

    .line 1527
    new-array v1, v7, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuIds:[I

    .line 1536
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumList:[I

    .line 1537
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSongList:[I

    .line 1539
    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showDialog(I)V

    .line 1569
    :goto_0
    return-void

    .line 1542
    :cond_0
    new-array v1, v5, [Ljava/lang/CharSequence;

    const v2, 0x7f070059

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f07005a

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x204020f

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuItems:[Ljava/lang/CharSequence;

    .line 1547
    new-array v1, v5, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuIds:[I

    .line 1553
    const/4 v0, 0x0

    .line 1554
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1555
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getCursorForGenre(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v0

    .line 1561
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 1562
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumList:[I

    .line 1563
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSongList:[I

    .line 1564
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1565
    const/4 v0, 0x0

    .line 1567
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showDialog(I)V

    goto :goto_0

    .line 1556
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1558
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getCursorForArtist(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 1527
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data

    .line 1547
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public init()V
    .locals 14

    .prologue
    const v4, 0x7f030009

    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 407
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->finish()V

    .line 486
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 413
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setContentView(I)V

    .line 418
    :goto_1
    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 419
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v13}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 427
    :cond_2
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcFooter;

    .line 428
    .local v10, footerView:Lcom/htc/widget/HtcFooter;
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 430
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    .line 431
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAddBtnText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x20800c1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 436
    .local v12, zero:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 437
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 442
    :goto_2
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    .line 443
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x2040152

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 444
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x20800a3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 445
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    .end local v12           #zero:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 453
    .local v11, numresults:I
    if-nez v11, :cond_6

    .line 454
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle()V

    .line 455
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showEmptyView(I)V

    goto/16 :goto_0

    .line 415
    .end local v10           #footerView:Lcom/htc/widget/HtcFooter;
    .end local v11           #numresults:I
    :cond_4
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setContentView(I)V

    goto/16 :goto_1

    .line 439
    .restart local v10       #footerView:Lcom/htc/widget/HtcFooter;
    .restart local v12       #zero:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_2

    .line 459
    .end local v12           #zero:Ljava/lang/String;
    .restart local v11       #numresults:I
    :cond_6
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 460
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->hideEmptyErrorView()V

    .line 463
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle()V

    .line 471
    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    new-array v8, v2, [Ljava/lang/String;

    new-array v9, v2, [I

    move-object v1, p0

    move-object v2, p0

    move v7, v4

    invoke-direct/range {v0 .. v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    .line 475
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 476
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    .line 477
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    if-nez v0, :cond_7

    .line 478
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0}, Lcom/htc/music/widget/GroupListView;->expandAllGroups()V

    .line 479
    :cond_7
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, p0}, Lcom/htc/music/widget/GroupListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 480
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, p0}, Lcom/htc/music/widget/GroupListView;->setOnGroupClickListener(Lcom/htc/music/widget/GroupListView$OnGroupClickListener;)V

    .line 481
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, p0}, Lcom/htc/music/widget/GroupListView;->setOnChildClickListener(Lcom/htc/music/widget/GroupListView$OnChildClickListener;)V

    .line 482
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, v13}, Lcom/htc/music/widget/GroupListView;->setFastScrollEnabled(Z)V

    .line 483
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, v13}, Lcom/htc/music/widget/GroupListView;->setTextFilterEnabled(Z)V

    .line 484
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/GroupListView;->setChoiceMode(I)V

    .line 485
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/GroupListView;->setPickerMode(Z)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 1881
    packed-switch p1, :pswitch_data_0

    .line 1910
    :cond_0
    :goto_0
    return-void

    .line 1883
    :pswitch_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 1884
    const-string v4, "playlist"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1886
    .local v2, playlist:I
    const/4 v3, -0x1

    .line 1887
    .local v3, type:I
    const/4 v0, -0x1

    .line 1888
    .local v0, currentId:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1889
    const/4 v3, 0x2

    .line 1890
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1898
    :goto_1
    iget v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    if-ltz v4, :cond_3

    .line 1900
    const/4 v4, 0x1

    new-array v1, v4, [I

    iget v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    aput v4, v1, v6

    .line 1901
    .local v1, list:[I
    int-to-long v4, v2

    invoke-static {p0, v1, v4, v5}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 1891
    .end local v1           #list:[I
    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1892
    const/4 v3, 0x1

    .line 1893
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 1895
    :cond_2
    const-string v4, "[AlbumTrackBrowserActivity]"

    const-string v5, "Add to playlist, the type has some problems"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1904
    :cond_3
    iget v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    iget v5, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    invoke-static {p0, v4, v3, v0, v5}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;IIII)[I

    move-result-object v1

    .line 1905
    .restart local v1       #list:[I
    int-to-long v4, v2

    invoke-static {p0, v1, v4, v5}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 1881
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onChildClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IIJI)Z
    .locals 9
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"
    .parameter "absPos"

    .prologue
    .line 567
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    if-eqz v7, :cond_0

    .line 568
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAddBtnText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 570
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f07006a

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (0)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 571
    .local v6, zero:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v7}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 572
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 578
    .end local v6           #zero:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 580
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v7, v7, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    invoke-virtual {p2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 581
    .local v5, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(II)I

    move-result v1

    .line 582
    .local v1, checkState:I
    packed-switch v1, :pswitch_data_0

    .line 592
    :goto_1
    invoke-virtual {p1}, Lcom/htc/music/widget/GroupListView;->getFirstVisiblePosition()I

    move-result v4

    .line 593
    .local v4, start:I
    move/from16 v2, p7

    .local v2, i:I
    :goto_2
    if-lt v2, v4, :cond_1

    .line 595
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/htc/music/widget/GroupListView;->IsGroup(I)Z

    move-result v0

    .line 598
    .local v0, bGroup:Z
    if-eqz v0, :cond_3

    .line 599
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(I)I

    move-result v1

    .line 600
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    sub-int v8, v2, v4

    invoke-virtual {v7, v8}, Lcom/htc/music/widget/GroupListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v8, v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    invoke-virtual {v7, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    check-cast v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 602
    .restart local v5       #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    packed-switch v1, :pswitch_data_1

    .line 616
    :goto_3
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v7}, Lcom/htc/widget/HtcCheckBox;->invalidate()V

    .line 631
    .end local v0           #bGroup:Z
    .end local v1           #checkState:I
    .end local v2           #i:I
    .end local v4           #start:I
    .end local v5           #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :cond_1
    :goto_4
    const/4 v7, 0x1

    return v7

    .line 574
    .restart local v6       #zero:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0

    .line 584
    .end local v6           #zero:Ljava/lang/String;
    .restart local v1       #checkState:I
    .restart local v5       #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :pswitch_0
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 587
    :pswitch_1
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 604
    .restart local v0       #bGroup:Z
    .restart local v2       #i:I
    .restart local v4       #start:I
    :pswitch_2
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 605
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_3

    .line 608
    :pswitch_3
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 609
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_3

    .line 612
    :pswitch_4
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 613
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_3

    .line 593
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 628
    .end local v0           #bGroup:Z
    .end local v1           #checkState:I
    .end local v2           #i:I
    .end local v4           #start:I
    .end local v5           #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAllSongListAndPrepare()[I

    move-result-object v3

    .line 629
    .local v3, list:[I
    sub-int v7, p7, p3

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    invoke-static {p0, v3, v7, v8}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_4

    .line 582
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 602
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 389
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 391
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v2, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 393
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 394
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 395
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v2, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenWidth:I

    .line 396
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, v2, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenHeight:I

    .line 398
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 191
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setVolumeControlStream(I)V

    .line 195
    if-eqz p1, :cond_1

    .line 196
    const-string v2, "genreid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    .line 197
    const-string v2, "genre"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 198
    const-string v2, "composer"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    .line 199
    const-string v2, "playlisturi"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    .line 200
    const-string v2, "artistid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 201
    const-string v2, "artist"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    .line 202
    const-string v2, "albumid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 203
    const-string v2, "nochildmode"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    .line 204
    const-string v2, "dbTable"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    .line 218
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->enableSearch()V

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->init()V

    .line 236
    return-void

    .line 206
    .end local v0           #f:Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 207
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "genreid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    .line 208
    const-string v2, "genre"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 209
    const-string v2, "composer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    .line 210
    const-string v2, "playlisturi"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    .line 211
    const-string v2, "artistid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 212
    const-string v2, "artist"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    .line 213
    const-string v2, "albumid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 214
    const-string v2, "nochildmode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    .line 215
    const-string v2, "dbTable"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    const v7, 0x7f0700b5

    const/16 v11, 0x13

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1573
    packed-switch p1, :pswitch_data_0

    .line 1708
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    :goto_0
    return-object v5

    .line 1575
    :pswitch_0
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuItems:[Ljava/lang/CharSequence;

    new-instance v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$5;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto :goto_0

    .line 1588
    :pswitch_1
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuItems:[Ljava/lang/CharSequence;

    new-instance v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$6;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto :goto_0

    .line 1600
    :pswitch_2
    new-array v2, v8, [Ljava/lang/CharSequence;

    const v6, 0x7f070124

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v9

    const v6, 0x7f070125

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v10

    .line 1605
    .local v2, items:[Ljava/lang/CharSequence;
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$7;

    invoke-direct {v7, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$7;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    invoke-virtual {v6, v2, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    .line 1622
    .local v5, shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 1625
    .end local v2           #items:[Ljava/lang/CharSequence;
    .end local v5           #shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShareText:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v5

    goto :goto_0

    .line 1628
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v4

    .local v4, shareNormaldialog:Landroid/app/Dialog;
    move-object v5, v4

    .line 1632
    goto :goto_0

    .line 1635
    .end local v4           #shareNormaldialog:Landroid/app/Dialog;
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-static {v6, v7, v8, v10}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v3

    .local v3, shareDRMDialog:Landroid/app/Dialog;
    move-object v5, v3

    .line 1639
    goto/16 :goto_0

    .line 1642
    .end local v3           #shareDRMDialog:Landroid/app/Dialog;
    :pswitch_6
    const/4 v6, 0x3

    new-array v2, v6, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v9

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700b6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v10

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700b7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v8

    .line 1648
    .restart local v2       #items:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    invoke-virtual {v6, v2, v11}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 1651
    .end local v2           #items:[Ljava/lang/CharSequence;
    :pswitch_7
    new-array v2, v8, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v9

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700b6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v10

    .line 1656
    .restart local v2       #items:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    invoke-virtual {v6, v2, v11}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 1660
    .end local v2           #items:[Ljava/lang/CharSequence;
    :pswitch_8
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1661
    const v6, 0x7f070015

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1665
    .local v1, f:Ljava/lang/String;
    :goto_1
    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedTrackName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1666
    .local v0, desc:Ljava/lang/String;
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x2040214

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040013

    new-instance v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$9;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$9;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040009

    new-instance v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$8;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$8;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 1663
    .end local v0           #desc:Ljava/lang/String;
    .end local v1           #f:Ljava/lang/String;
    :cond_0
    const v6, 0x7f070014

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #f:Ljava/lang/String;
    goto :goto_1

    .line 1573
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

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 7
    .parameter "playlistName"

    .prologue
    .line 1755
    iget v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    if-ltz v4, :cond_0

    .line 1756
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1757
    .local v1, id:I
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    aput v6, v4, v5

    int-to-long v5, v1

    invoke-static {p0, v4, v5, v6}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 1775
    .end local v1           #id:I
    :goto_0
    return-void

    .line 1761
    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1762
    const/4 v3, 0x2

    .line 1763
    .local v3, type:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1771
    .local v0, currentId:I
    :goto_1
    iget v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    invoke-static {p0, v3, v0, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;III)[I

    move-result-object v2

    .line 1772
    .local v2, list:[I
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1773
    .restart local v1       #id:I
    int-to-long v4, v1

    invoke-static {p0, v2, v4, v5}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 1764
    .end local v0           #currentId:I
    .end local v1           #id:I
    .end local v2           #list:[I
    .end local v3           #type:I
    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1765
    const/4 v3, 0x1

    .line 1766
    .restart local v3       #type:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #currentId:I
    goto :goto_1

    .line 1768
    .end local v0           #currentId:I
    .end local v3           #type:I
    :cond_2
    const-string v4, "[AlbumTrackBrowserActivity]"

    const-string v5, "Add to playlist, the type has some problems"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 240
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 242
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    const/16 v0, 0x9

    const v1, 0x7f070009

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 244
    const/16 v0, 0x1b

    const v1, 0x7f07000a

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 247
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 297
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 299
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->clear()V

    .line 305
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onDestroy()V

    .line 306
    return-void
.end method

.method public onGroupClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IJI)Z
    .locals 9
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"
    .parameter "absPos"

    .prologue
    .line 490
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    if-eqz v7, :cond_0

    .line 491
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAddBtnText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 492
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f07006a

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (0)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 493
    .local v6, zero:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v7}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 494
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 501
    .end local v6           #zero:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v7, v7, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    invoke-virtual {p2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 502
    .local v5, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 503
    if-eqz v5, :cond_1

    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-nez v7, :cond_3

    .line 504
    :cond_1
    const/4 v7, 0x1

    .line 561
    :goto_1
    return v7

    .line 496
    .end local v5           #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    .restart local v6       #zero:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0

    .line 506
    .end local v6           #zero:Ljava/lang/String;
    .restart local v5       #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(I)I

    move-result v1

    .line 507
    .local v1, checkState:I
    packed-switch v1, :pswitch_data_0

    .line 517
    :goto_2
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v7}, Lcom/htc/widget/HtcCheckBox;->invalidate()V

    .line 521
    invoke-virtual {p1}, Lcom/htc/music/widget/GroupListView;->getLastVisiblePosition()I

    move-result v2

    .line 522
    .local v2, end:I
    if-lt p6, v2, :cond_4

    .line 523
    const/4 v7, 0x1

    goto :goto_1

    .line 509
    .end local v2           #end:I
    :pswitch_0
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 510
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 513
    :pswitch_1
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 514
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 526
    .restart local v2       #end:I
    :cond_4
    add-int/lit8 v3, p6, 0x1

    .local v3, i:I
    :goto_3
    if-gt v3, v2, :cond_6

    .line 528
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/music/widget/GroupListView;->IsGroup(I)Z

    move-result v0

    .line 531
    .local v0, bGroup:Z
    if-nez v0, :cond_6

    .line 532
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    add-int/lit8 v8, p6, 0x1

    sub-int v8, v3, v8

    invoke-virtual {v7, p3, v8}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(II)I

    move-result v1

    .line 533
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    invoke-virtual {p1}, Lcom/htc/music/widget/GroupListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {v7, v8}, Lcom/htc/music/widget/GroupListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v8, v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    invoke-virtual {v7, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    check-cast v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 535
    .restart local v5       #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    packed-switch v1, :pswitch_data_1

    .line 526
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 537
    :pswitch_2
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 538
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_4

    .line 541
    :pswitch_3
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 542
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_4

    .line 557
    .end local v0           #bGroup:Z
    .end local v1           #checkState:I
    .end local v2           #end:I
    .end local v3           #i:I
    :cond_5
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAllSongListAndPrepare()[I

    move-result-object v4

    .line 558
    .local v4, list:[I
    sub-int v7, p6, p3

    const/4 v8, 0x0

    invoke-static {p0, v4, v7, v8}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    .line 561
    .end local v4           #list:[I
    :cond_6
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 535
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 11
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1781
    const/4 v6, -0x1

    .line 1782
    .local v6, type:I
    const/4 v3, -0x1

    .line 1783
    .local v3, currentId:I
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1784
    const/4 v6, 0x2

    .line 1785
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1793
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1876
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onHtcContextItemSelected(I)Z

    move-result v7

    :cond_0
    :goto_1
    return v7

    .line 1786
    :cond_1
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 1787
    const/4 v6, 0x1

    .line 1788
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 1790
    :cond_2
    const-string v9, "[AlbumTrackBrowserActivity]"

    const-string v10, "Add to playlist, the type has some problems"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1795
    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v9

    if-gtz v9, :cond_3

    .line 1796
    const/16 v8, 0x25a

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showDialog(I)V

    goto :goto_1

    .line 1798
    :cond_3
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1799
    .local v5, intent:Landroid/content/Intent;
    const-class v9, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v5, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1800
    const-string v9, "pickermode"

    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1802
    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    if-ltz v9, :cond_4

    .line 1804
    new-array v0, v7, [I

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    aput v9, v0, v8

    .line 1805
    .local v0, addToPlaylistData:[I
    const-string v8, "AddToPlaylistData"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1806
    invoke-virtual {p0, v5, v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1810
    .end local v0           #addToPlaylistData:[I
    :cond_4
    iget v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    invoke-static {p0, v8, v6, v3, v9}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;IIII)[I

    move-result-object v0

    .line 1811
    .restart local v0       #addToPlaylistData:[I
    const-string v8, "AddToPlaylistData"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1812
    invoke-virtual {p0, v5, v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1818
    .end local v0           #addToPlaylistData:[I
    .end local v5           #intent:Landroid/content/Intent;
    :sswitch_1
    :try_start_0
    iget v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    if-ltz v8, :cond_5

    .line 1819
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_0

    .line 1820
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v9, 0x4

    iget v10, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    invoke-interface {v8, v9, v10}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1825
    :catch_0
    move-exception v4

    .line 1826
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1822
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_5
    :try_start_1
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_0

    .line 1823
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I

    iget v10, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    invoke-interface {v8, v9, v6, v3, v10}, Lcom/htc/music/IMediaPlaybackService;->addToQueueForMultiConditionsByDbTable(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1831
    :sswitch_2
    iget v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    if-ltz v8, :cond_7

    .line 1832
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    invoke-static {p0, v8, v9}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1834
    .local v1, canShare:I
    if-eq v1, v7, :cond_6

    .line 1835
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedTrackName:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumName:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedArtistName:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1838
    :cond_6
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showDialog(I)V

    goto/16 :goto_1

    .line 1841
    .end local v1           #canShare:I
    :cond_7
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumName:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedArtistName:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1846
    :sswitch_3
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    if-nez v9, :cond_8

    .line 1847
    new-instance v9, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    .line 1850
    :cond_8
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_a

    :cond_9
    move v7, v8

    .line 1851
    goto/16 :goto_1

    .line 1853
    :cond_a
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 1855
    .local v2, currentAudioType:I
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    invoke-virtual {v8, v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->setAudioId(I)V

    .line 1856
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 1857
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    invoke-virtual {v8, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->setAudioType(I)V

    .line 1858
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    invoke-virtual {v8, v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->useAsRingtone(Z)V

    goto/16 :goto_1

    .line 1863
    .end local v2           #currentAudioType:I
    :sswitch_4
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showDialog(I)V

    goto/16 :goto_1

    .line 1867
    :sswitch_5
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1869
    .restart local v5       #intent:Landroid/content/Intent;
    const-class v8, Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v5, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1870
    const-string v8, "track"

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1871
    const/4 v8, -0x2

    invoke-virtual {p0, v5, v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1793
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0xa -> :sswitch_4
        0xd -> :sswitch_1
        0x10 -> :sswitch_5
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 258
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAllSongListAndPrepare()[I

    move-result-object v1

    .line 260
    .local v1, list:[I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 270
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 262
    :sswitch_0
    invoke-static {p0, v1, v2, v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 266
    :sswitch_1
    const/4 v0, 0x0

    new-array v6, v0, [I

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    goto :goto_0

    .line 260
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 382
    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onPause()V

    .line 383
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1713
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/GroupListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1714
    const/4 v0, 0x0

    .line 1715
    .local v0, adapter:Lcom/htc/music/widget/SharedAdapter;
    const/4 v1, 0x0

    .line 1717
    .local v1, listener:Landroid/widget/AdapterView$OnItemClickListener;
    packed-switch p1, :pswitch_data_0

    .line 1750
    .end local p2
    :goto_0
    return-void

    .line 1720
    .restart local p2
    :pswitch_0
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuTitle:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1717
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onResume()V

    .line 359
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle()V

    .line 360
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged()V

    .line 363
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 278
    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v0, "genre"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "artist"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "albumid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v0, "nochildmode"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 286
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 287
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 312
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNeedBindSerive:Z

    .line 313
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    const-string v0, "[AlbumTrackBrowserActivity]"

    const-string v1, "onStart, Fail to bind service."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNeedBindSerive:Z

    .line 319
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onStart()V

    .line 320
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mIsSeriveBinded:Z

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 326
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mIsSeriveBinded:Z

    .line 328
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 329
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNeedBindSerive:Z

    .line 331
    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onStop()V

    .line 332
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 1450
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1451
    return-void
.end method
