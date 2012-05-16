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

    .line 184
    invoke-direct {p0}, Lcom/htc/music/widget/GroupListActivity;-><init>()V

    .line 97
    const/16 v0, 0x1b

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->PLAY_ALL:I

    .line 99
    iput v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_MENU_GROUP:I

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_MENU_CHILD:I

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SHARETYPE:I

    .line 102
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SHARETEXT:I

    .line 103
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SHARE_NORMAL_FILE:I

    .line 104
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SHARE_DRM_FILE:I

    .line 105
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SET_AS_RINGTONE:I

    .line 106
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

    .line 107
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->DIALOG_FOR_DELETE:I

    .line 141
    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    .line 143
    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    .line 145
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumName:Ljava/lang/String;

    .line 147
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedArtistName:Ljava/lang/String;

    .line 149
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedTrackName:Ljava/lang/String;

    .line 151
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    .line 163
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShareText:Ljava/lang/String;

    .line 165
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    .line 167
    new-instance v0, Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    .line 169
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 171
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNeedBindSerive:Z

    .line 172
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mIsSeriveBinded:Z

    .line 331
    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->osc:Landroid/content/ServiceConnection;

    .line 362
    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 1376
    new-instance v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mButtonClicked:Landroid/view/View$OnClickListener;

    .line 185
    return-void
.end method

.method private IsPickerMode()Z
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1443
    :cond_0
    const/4 v0, 0x0

    .line 1446
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
    .line 94
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNeedBindSerive:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedTrackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedTrackName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mIsSeriveBinded:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/util/MemoryCacheMBitmapByTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Lcom/htc/music/IMediaPlaybackService;)Lcom/htc/music/IMediaPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/widget/GroupListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuIds:[I

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    return p1
.end method

.method static synthetic access$502(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
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
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showTrackOptions(Ljava/lang/String;III)V

    return-void
.end method

.method private getAddBtnText()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 764
    const/4 v0, 0x0

    .line 765
    .local v0, count:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    if-eqz v4, :cond_0

    .line 766
    const/4 v1, 0x0

    .line 767
    .local v1, list:[I
    iget-boolean v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    if-eqz v4, :cond_1

    .line 768
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v4}, Lcom/htc/music/widget/GroupListView;->getGroupSeclectList()[I

    move-result-object v1

    .line 771
    :goto_0
    if-nez v1, :cond_2

    move v0, v3

    .line 774
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

    .line 775
    .local v2, text:Ljava/lang/String;
    return-object v2

    .line 770
    .end local v2           #text:Ljava/lang/String;
    .restart local v1       #list:[I
    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v4}, Lcom/htc/music/widget/GroupListView;->getChildSeclectList()[I

    move-result-object v1

    goto :goto_0

    .line 771
    :cond_2
    array-length v0, v1

    goto :goto_1
.end method

.method private getAlbumType()I
    .locals 1

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1451
    const/4 v0, 0x2

    .line 1455
    :goto_0
    return v0

    .line 1452
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1453
    const/4 v0, 0x1

    goto :goto_0

    .line 1455
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getAllSongListAndPrepare()[I
    .locals 3

    .prologue
    .line 1470
    const/4 v0, 0x0

    .line 1471
    .local v0, list:[I
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1472
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForGenreAndPrepare(Landroid/content/Context;I)[I

    move-result-object v0

    .line 1479
    :goto_0
    return-object v0

    .line 1473
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1474
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForArtistAndPrepare(Landroid/content/Context;I)[I

    move-result-object v0

    goto :goto_0

    .line 1476
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
    .line 632
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
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

    .line 634
    :cond_0
    const-string v1, "album != \'\'"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :goto_0
    const/4 v5, 0x0

    .line 640
    .local v5, keywords:[Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 641
    const-string v1, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 642
    .local v18, searchWords:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v1, v0

    new-array v5, v1, [Ljava/lang/String;

    .line 643
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v12

    .line 644
    .local v12, col:Ljava/text/Collator;
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 645
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move-object/from16 v0, v18

    array-length v1, v0

    move/from16 v0, v16

    if-ge v0, v1, :cond_2

    .line 646
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

    .line 645
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 636
    .end local v5           #keywords:[Ljava/lang/String;
    .end local v12           #col:Ljava/text/Collator;
    .end local v16           #i:I
    .end local v18           #searchWords:[Ljava/lang/String;
    :cond_1
    const-string v1, "title != \'\'"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 648
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

    .line 649
    const-string v1, " AND "

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    const-string v1, "artist_key||"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    const-string v1, "album_key ||"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    const-string v1, "title_key LIKE ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 656
    .end local v12           #col:Ljava/text/Collator;
    .end local v16           #i:I
    .end local v18           #searchWords:[Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 658
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

    .line 664
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

    .line 672
    .local v8, cursorCols:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 673
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

    .line 756
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

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v17

    .line 760
    :cond_5
    return-object v17

    .line 678
    .end local v17           #ret:Landroid/database/Cursor;
    .restart local v5       #keywords:[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 679
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 680
    .local v14, genreId:J
    const-wide/16 v1, -0x1

    cmp-long v1, v14, v1

    if-nez v1, :cond_7

    .line 688
    const-string v1, " AND _id  in (select  distinct album_id from audio where _id NOT IN (select audio_id from audio_genres_map ) )"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    :goto_4
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "album COLLATE NOCASE ASC"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 710
    .restart local v17       #ret:Landroid/database/Cursor;
    goto :goto_3

    .line 698
    .end local v17           #ret:Landroid/database/Cursor;
    :cond_7
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

    .line 710
    .end local v14           #genreId:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 711
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    .line 712
    .local v13, composer:Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v19

    .line 713
    .local v19, unknown:Z
    if-eqz v19, :cond_9

    .line 714
    const-string v1, " AND _id IN (SELECT distinct album_id FROM audio_meta where (audio_meta.composer ISNULL OR audio_meta.composer = \'\' OR audio_meta.composer = \'<unknown>\'))"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    :goto_5
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "album COLLATE NOCASE ASC"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 729
    .restart local v17       #ret:Landroid/database/Cursor;
    goto/16 :goto_3

    .line 719
    .end local v17           #ret:Landroid/database/Cursor;
    :cond_9
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

    .line 734
    .end local v13           #composer:Ljava/lang/String;
    .end local v19           #unknown:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 735
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

    .line 738
    :cond_b
    const-string v1, " AND is_musicis_music>=1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
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
    .line 1460
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1465
    :goto_0
    return v0

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1463
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 1465
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1431
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    .line 1439
    :goto_0
    return-void

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1434
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1435
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1437
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
    .line 1895
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    iget v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    invoke-static {p0, v2, v3}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1897
    .local v0, canShare:I
    packed-switch v0, :pswitch_data_0

    .line 1910
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1911
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1913
    .end local v1           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 1900
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

    .line 1901
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showNewDialog(I)V

    goto :goto_0

    .line 1905
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

    .line 1906
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showNewDialog(I)V

    goto :goto_0

    .line 1897
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
    .line 1885
    invoke-static {p0, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShareText:Ljava/lang/String;

    .line 1886
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShareText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1887
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShareText:Ljava/lang/String;

    .line 1890
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showNewDialog(I)V

    .line 1891
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

    .line 1483
    iput p2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCurrentGroupPos:I

    .line 1484
    iput p3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCurrentChildPos:I

    .line 1485
    iput p4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCurrentListItemIndex:I

    .line 1487
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuTitle:Ljava/lang/String;

    .line 1489
    if-ltz p3, :cond_0

    .line 1491
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

    .line 1499
    new-array v1, v7, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuIds:[I

    .line 1508
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumList:[I

    .line 1509
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSongList:[I

    .line 1511
    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showDialog(I)V

    .line 1540
    :goto_0
    return-void

    .line 1514
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

    .line 1519
    new-array v1, v5, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuIds:[I

    .line 1525
    const/4 v0, 0x0

    .line 1526
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1527
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getCursorForGenre(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v0

    .line 1532
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 1533
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumList:[I

    .line 1534
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSongList:[I

    .line 1535
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1536
    const/4 v0, 0x0

    .line 1538
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showDialog(I)V

    goto :goto_0

    .line 1528
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1529
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getCursorForGenre(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 1499
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data

    .line 1519
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

    .line 402
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 404
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->finish()V

    .line 483
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 410
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setContentView(I)V

    .line 415
    :goto_1
    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 416
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v13}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 424
    :cond_2
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcFooter;

    .line 425
    .local v10, footerView:Lcom/htc/widget/HtcFooter;
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 427
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    .line 428
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAddBtnText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x20800c1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 432
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

    .line 433
    .local v12, zero:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 434
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 439
    :goto_2
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    .line 440
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x2040152

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 441
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x20800a3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 442
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mCancel:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    .end local v12           #zero:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 450
    .local v11, numresults:I
    if-nez v11, :cond_6

    .line 451
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle()V

    .line 452
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showEmptyView(I)V

    goto/16 :goto_0

    .line 412
    .end local v10           #footerView:Lcom/htc/widget/HtcFooter;
    .end local v11           #numresults:I
    :cond_4
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setContentView(I)V

    goto/16 :goto_1

    .line 436
    .restart local v10       #footerView:Lcom/htc/widget/HtcFooter;
    .restart local v12       #zero:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_2

    .line 456
    .end local v12           #zero:Ljava/lang/String;
    .restart local v11       #numresults:I
    :cond_6
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 457
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->hideEmptyErrorView()V

    .line 460
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle()V

    .line 468
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

    .line 472
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 473
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    .line 474
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    if-nez v0, :cond_7

    .line 475
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0}, Lcom/htc/music/widget/GroupListView;->expandAllGroups()V

    .line 476
    :cond_7
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, p0}, Lcom/htc/music/widget/GroupListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 477
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, p0}, Lcom/htc/music/widget/GroupListView;->setOnGroupClickListener(Lcom/htc/music/widget/GroupListView$OnGroupClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, p0}, Lcom/htc/music/widget/GroupListView;->setOnChildClickListener(Lcom/htc/music/widget/GroupListView$OnChildClickListener;)V

    .line 479
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, v13}, Lcom/htc/music/widget/GroupListView;->setFastScrollEnabled(Z)V

    .line 480
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, v13}, Lcom/htc/music/widget/GroupListView;->setTextFilterEnabled(Z)V

    .line 481
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGlist:Lcom/htc/music/widget/GroupListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/GroupListView;->setChoiceMode(I)V

    .line 482
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

    .line 1852
    packed-switch p1, :pswitch_data_0

    .line 1881
    :cond_0
    :goto_0
    return-void

    .line 1854
    :pswitch_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 1855
    const-string v4, "playlist"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1857
    .local v2, playlist:I
    const/4 v3, -0x1

    .line 1858
    .local v3, type:I
    const/4 v0, -0x1

    .line 1859
    .local v0, currentId:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1860
    const/4 v3, 0x2

    .line 1861
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1869
    :goto_1
    iget v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    if-ltz v4, :cond_3

    .line 1871
    const/4 v4, 0x1

    new-array v1, v4, [I

    iget v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    aput v4, v1, v6

    .line 1872
    .local v1, list:[I
    int-to-long v4, v2

    invoke-static {p0, v1, v4, v5}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 1862
    .end local v1           #list:[I
    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1863
    const/4 v3, 0x1

    .line 1864
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 1866
    :cond_2
    const-string v4, "[AlbumTrackBrowserActivity]"

    const-string v5, "Add to playlist, the type has some problems"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1875
    :cond_3
    iget v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    invoke-static {p0, v3, v0, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;III)[I

    move-result-object v1

    .line 1876
    .restart local v1       #list:[I
    int-to-long v4, v2

    invoke-static {p0, v1, v4, v5}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 1852
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
    .line 564
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    if-eqz v7, :cond_0

    .line 565
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAddBtnText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 567
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

    .line 568
    .local v6, zero:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v7}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 569
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 575
    .end local v6           #zero:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 577
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v7, v7, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    invoke-virtual {p2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 578
    .local v5, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(II)I

    move-result v1

    .line 579
    .local v1, checkState:I
    packed-switch v1, :pswitch_data_0

    .line 589
    :goto_1
    invoke-virtual {p1}, Lcom/htc/music/widget/GroupListView;->getFirstVisiblePosition()I

    move-result v4

    .line 590
    .local v4, start:I
    move/from16 v2, p7

    .local v2, i:I
    :goto_2
    if-lt v2, v4, :cond_1

    .line 592
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/htc/music/widget/GroupListView;->IsGroup(I)Z

    move-result v0

    .line 595
    .local v0, bGroup:Z
    if-eqz v0, :cond_3

    .line 596
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(I)I

    move-result v1

    .line 597
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

    .line 599
    .restart local v5       #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    packed-switch v1, :pswitch_data_1

    .line 613
    :goto_3
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v7}, Lcom/htc/widget/HtcCheckBox;->invalidate()V

    .line 628
    .end local v0           #bGroup:Z
    .end local v1           #checkState:I
    .end local v2           #i:I
    .end local v4           #start:I
    .end local v5           #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :cond_1
    :goto_4
    const/4 v7, 0x1

    return v7

    .line 571
    .restart local v6       #zero:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0

    .line 581
    .end local v6           #zero:Ljava/lang/String;
    .restart local v1       #checkState:I
    .restart local v5       #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :pswitch_0
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 584
    :pswitch_1
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 601
    .restart local v0       #bGroup:Z
    .restart local v2       #i:I
    .restart local v4       #start:I
    :pswitch_2
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 602
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_3

    .line 605
    :pswitch_3
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 606
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_3

    .line 609
    :pswitch_4
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 610
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_3

    .line 590
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 625
    .end local v0           #bGroup:Z
    .end local v1           #checkState:I
    .end local v2           #i:I
    .end local v4           #start:I
    .end local v5           #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAllSongListAndPrepare()[I

    move-result-object v3

    .line 626
    .local v3, list:[I
    sub-int v7, p7, p3

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    invoke-static {p0, v3, v7, v8}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_4

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 599
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
    .line 386
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 388
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 390
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 391
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 392
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v2, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenWidth:I

    .line 393
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, v2, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenHeight:I

    .line 395
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

    .line 190
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 193
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setVolumeControlStream(I)V

    .line 194
    if-eqz p1, :cond_1

    .line 195
    const-string v2, "genreid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    .line 196
    const-string v2, "genre"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 197
    const-string v2, "composer"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    .line 198
    const-string v2, "playlisturi"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    .line 199
    const-string v2, "artistid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 200
    const-string v2, "artist"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    .line 201
    const-string v2, "albumid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 202
    const-string v2, "nochildmode"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    .line 215
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->enableSearch()V

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->init()V

    .line 233
    return-void

    .line 204
    .end local v0           #f:Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 205
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "genreid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    .line 206
    const-string v2, "genre"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 207
    const-string v2, "composer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    .line 208
    const-string v2, "playlisturi"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    .line 209
    const-string v2, "artistid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 210
    const-string v2, "artist"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    .line 211
    const-string v2, "albumid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 212
    const-string v2, "nochildmode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    const v7, 0x7f0700b4

    const/16 v11, 0x13

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1544
    packed-switch p1, :pswitch_data_0

    .line 1679
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    :goto_0
    return-object v5

    .line 1546
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

    .line 1559
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

    .line 1571
    :pswitch_2
    new-array v2, v8, [Ljava/lang/CharSequence;

    const v6, 0x7f070123

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v9

    const v6, 0x7f070124

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v10

    .line 1576
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

    .line 1593
    .local v5, shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 1596
    .end local v2           #items:[Ljava/lang/CharSequence;
    .end local v5           #shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mShareText:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v5

    goto :goto_0

    .line 1599
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v4

    .local v4, shareNormaldialog:Landroid/app/Dialog;
    move-object v5, v4

    .line 1603
    goto :goto_0

    .line 1606
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

    .line 1610
    goto/16 :goto_0

    .line 1613
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

    const v7, 0x7f0700b5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v10

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700b6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v8

    .line 1619
    .restart local v2       #items:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    invoke-virtual {v6, v2, v11}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 1622
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

    const v7, 0x7f0700b5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v10

    .line 1627
    .restart local v2       #items:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    invoke-virtual {v6, v2, v11}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 1631
    .end local v2           #items:[Ljava/lang/CharSequence;
    :pswitch_8
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1632
    const v6, 0x7f070015

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1636
    .local v1, f:Ljava/lang/String;
    :goto_1
    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedTrackName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1637
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

    .line 1634
    .end local v0           #desc:Ljava/lang/String;
    .end local v1           #f:Ljava/lang/String;
    :cond_0
    const v6, 0x7f070014

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #f:Ljava/lang/String;
    goto :goto_1

    .line 1544
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
    .line 1726
    iget v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    if-ltz v4, :cond_0

    .line 1727
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1728
    .local v1, id:I
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    aput v6, v4, v5

    int-to-long v5, v1

    invoke-static {p0, v4, v5, v6}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 1746
    .end local v1           #id:I
    :goto_0
    return-void

    .line 1732
    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1733
    const/4 v3, 0x2

    .line 1734
    .local v3, type:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1742
    .local v0, currentId:I
    :goto_1
    iget v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    invoke-static {p0, v3, v0, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;III)[I

    move-result-object v2

    .line 1743
    .local v2, list:[I
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1744
    .restart local v1       #id:I
    int-to-long v4, v1

    invoke-static {p0, v2, v4, v5}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 1735
    .end local v0           #currentId:I
    .end local v1           #id:I
    .end local v2           #list:[I
    .end local v3           #type:I
    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1736
    const/4 v3, 0x1

    .line 1737
    .restart local v3       #type:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #currentId:I
    goto :goto_1

    .line 1739
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

    .line 237
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 239
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/16 v0, 0x9

    const v1, 0x7f070009

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 241
    const/16 v0, 0x1b

    const v1, 0x7f07000a

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 244
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 296
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 298
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->clear()V

    .line 302
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onDestroy()V

    .line 303
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
    .line 487
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    if-eqz v7, :cond_0

    .line 488
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAddBtnText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 489
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

    .line 490
    .local v6, zero:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v7}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 491
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 498
    .end local v6           #zero:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v7, v7, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    invoke-virtual {p2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 499
    .local v5, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 500
    if-eqz v5, :cond_1

    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-nez v7, :cond_3

    .line 501
    :cond_1
    const/4 v7, 0x1

    .line 558
    :goto_1
    return v7

    .line 493
    .end local v5           #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    .restart local v6       #zero:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSave:Lcom/htc/widget/HtcFooterButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0

    .line 503
    .end local v6           #zero:Ljava/lang/String;
    .restart local v5       #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(I)I

    move-result v1

    .line 504
    .local v1, checkState:I
    packed-switch v1, :pswitch_data_0

    .line 514
    :goto_2
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v7}, Lcom/htc/widget/HtcCheckBox;->invalidate()V

    .line 518
    invoke-virtual {p1}, Lcom/htc/music/widget/GroupListView;->getLastVisiblePosition()I

    move-result v2

    .line 519
    .local v2, end:I
    if-lt p6, v2, :cond_4

    .line 520
    const/4 v7, 0x1

    goto :goto_1

    .line 506
    .end local v2           #end:I
    :pswitch_0
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 507
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 510
    :pswitch_1
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 511
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 523
    .restart local v2       #end:I
    :cond_4
    add-int/lit8 v3, p6, 0x1

    .local v3, i:I
    :goto_3
    if-gt v3, v2, :cond_6

    .line 525
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/music/widget/GroupListView;->IsGroup(I)Z

    move-result v0

    .line 528
    .local v0, bGroup:Z
    if-nez v0, :cond_6

    .line 529
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    add-int/lit8 v8, p6, 0x1

    sub-int v8, v3, v8

    invoke-virtual {v7, p3, v8}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(II)I

    move-result v1

    .line 530
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

    .line 532
    .restart local v5       #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    packed-switch v1, :pswitch_data_1

    .line 523
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 534
    :pswitch_2
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 535
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_4

    .line 538
    :pswitch_3
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 539
    iget-object v7, v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_4

    .line 554
    .end local v0           #bGroup:Z
    .end local v1           #checkState:I
    .end local v2           #end:I
    .end local v3           #i:I
    :cond_5
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAllSongListAndPrepare()[I

    move-result-object v4

    .line 555
    .local v4, list:[I
    sub-int v7, p6, p3

    const/4 v8, 0x0

    invoke-static {p0, v4, v7, v8}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    .line 558
    .end local v4           #list:[I
    :cond_6
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 532
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

    .line 1752
    const/4 v6, -0x1

    .line 1753
    .local v6, type:I
    const/4 v3, -0x1

    .line 1754
    .local v3, currentId:I
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1755
    const/4 v6, 0x2

    .line 1756
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1764
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1847
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onHtcContextItemSelected(I)Z

    move-result v7

    :cond_0
    :goto_1
    return v7

    .line 1757
    :cond_1
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 1758
    const/4 v6, 0x1

    .line 1759
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 1761
    :cond_2
    const-string v9, "[AlbumTrackBrowserActivity]"

    const-string v10, "Add to playlist, the type has some problems"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1766
    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v9

    if-gtz v9, :cond_3

    .line 1767
    const/16 v8, 0x25a

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showDialog(I)V

    goto :goto_1

    .line 1769
    :cond_3
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1770
    .local v5, intent:Landroid/content/Intent;
    const-class v9, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v5, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1771
    const-string v9, "pickermode"

    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1773
    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    if-ltz v9, :cond_4

    .line 1775
    new-array v0, v7, [I

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    aput v9, v0, v8

    .line 1776
    .local v0, addToPlaylistData:[I
    const-string v8, "AddToPlaylistData"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1777
    invoke-virtual {p0, v5, v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1781
    .end local v0           #addToPlaylistData:[I
    :cond_4
    iget v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    invoke-static {p0, v6, v3, v8}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;III)[I

    move-result-object v0

    .line 1782
    .restart local v0       #addToPlaylistData:[I
    const-string v8, "AddToPlaylistData"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1783
    invoke-virtual {p0, v5, v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1789
    .end local v0           #addToPlaylistData:[I
    .end local v5           #intent:Landroid/content/Intent;
    :sswitch_1
    :try_start_0
    iget v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    if-ltz v8, :cond_5

    .line 1790
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_0

    .line 1791
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v9, 0x4

    iget v10, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    invoke-interface {v8, v9, v10}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1796
    :catch_0
    move-exception v4

    .line 1797
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1793
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_5
    :try_start_1
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_0

    .line 1794
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I

    invoke-interface {v8, v6, v3, v9}, Lcom/htc/music/IMediaPlaybackService;->addToQueueForMultiConditions(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1802
    :sswitch_2
    iget v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    if-ltz v8, :cond_7

    .line 1803
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    invoke-static {p0, v8, v9}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1805
    .local v1, canShare:I
    if-eq v1, v7, :cond_6

    .line 1806
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedTrackName:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumName:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedArtistName:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1809
    :cond_6
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showDialog(I)V

    goto/16 :goto_1

    .line 1812
    .end local v1           #canShare:I
    :cond_7
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumName:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedArtistName:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1817
    :sswitch_3
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    if-nez v9, :cond_8

    .line 1818
    new-instance v9, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    .line 1821
    :cond_8
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_a

    :cond_9
    move v7, v8

    .line 1822
    goto/16 :goto_1

    .line 1824
    :cond_a
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 1826
    .local v2, currentAudioType:I
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    invoke-virtual {v8, v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->setAudioId(I)V

    .line 1827
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 1828
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    invoke-virtual {v8, v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->setAudioType(I)V

    .line 1829
    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mRingtoneHelper:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;

    invoke-virtual {v8, v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$AlbumTrackRingtoneHelper;->useAsRingtone(Z)V

    goto/16 :goto_1

    .line 1834
    .end local v2           #currentAudioType:I
    :sswitch_4
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showDialog(I)V

    goto/16 :goto_1

    .line 1838
    :sswitch_5
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1840
    .restart local v5       #intent:Landroid/content/Intent;
    const-class v8, Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v5, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1841
    const-string v8, "track"

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1842
    const/4 v8, -0x2

    invoke-virtual {p0, v5, v8}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1764
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

    .line 255
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getAllSongListAndPrepare()[I

    move-result-object v1

    .line 257
    .local v1, list:[I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 267
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 259
    :sswitch_0
    invoke-static {p0, v1, v2, v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 263
    :sswitch_1
    const/4 v0, 0x0

    new-array v6, v0, [I

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    goto :goto_0

    .line 257
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 379
    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onPause()V

    .line 380
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1684
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/GroupListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1685
    const/4 v0, 0x0

    .line 1686
    .local v0, adapter:Lcom/htc/music/widget/SharedAdapter;
    const/4 v1, 0x0

    .line 1688
    .local v1, listener:Landroid/widget/AdapterView$OnItemClickListener;
    packed-switch p1, :pswitch_data_0

    .line 1721
    .end local p2
    :goto_0
    return-void

    .line 1691
    .restart local p2
    :pswitch_0
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mContextMenuTitle:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1688
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
    .line 249
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 354
    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onResume()V

    .line 356
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle()V

    .line 357
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged()V

    .line 360
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 275
    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "genre"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v0, "artist"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "albumid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "nochildmode"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    invoke-super {p0, p1}, Lcom/htc/music/widget/GroupListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 284
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 309
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNeedBindSerive:Z

    .line 310
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    const-string v0, "[AlbumTrackBrowserActivity]"

    const-string v1, "onStart, Fail to bind service."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNeedBindSerive:Z

    .line 316
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onStart()V

    .line 317
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 321
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mIsSeriveBinded:Z

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mIsSeriveBinded:Z

    .line 325
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 326
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNeedBindSerive:Z

    .line 328
    invoke-super {p0}, Lcom/htc/music/widget/GroupListActivity;->onStop()V

    .line 329
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 1422
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1423
    return-void
.end method
