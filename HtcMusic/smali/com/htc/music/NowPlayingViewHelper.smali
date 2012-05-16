.class public Lcom/htc/music/NowPlayingViewHelper;
.super Ljava/lang/Object;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;,
        Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;,
        Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;,
        Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;,
        Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
    }
.end annotation


# static fields
.field protected static final ADD_NOW_PLAYING_TO_LIST:I = 0x65

.field protected static final CHANGE_NOW_PLAYING_ORDER:I = 0x66

.field protected static final CLEAR_QUEUE:I = 0x67

.field protected static final CREATE:I = 0x1

.field protected static final DESTROY:I = 0x0

.field public static final DIALOG_ALBUM_CREATE_PLAYLIST:I = 0xc

.field public static final DIALOG_CLEAR_QUEUE:I = 0xa

.field public static final DIALOG_CREATE_PLAYLIST:I = 0xb

.field public static final DIALOG_DRM_CONFIRM:I = 0x3

.field public static final DIALOG_DRM_ERROR:I = 0x2

.field public static final DIALOG_SET_AS_RINGTONE:I = 0x8

.field public static final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I = 0x9

.field public static final DIALOG_SHARETEXT:I = 0x5

.field public static final DIALOG_SHARETYPE:I = 0x4

.field public static final DIALOG_SHARE_DRM_FILE:I = 0x7

.field public static final DIALOG_SHARE_NORMAL_FILE:I = 0x6

.field private static final GET_ALBUM_ART:I = 0x1

.field protected static final PAUSE:I = 0x4

.field private static final QUEUE_UPDATE_COUNT:I = 0x12c

.field protected static final RESUME:I = 0x3

.field protected static final SETTING:I = 0x68

.field private static final SHOW_SET_CONTACT_RINGTONE_TOAST:I = 0x66

.field protected static final START:I = 0x2

.field protected static final STOP:I = 0x5

.field private static final TAG:Ljava/lang/String; = "[NowPlayingViewHelper]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field protected mActivityStatus:I

.field private mAdapterSent:Z

.field private mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field protected mContext:Landroid/app/Activity;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistName:Ljava/lang/String;

.field private mCurrentDetails:Landroid/content/ContentValues;

.field private mCurrentPosition:I

.field private mCurrentTrackName:Ljava/lang/String;

.field private mCursorCols:[Ljava/lang/String;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDeletedOneRow:Z

.field private mDialog:Landroid/app/Dialog;

.field protected mDlnaMode:I

.field protected mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mFilter:Ljava/lang/String;

.field private mFilterPosToOldPosTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHtcContextMenuIds:[I

.field private mHtcContextMenuItems:[Ljava/lang/CharSequence;

.field private mHtcContextMenuTitle:Ljava/lang/String;

.field private mIsEnhancerExist:Z

.field private mIsNeedToUpdateProperty:Z

.field protected mIsPluginModeNowPlaying:Z

.field private mIsQueueChanged:Z

.field private mIsScrolling:Z

.field protected mListView:Lcom/htc/widget/HtcListView;

.field private mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

.field private mMsg:Ljava/lang/String;

.field private mNeedBindService:Z

.field private mNoMusicViewStub:Landroid/view/ViewStub;

.field private mNoSDCardErrorViewStub:Landroid/view/ViewStub;

.field private mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

.field private mNonUILooper:Landroid/os/Looper;

.field private mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mPlaybackServiceConnected:Z

.field private mPlaylistContent:[I

.field private mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

.field private mPluginListener:Landroid/content/BroadcastReceiver;

.field private mReScanHandler:Landroid/os/Handler;

.field private mRefreshListHandler:Landroid/os/Handler;

.field private mRefreshListRunnable:Ljava/lang/Runnable;

.field private mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mShareText:Ljava/lang/String;

.field private mShuffleMode:I

.field private mSortOrder:Ljava/lang/String;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mStopped:Z

.field private mTrackCursor:Landroid/database/Cursor;

.field private mUnknownAlbumName:Ljava/lang/String;

.field private mUnknownArtistName:Ljava/lang/String;

.field protected mViewGroup:Landroid/view/ViewGroup;

.field protected mcurDMR:Ljava/lang/String;

.field private preSearchTime:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .parameter "context"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mStopped:Z

    .line 90
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    .line 92
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    .line 93
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 95
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    .line 98
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    .line 100
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    .line 102
    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    .line 103
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mcurDMR:Ljava/lang/String;

    .line 104
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 106
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    .line 108
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    .line 112
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mAdapterSent:Z

    .line 114
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    .line 117
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaylistContent:[I

    .line 120
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    .line 126
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 128
    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    .line 130
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z

    .line 132
    iput v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I

    .line 133
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsQueueChanged:Z

    .line 134
    iput v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    .line 136
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    .line 138
    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 140
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsEnhancerExist:Z

    .line 142
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    .line 143
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    .line 144
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    .line 146
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    .line 148
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownArtistName:Ljava/lang/String;

    .line 149
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    .line 151
    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mScreenWidth:I

    .line 152
    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mScreenHeight:I

    .line 240
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNeedBindService:Z

    .line 798
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaybackServiceConnected:Z

    .line 919
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$2;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$2;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 1169
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    .line 1170
    iput-wide v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    .line 1172
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuTitle:Ljava/lang/String;

    .line 1173
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    .line 1174
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuIds:[I

    .line 1176
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    .line 1645
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    .line 1777
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    .line 1825
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$14;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$14;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHandler:Landroid/os/Handler;

    .line 2284
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 2285
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    .line 2407
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$15;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$15;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    .line 2421
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$16;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$16;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 2463
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$17;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$17;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 2486
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$18;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$18;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginListener:Landroid/content/BroadcastReceiver;

    .line 2634
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUILooper:Landroid/os/Looper;

    .line 2635
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    .line 2680
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    .line 2682
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilter:Ljava/lang/String;

    .line 2683
    iput-wide v5, p0, Lcom/htc/music/NowPlayingViewHelper;->preSearchTime:J

    .line 2685
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$19;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$19;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDelaySearchHandler:Landroid/os/Handler;

    .line 2738
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;

    .line 2740
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$20;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$20;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListRunnable:Ljava/lang/Runnable;

    .line 3949
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$21;

    invoke-direct {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$21;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 158
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    .line 160
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->showSetContactRingtoneToast()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/NowPlayingViewHelper;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/music/NowPlayingViewHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/music/NowPlayingViewHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/music/NowPlayingViewHelper;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/NowPlayingViewHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/NowPlayingViewHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsQueueChanged:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/music/NowPlayingViewHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsQueueChanged:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/music/NowPlayingViewHelper;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/htc/music/NowPlayingViewHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->notifyProperty(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/music/NowPlayingViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/music/NowPlayingViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$2902(Lcom/htc/music/NowPlayingViewHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$3000(Lcom/htc/music/NowPlayingViewHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/htc/music/NowPlayingViewHelper;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$3100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/NowPlayingViewHelper;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/htc/music/NowPlayingViewHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/music/NowPlayingViewHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/NowPlayingViewHelper;->onListItemClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/music/NowPlayingViewHelper;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/NowPlayingViewHelper;->showTrackOptions_plugin(IJ)V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/music/NowPlayingViewHelper;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/NowPlayingViewHelper;->showTrackOptions(IJ)V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/music/NowPlayingViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$4500(Lcom/htc/music/NowPlayingViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$4600(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/NowPlayingViewHelper;->onListItemClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/NowPlayingViewHelper;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuIds:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/music/NowPlayingViewHelper;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/music/NowPlayingViewHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    return-object v0
.end method

.method private checkDrmFile(Landroid/net/Uri;IJ)V
    .locals 11
    .parameter "uri"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1975
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1977
    .local v4, resolver:Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v7, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 1978
    .local v5, status:I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    .line 1979
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    .line 2011
    :goto_0
    return-void

    .line 1980
    :cond_0
    if-nez v5, :cond_3

    .line 1981
    const/4 v7, 0x1

    invoke-static {v4, p1, v7}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 1982
    .local v0, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_1

    .line 1983
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [I

    invoke-static {v7, v8, p2, v9, v10}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    .line 1985
    :cond_1
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v7, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    .line 1986
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1988
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_0

    .line 1990
    :cond_2
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [I

    invoke-static {v7, v8, p2, v9, v10}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    .line 1994
    .end local v0           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1995
    .local v3, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v8, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1996
    const-string v7, "drmtargettomain"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1999
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 2001
    .local v2, id_idx:I
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2002
    .local v6, trackId:Ljava/lang/String;
    const-string v7, "track"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2009
    .end local v2           #id_idx:I
    :goto_1
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v7, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2003
    .end local v6           #trackId:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2004
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2005
    .restart local v6       #trackId:Ljava/lang/String;
    const-string v7, "track"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private chooseShareType()V
    .locals 1

    .prologue
    .line 1846
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    .line 1847
    return-void
.end method

.method private getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "filter"

    .prologue
    .line 2211
    const/4 v8, 0x0

    .line 2212
    .local v8, ret:Landroid/database/Cursor;
    const-string v0, "title COLLATE NOCASE ASC"

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    .line 2213
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2214
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2217
    const/4 v4, 0x0

    .line 2218
    .local v4, keywords:[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2232
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 2233
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2234
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2235
    const-string v0, "title LIKE ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2239
    :cond_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_3

    .line 2240
    if-eqz p1, :cond_5

    .line 2241
    const/4 v7, 0x0

    .line 2243
    .local v7, nowplaying:[I
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v7

    .line 2244
    const-string v0, " AND _id IN ("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v0, v7

    if-ge v6, v0, :cond_2

    .line 2246
    aget v0, v7, v6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2247
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_1

    .line 2248
    const-string v0, ","

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2251
    :cond_2
    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 2275
    .end local v6           #i:I
    .end local v7           #nowplaying:[I
    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    .line 2276
    invoke-virtual {p0, v8}, Lcom/htc/music/NowPlayingViewHelper;->init(Landroid/database/Cursor;)V

    .line 2278
    :cond_4
    return-object v8

    .line 2260
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 2261
    .local v9, status:Ljava/lang/String;
    const-string v0, "mounted"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2262
    new-instance v8, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    .end local v8           #ret:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    invoke-direct {v8, p0, v0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;-><init>(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V

    .restart local v8       #ret:Landroid/database/Cursor;
    goto :goto_1

    .line 2265
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 2256
    .end local v9           #status:Ljava/lang/String;
    .restart local v7       #nowplaying:[I
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "c"

    .prologue
    .line 2163
    if-nez p1, :cond_0

    .line 2164
    const/4 v0, 0x0

    .line 2205
    :goto_0
    return-object v0

    .line 2166
    :cond_0
    instance-of v0, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 2167
    goto :goto_0

    .line 2169
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2170
    .local v8, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2171
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2172
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_art"

    aput-object v1, v2, v0

    .line 2176
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_key"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2178
    .local v10, artCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 2179
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2180
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2181
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2182
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 2187
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2188
    const/4 p1, 0x0

    .line 2189
    const/4 v0, 0x0

    goto :goto_0

    .line 2192
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2193
    .local v6, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2194
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2195
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2196
    .local v12, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2197
    .local v9, albumIdx:I
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2198
    .local v11, id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2199
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2200
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2201
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 2204
    .end local v9           #albumIdx:I
    .end local v11           #id:I
    .end local v12           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_4
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2205
    .local v7, albumArtCrsor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v0, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    invoke-direct {v0, p1, v7, v10}, Lcom/htc/music/widget/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private notifyProperty(Ljava/lang/String;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 2017
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    .line 2018
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2020
    .local v0, i:Landroid/content/Intent;
    const-string v1, "duration"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "length"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2022
    const-string v1, "trackname"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2023
    const-string v1, "artistname"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "artist"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2024
    const-string v1, "albumname"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "album"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2025
    const-string v1, "genre"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "genre"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2026
    const-string v1, "composer"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "composer"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2027
    const-string v1, "location"

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2029
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2031
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onCreate_Local(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 11
    .parameter "intent"
    .parameter "icicle"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 563
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "title_key"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

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

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCursorCols:[Ljava/lang/String;

    .line 586
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsEnhancerExist:Z

    .line 588
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 589
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 590
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 591
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setActivity(Lcom/htc/music/NowPlayingViewHelper;)V

    .line 601
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 602
    invoke-direct {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    .line 631
    :goto_1
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    .line 633
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 634
    .local v9, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 637
    const-string v0, "file"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 640
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_0

    .line 641
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    .line 643
    :cond_0
    return-void

    .line 595
    .end local v9           #f:Landroid/content/IntentFilter;
    :catch_0
    move-exception v8

    .line 596
    .local v8, e:Ljava/lang/ClassCastException;
    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    goto :goto_0

    .line 609
    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_1
    const/4 v10, 0x0

    .line 610
    .local v10, hideSelected:Z
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-ne v0, v5, :cond_3

    .line 611
    :cond_2
    const/4 v10, 0x1

    .line 614
    :cond_3
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f030009

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    .line 622
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    #setter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I
    invoke-static {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$202(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;I)I

    .line 624
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 626
    invoke-direct {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method private onCreate_Plugin(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 5
    .parameter "intent"
    .parameter "icicle"

    .prologue
    .line 526
    const-string v2, "[NowPlayingViewHelper]"

    const-string v3, "== onCreatePlugin() =="

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 531
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 532
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 533
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 536
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :goto_0
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    if-eqz v2, :cond_0

    .line 544
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    invoke-virtual {v2, p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->setActivity(Lcom/htc/music/NowPlayingViewHelper;)V

    .line 545
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 554
    :goto_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "[NowPlayingViewHelper]"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 555
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 556
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUILooper:Landroid/os/Looper;

    .line 557
    new-instance v2, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUILooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    .line 559
    return-void

    .line 537
    .end local v1           #thread:Landroid/os/HandlerThread;
    :catch_0
    move-exception v0

    .line 538
    .local v0, e:Ljava/lang/ClassCastException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    goto :goto_0

    .line 547
    .end local v0           #e:Ljava/lang/ClassCastException;
    :cond_0
    new-instance v2, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030009

    invoke-direct {v2, p0, v3, p0, v4}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;I)V

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    .line 548
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method private onDestroy_Local()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 717
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 719
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/NowPlayingViewHelper;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 725
    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 727
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 728
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 729
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    .line 732
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 733
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 739
    :cond_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 740
    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    .line 743
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_2

    .line 744
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    .line 747
    :cond_2
    return-void
.end method

.method private onDestroy_Plugin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 751
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "== onDestroy() =="

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    .line 754
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 755
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 757
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/NowPlayingViewHelper;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 764
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 765
    iput-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    .line 766
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 769
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V

    .line 770
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->clearNowplayingQueueRequests()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :goto_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    invoke-virtual {v1, v3}, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 777
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNonUILooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 780
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    .line 781
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v1, :cond_0

    .line 783
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 784
    iput-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 787
    :cond_0
    return-void

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onHtcContextItemSelected_Local(I)Z
    .locals 14
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1482
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v8, v9

    .line 1610
    :goto_1
    return v8

    .line 1485
    :sswitch_0
    iget v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    .line 1488
    .local v7, position:I
    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v11, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v12, "_data"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1490
    .local v6, path:Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v10, "content://drm/"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1491
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    iget-wide v11, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/htc/music/NowPlayingViewHelper;->checkDrmFile(Landroid/net/Uri;IJ)V

    .line 1509
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->resetNowIndicator()V

    .line 1511
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v9, :cond_2

    .line 1512
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v9}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1493
    :cond_1
    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v11, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget v12, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    const/4 v13, 0x0

    new-array v9, v9, [I

    invoke-static {v10, v11, v12, v13, v9}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_2

    .line 1514
    :cond_2
    const-string v9, "[NowPlayingViewHelper]"

    const-string v10, "onHtcContextItemSelected_Local(), listAdapter is null."

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1520
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #position:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1522
    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v10

    if-gtz v10, :cond_3

    .line 1523
    const/16 v9, 0xb

    invoke-virtual {p0, v9}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_1

    .line 1526
    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1528
    .local v4, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v11, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1529
    const-string v10, "pickermode"

    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1530
    new-array v0, v8, [I

    iget-wide v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v10, v10

    aput v10, v0, v9

    .line 1531
    .local v0, addToPlaylistData:[I
    const-string v9, "AddToPlaylistData"

    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1532
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v9, v4, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1539
    .end local v0           #addToPlaylistData:[I
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1540
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1541
    .restart local v4       #intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v10, Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1542
    const-string v9, "track"

    iget-wide v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1543
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v9, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1548
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1549
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/htc/music/util/MusicUtils;->searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1554
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1555
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->setRingtone()V

    goto/16 :goto_1

    .line 1560
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1562
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_data"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1564
    .restart local v6       #path:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-wide v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v10, v10

    invoke-static {v9, v6, v10}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1565
    .local v1, canShare:I
    if-eq v1, v8, :cond_4

    .line 1566
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    invoke-direct {p0, v9, v10, v11}, Lcom/htc/music/NowPlayingViewHelper;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1569
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->chooseShareType()V

    goto/16 :goto_1

    .line 1576
    .end local v1           #canShare:I
    .end local v6           #path:Ljava/lang/String;
    :sswitch_6
    new-array v7, v8, [I

    .line 1577
    .local v7, position:[I
    iget v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    aput v8, v7, v9

    .line 1580
    :try_start_0
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8, v7}, Lcom/htc/music/IMediaPlaybackService;->removeQueueTracks([I)I

    .line 1582
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    if-eqz v8, :cond_5

    .line 1583
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.htc.music.queuechanged"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1584
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v8, "NOT_NOTIFY"

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1585
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    iget-object v10, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v8, v10, v4}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1586
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z

    .line 1589
    .end local v4           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v8, :cond_6

    .line 1590
    new-instance v2, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1591
    .local v2, delete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcListView;->setDelPositionsList(Ljava/util/ArrayList;)V

    .line 1595
    .end local v2           #delete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->getNowplaying()[I

    move-result-object v5

    .line 1597
    .local v5, nowPlayingArray:[I
    if-eqz v5, :cond_7

    array-length v8, v5

    if-nez v8, :cond_0

    .line 1598
    :cond_7
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1599
    .restart local v4       #intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v10, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1600
    const/high16 v8, 0x2400

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1601
    const-string v8, "KeepHistory"

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1602
    const-string v8, "RemoveStoreHistory"

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1603
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v8, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1605
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #nowPlayingArray:[I
    :catch_0
    move-exception v3

    .line 1606
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1482
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x5 -> :sswitch_0
        0xa -> :sswitch_6
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_5
    .end sparse-switch
.end method

.method private onHtcContextItemSelected_Plugin(I)Z
    .locals 5
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 1614
    sparse-switch p1, :sswitch_data_0

    .line 1639
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1617
    :sswitch_0
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/music/NowPlayingViewHelper;->playPlug(I)V

    goto :goto_0

    .line 1623
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1624
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/music/NowPlayingViewHelper;->showProperty(I)V

    goto :goto_0

    .line 1629
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1630
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1634
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 1635
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/music/NowPlayingViewHelper;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1614
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x10 -> :sswitch_1
        0x12 -> :sswitch_3
        0x68 -> :sswitch_2
    .end sparse-switch
.end method

.method private onListItemClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 944
    const-string v1, "TrackBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick, position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    iput p3, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    .line 953
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "content://drm/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 955
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p3, p4, p5}, Lcom/htc/music/NowPlayingViewHelper;->checkDrmFile(Landroid/net/Uri;IJ)V

    .line 984
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->resetNowIndicator()V

    .line 986
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v1, :cond_3

    .line 987
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 961
    :cond_2
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-static {v1, v2, p3, v3, v4}, Lcom/htc/music/util/MusicUtils;->playAllNotReShuffle(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_1

    .line 989
    :cond_3
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "onListItemClick_Local(), listAdapter is null."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onListItemClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 994
    const-string v2, "PluginNowPlayingListActivity"

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

    .line 996
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 998
    iput p3, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    .line 1013
    :goto_0
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/music/NowPlayingViewHelper;->playPlug(I)V

    .line 1015
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1016
    .local v0, conf:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1017
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    iput v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I

    .line 1018
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mRefreshListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1020
    .end local v0           #conf:Landroid/content/res/Configuration;
    :cond_0
    :goto_1
    return-void

    .line 1002
    :cond_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1003
    .local v1, pos:Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 1004
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    goto :goto_0

    .line 1007
    :cond_2
    const-string v2, "[NowPlayingViewHelper]"

    const-string v3, "pos is null in onListItemClick_Plugin"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onPause_Local()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 691
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 695
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 696
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 698
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 700
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    .line 704
    :cond_1
    return-void
.end method

.method private onPause_Plugin()V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 711
    return-void
.end method

.method private onResume_Local()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 662
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 664
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 670
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 679
    invoke-virtual {p0, v2}, Lcom/htc/music/NowPlayingViewHelper;->showSpinner(Z)V

    .line 682
    :cond_2
    return-void
.end method

.method private onResume_Plugin()V
    .locals 0

    .prologue
    .line 686
    return-void
.end method

.method private onScrollStateChanged_Local(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1665
    packed-switch p2, :pswitch_data_0

    .line 1688
    :cond_0
    :goto_0
    return-void

    .line 1667
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 1668
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 1669
    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1674
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_2

    .line 1675
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequery(Z)V

    .line 1676
    :cond_2
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1677
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1681
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_3

    .line 1682
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 1683
    :cond_3
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 1665
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onScrollStateChanged_Plugin(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v2, 0x1

    .line 1691
    packed-switch p2, :pswitch_data_0

    .line 1717
    :cond_0
    :goto_0
    return-void

    .line 1693
    :pswitch_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    .line 1696
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1700
    :goto_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    if-eqz v2, :cond_0

    .line 1701
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginAdapter:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1697
    :catch_0
    move-exception v1

    .line 1698
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1704
    .end local v1           #e1:Landroid/os/RemoteException;
    :pswitch_1
    iput-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    goto :goto_0

    .line 1708
    :pswitch_2
    iput-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z

    .line 1711
    :try_start_1
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1712
    :catch_1
    move-exception v0

    .line 1713
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 834
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 835
    const-string v0, "[NowPlayingViewHelper]"

    const-string v1, "onServiceConnected_Local, mContext is null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :goto_0
    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-nez v0, :cond_1

    .line 840
    new-instance v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f030009

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    .line 847
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 848
    invoke-direct {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    .line 857
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 858
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->getMediaPlaybackService()Lcom/htc/music/IMediaPlaybackService;

    move-result-object v0

    if-nez v0, :cond_2

    .line 861
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->setMediaPlaybackService(Lcom/htc/music/IMediaPlaybackService;)V

    .line 865
    :cond_2
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/NowPlayingViewHelper;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 867
    :cond_3
    invoke-direct {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method private onServiceConnected_Plugin(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v5, 0x1

    .line 883
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 884
    const-string v3, "[NowPlayingViewHelper]"

    const-string v4, "onServiceConnected_Plugin, mContext is null!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :goto_0
    return-void

    .line 891
    :cond_0
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/16 v4, 0x12c

    invoke-interface {v3, v4}, Lcom/htc/music/IMediaPlaybackService;->getNowplayingQueue(I)V

    .line 892
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v3

    iput v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    .line 894
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    .line 895
    .local v0, curPos:I
    iget v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    if-ne v3, v5, :cond_1

    .line 896
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v0

    .line 898
    :cond_1
    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I

    .line 900
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper;->showSpinner(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    .end local v0           #curPos:I
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 907
    .local v2, pluginIntentFilter:Landroid/content/IntentFilter;
    const-string v3, "com.htc.music.artpathupdated"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 908
    const-string v3, "com.htc.music.nowplayingqueueupdated"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 909
    const-string v3, "com.htc.music.trackdetailsupdated"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 910
    const-string v3, "com.htc.music.queuechanged"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 911
    const-string v3, "com.htc.music.metachanged"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 912
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mPluginListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 901
    .end local v2           #pluginIntentFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 902
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private onStart_Local()V
    .locals 5

    .prologue
    .line 648
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.music.queuechanged"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 649
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.music.metachanged"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 651
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 652
    .local v0, nowPlayingEvent:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 654
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 655
    return-void
.end method

.method private setRingtone()V
    .locals 5

    .prologue
    .line 1781
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1784
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1795
    :cond_0
    :goto_0
    return-void

    .line 1787
    :cond_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1789
    .local v0, currentAudioType:I
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    if-eqz v2, :cond_0

    .line 1790
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    iget-wide v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->setAudioId(I)V

    .line 1791
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    invoke-virtual {v2, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 1792
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    invoke-virtual {v2, v0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->setAudioType(I)V

    .line 1793
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->useAsRingtone(Z)V

    goto :goto_0
.end method

.method private shareMusicFile()V
    .locals 7

    .prologue
    .line 1850
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "_data"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1852
    .local v3, path:Ljava/lang/String;
    iget-wide v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v0, v4

    .line 1853
    .local v0, audioId:I
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v4, v3, v0}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1855
    .local v1, canShare:I
    packed-switch v1, :pswitch_data_0

    .line 1868
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070097

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1869
    .local v2, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1871
    .end local v2           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 1858
    :pswitch_0
    const-string v4, "[NowPlayingViewHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "normal file case, Audio Path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_0

    .line 1863
    :pswitch_1
    const-string v4, "[NowPlayingViewHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SD DRM case, Audio Path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_0

    .line 1855
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 1874
    const-string v0, ""

    .line 1875
    .local v0, trackName:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1876
    move-object v0, p1

    .line 1878
    :cond_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v1, v0, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    .line 1880
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1881
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    .line 1884
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    .line 1885
    return-void
.end method

.method private showSetContactRingtoneToast()V
    .locals 2

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1821
    :cond_0
    return-void
.end method

.method private showTrackOptions(IJ)V
    .locals 8
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x5

    .line 1036
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    .line 1038
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1040
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1042
    .local v1, id_idx:I
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    .end local v1           #id_idx:I
    :goto_0
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "title"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    .line 1049
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "artist"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    .line 1051
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "album"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    .line 1054
    const-string v4, "[NowPlayingViewHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentAlbumName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    new-array v3, v7, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x7f070059

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x204020f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x7f070056

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x7f07006b

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x2040216

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1063
    .local v3, items:[Ljava/lang/CharSequence;
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    .line 1071
    .local v2, ids:[I
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/music/NowPlayingViewHelper;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 1072
    return-void

    .line 1043
    .end local v2           #ids:[I
    .end local v3           #items:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 1044
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iput-wide p2, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    goto/16 :goto_0

    .line 1063
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private showTrackOptions_plugin(IJ)V
    .locals 10
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v9, 0x2

    .line 1085
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 1087
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    .line 1103
    :goto_0
    const/4 v6, 0x0

    :try_start_0
    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    .line 1104
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-interface {v6, v7}, Lcom/htc/music/IMediaPlaybackService;->getTrackDetails(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :goto_1
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1111
    const-string v6, "[NowPlayingViewHelper]"

    const-string v7, "onListItemLongClick()...mNowPlayingItemsArrayList is empty..."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    :goto_2
    return-void

    .line 1091
    :cond_0
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1092
    .local v3, pos:Ljava/lang/Integer;
    if-eqz v3, :cond_1

    .line 1093
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    goto :goto_0

    .line 1095
    :cond_1
    const-string v6, "[NowPlayingViewHelper]"

    const-string v7, "pos is null in onListItemLongClick_Plugin."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1105
    .end local v3           #pos:Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 1106
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1116
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "artist"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1117
    .local v4, tempArtist:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 1118
    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    .line 1127
    :goto_3
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "title"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1128
    .local v5, tempTitle:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 1129
    iput-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    .line 1135
    :goto_4
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 1136
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07004e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    .line 1138
    :cond_3
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;

    .line 1140
    new-array v2, v9, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v8, 0x204020f

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v8, 0x2040216

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 1144
    .local v2, items:[Ljava/lang/CharSequence;
    new-array v1, v9, [I

    fill-array-data v1, :array_0

    .line 1149
    .local v1, ids:[I
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p0, v6, v2, v1}, Lcom/htc/music/NowPlayingViewHelper;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    goto/16 :goto_2

    .line 1121
    .end local v1           #ids:[I
    .end local v2           #items:[Ljava/lang/CharSequence;
    .end local v5           #tempTitle:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownArtistName:Ljava/lang/String;

    if-nez v6, :cond_5

    .line 1122
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07004d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownArtistName:Ljava/lang/String;

    .line 1124
    :cond_5
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mUnknownArtistName:Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;

    goto :goto_3

    .line 1132
    .restart local v5       #tempTitle:Ljava/lang/String;
    :cond_6
    const-string v6, ""

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    goto :goto_4

    .line 1144
    nop

    :array_0
    .array-data 0x4
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .parameter "receiver"

    .prologue
    .line 2056
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2062
    :goto_0
    return-void

    .line 2059
    :catch_0
    move-exception v0

    .line 2060
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2057
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 1468
    :goto_0
    return-void

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public destroyNowPlayingView()V
    .locals 0

    .prologue
    .line 1748
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause()V

    .line 1749
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStop()V

    .line 1750
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy()V

    .line 1751
    return-void
.end method

.method public enableNowPlayingWithGlance()V
    .locals 4

    .prologue
    .line 348
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-string v2, "Music"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 349
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "NOW_PLAYING_SWITCH"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 350
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause()V

    .line 336
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStop()V

    .line 337
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy()V

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mStopped:Z

    .line 342
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 343
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    .line 344
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    .line 345
    return-void
.end method

.method public generateNowPlayingView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1744
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 1754
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1755
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1756
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mScreenWidth:I

    .line 1757
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mScreenHeight:I

    .line 1759
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public hideEmptyErrorView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2314
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 2315
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2318
    :cond_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 2323
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2326
    :cond_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2327
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2328
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2330
    :cond_2
    return-void
.end method

.method protected hideHtcContextMenu()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 794
    return-void
.end method

.method protected init(Landroid/database/Cursor;)V
    .locals 10
    .parameter "newCursor"

    .prologue
    const/4 v7, 0x1

    .line 2078
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-nez v6, :cond_1

    .line 2079
    if-eqz p1, :cond_0

    .line 2080
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2159
    :cond_0
    :goto_0
    return-void

    .line 2085
    :cond_1
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v6, :cond_2

    .line 2086
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->clearChoices()V

    .line 2088
    :cond_2
    instance-of v6, p1, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    if-eqz v6, :cond_3

    .line 2089
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v6, p1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2095
    :goto_1
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-nez v6, :cond_4

    .line 2097
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->showDatabaseError()V

    .line 2098
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->closeContextMenu()V

    .line 2099
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2091
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 2092
    .local v0, c:Landroid/database/Cursor;
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v6, v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 2106
    .end local v0           #c:Landroid/database/Cursor;
    :cond_4
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 2107
    const v6, 0x7f07003e

    invoke-virtual {p0, v6}, Lcom/htc/music/NowPlayingViewHelper;->showEmptyView(I)V

    goto :goto_0

    .line 2111
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->hideEmptyErrorView()V

    .line 2114
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 2118
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 2119
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 2129
    const/4 v1, 0x0

    .line 2130
    .local v1, cur:I
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v6

    if-ne v6, v7, :cond_6

    .line 2131
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v5

    .line 2132
    .local v5, shufflePos:I
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6, v5}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v1

    .line 2137
    .end local v5           #shufflePos:I
    :goto_2
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 2139
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.htc.music.metachanged"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2144
    :goto_3
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    .line 2145
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaylistContent:[I

    .line 2146
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 2148
    .local v4, keyidx:I
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2149
    const/4 v2, 0x0

    .line 2150
    .local v2, i:I
    :goto_4
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2151
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2152
    .local v3, id:I
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaylistContent:[I

    aput v3, v6, v2

    .line 2153
    add-int/lit8 v2, v2, 0x1

    .line 2154
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 2134
    .end local v2           #i:I
    .end local v3           #id:I
    .end local v4           #keyidx:I
    :cond_6
    :try_start_1
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_2

    .line 2140
    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method public initListPos()V
    .locals 4

    .prologue
    .line 2066
    const/4 v0, 0x0

    .line 2068
    .local v0, cur:I
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    .line 2069
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2070
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2074
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/NowPlayingViewHelper;->setSelection(I)V

    .line 2075
    return-void

    .line 2071
    :catch_0
    move-exception v1

    .line 2072
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isPlugNowPlayingMode()Z
    .locals 1

    .prologue
    .line 1769
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 469
    sparse-switch p1, :sswitch_data_0

    move v5, v6

    .line 518
    :cond_0
    :goto_0
    :sswitch_0
    return v5

    .line 471
    :sswitch_1
    if-ne p2, v7, :cond_0

    .line 472
    iget-object v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v0

    .line 473
    .local v0, list:[I
    const-string v7, "playlist"

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 474
    .local v1, playlist:I
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    int-to-long v7, v1

    invoke-static {v6, v0, v7, v8}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 476
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 482
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_2
    if-ne p2, v7, :cond_0

    .line 483
    new-array v0, v5, [I

    iget-wide v7, p0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    long-to-int v7, v7

    aput v7, v0, v6

    .line 486
    .restart local v0       #list:[I
    const-string v7, "playlist"

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 487
    .restart local v1       #playlist:I
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    int-to-long v7, v1

    invoke-static {v6, v0, v7, v8}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 494
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_3
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-ne p2, v7, :cond_0

    .line 495
    move-object v2, p3

    .line 496
    .local v2, resultIntent:Landroid/content/Intent;
    new-instance v3, Lcom/htc/music/NowPlayingViewHelper$1;

    invoke-direct {v3, p0, v2}, Lcom/htc/music/NowPlayingViewHelper$1;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Intent;)V

    .line 512
    .local v3, setContactRingtoneRunnable:Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 513
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 469
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x13 -> :sswitch_3
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6
    .parameter "intent"
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 169
    iget v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    if-eqz v4, :cond_0

    .line 211
    :goto_0
    return-void

    .line 171
    :cond_0
    iput v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 173
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 174
    .local v3, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 175
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 176
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mScreenWidth:I

    .line 177
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mScreenHeight:I

    .line 179
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    .line 181
    iget-boolean v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-nez v4, :cond_1

    .line 183
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    .line 184
    .local v2, mode:I
    if-ne v5, v2, :cond_1

    .line 185
    iput-boolean v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    .line 190
    .end local v2           #mode:I
    :cond_1
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    .line 192
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v4, :cond_2

    .line 193
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 195
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030041

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    .line 196
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListView;

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 202
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 206
    .end local v0           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-boolean v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v4, :cond_3

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onCreate_Plugin(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 209
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onCreate_Local(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 19
    .parameter "id"

    .prologue
    .line 1202
    sparse-switch p1, :sswitch_data_0

    .line 1416
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 1204
    :sswitch_0
    new-instance v15, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    new-instance v17, Lcom/htc/music/NowPlayingViewHelper$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$3;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto :goto_0

    .line 1217
    :sswitch_1
    new-instance v15, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f070068

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    const v16, 0x1040013

    new-instance v17, Lcom/htc/music/NowPlayingViewHelper$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$4;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto :goto_0

    .line 1225
    :sswitch_2
    new-instance v15, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    const v16, 0x1040013

    new-instance v17, Lcom/htc/music/NowPlayingViewHelper$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$6;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    const v16, 0x1040009

    new-instance v17, Lcom/htc/music/NowPlayingViewHelper$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$5;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1241
    :sswitch_3
    const/4 v15, 0x2

    new-array v5, v15, [Ljava/lang/CharSequence;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f070123

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f070124

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v15

    .line 1246
    .local v5, items:[Ljava/lang/CharSequence;
    new-instance v15, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    new-instance v16, Lcom/htc/music/NowPlayingViewHelper$7;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$7;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v11

    .local v11, shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v3, v11

    .line 1262
    goto/16 :goto_0

    .line 1265
    .end local v5           #items:[Ljava/lang/CharSequence;
    .end local v11           #shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mShareText:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v12

    .local v12, textDialog:Landroid/app/Dialog;
    move-object v3, v12

    .line 1271
    goto/16 :goto_0

    .line 1275
    .end local v12           #textDialog:Landroid/app/Dialog;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    const-string v17, "_data"

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1276
    .local v7, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v0, v7, v1}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v10

    .local v10, shareNormaldialog:Landroid/app/Dialog;
    move-object v3, v10

    .line 1285
    goto/16 :goto_0

    .line 1289
    .end local v7           #path:Ljava/lang/String;
    .end local v10           #shareNormaldialog:Landroid/app/Dialog;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    const-string v17, "_data"

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1290
    .restart local v7       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mSelectedId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v0, v7, v1}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v9

    .local v9, shareDRMDialog:Landroid/app/Dialog;
    move-object v3, v9

    .line 1297
    goto/16 :goto_0

    .line 1302
    .end local v7           #path:Ljava/lang/String;
    .end local v9           #shareDRMDialog:Landroid/app/Dialog;
    :sswitch_7
    const/16 v15, 0x8

    move/from16 v0, p1

    if-ne v0, v15, :cond_2

    .line 1303
    const/4 v15, 0x3

    new-array v5, v15, [Ljava/lang/CharSequence;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0700b4

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0700b5

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0700b6

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v15

    .line 1315
    .restart local v5       #items:[Ljava/lang/CharSequence;
    :goto_1
    const/4 v8, 0x0

    .line 1316
    .local v8, ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    if-nez v15, :cond_0

    .line 1317
    new-instance v15, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    .line 1318
    const-string v15, "[NowPlayingViewHelper]"

    const-string v16, "Ringtonehelper is null!! this should never happen!!"

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    if-eqz v15, :cond_1

    .line 1321
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    const/16 v16, 0x13

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    :cond_1
    move-object v3, v8

    .line 1325
    goto/16 :goto_0

    .line 1309
    .end local v5           #items:[Ljava/lang/CharSequence;
    .end local v8           #ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_2
    const/4 v15, 0x2

    new-array v5, v15, [Ljava/lang/CharSequence;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0700b4

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0700b5

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v15

    .restart local v5       #items:[Ljava/lang/CharSequence;
    goto :goto_1

    .line 1328
    .end local v5           #items:[Ljava/lang/CharSequence;
    :sswitch_8
    new-instance v15, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, 0x2040214

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f07000e

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    const v16, 0x1040013

    new-instance v17, Lcom/htc/music/NowPlayingViewHelper$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$9;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    const v16, 0x1040009

    new-instance v17, Lcom/htc/music/NowPlayingViewHelper$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$8;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .local v2, clearQueueDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v3, v2

    .line 1360
    goto/16 :goto_0

    .line 1363
    .end local v2           #clearQueueDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1364
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v15, 0x7f030018

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 1365
    .local v14, view:Landroid/view/View;
    const v15, 0x7f080053

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/AutoCompleteTextView;

    .line 1366
    .local v13, textview:Landroid/widget/AutoCompleteTextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v16, 0x7f07005d

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1367
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v13, v6}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/widget/AutoCompleteTextView;->setSelectAllOnFocus(Z)V

    .line 1370
    new-instance v15, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, 0x7f070098

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    const v16, 0x2040152

    new-instance v17, Lcom/htc/music/NowPlayingViewHelper$11;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$11;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f070069

    new-instance v17, Lcom/htc/music/NowPlayingViewHelper$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/htc/music/NowPlayingViewHelper$10;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    .line 1385
    .local v3, createDialog:Lcom/htc/widget/HtcAlertDialog;
    goto/16 :goto_0

    .line 1389
    .end local v3           #createDialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #name:Ljava/lang/String;
    .end local v13           #textview:Landroid/widget/AutoCompleteTextView;
    .end local v14           #view:Landroid/view/View;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1390
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    const v15, 0x7f030018

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 1391
    .restart local v14       #view:Landroid/view/View;
    const v15, 0x7f080053

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/AutoCompleteTextView;

    .line 1392
    .restart local v13       #textview:Landroid/widget/AutoCompleteTextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v16, 0x7f07005d

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1393
    .restart local v6       #name:Ljava/lang/String;
    invoke-virtual {v13, v6}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1394
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/widget/AutoCompleteTextView;->setSelectAllOnFocus(Z)V

    .line 1396
    new-instance v15, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, 0x7f070098

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    const v16, 0x2040152

    new-instance v17, Lcom/htc/music/NowPlayingViewHelper$13;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/NowPlayingViewHelper$13;-><init>(Lcom/htc/music/NowPlayingViewHelper;)V

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f070069

    new-instance v17, Lcom/htc/music/NowPlayingViewHelper$12;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/htc/music/NowPlayingViewHelper$12;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual/range {v15 .. v17}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    .line 1411
    .restart local v3       #createDialog:Lcom/htc/widget/HtcAlertDialog;
    goto/16 :goto_0

    .line 1202
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 356
    const/16 v0, 0x66

    const v1, 0x7f07000c

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 358
    const/16 v0, 0x65

    const v1, 0x7f070059

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 360
    const/16 v0, 0x67

    const v1, 0x7f07000d

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 362
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const/16 v0, 0x68

    const v1, 0x2040218

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 368
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 322
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 330
    :goto_0
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 325
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v0, :cond_1

    .line 326
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy_Plugin()V

    goto :goto_0

    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy_Local()V

    goto :goto_0
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 1473
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 1474
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->onHtcContextItemSelected_Local(I)Z

    move-result v0

    .line 1476
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->onHtcContextItemSelected_Plugin(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 214
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v0

    .line 216
    .local v0, isPluginModeNowPlaying:Z
    if-nez v0, :cond_0

    .line 218
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 219
    .local v1, mode:I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 224
    .end local v1           #mode:I
    :cond_0
    iget-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eq v2, v0, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause()V

    .line 226
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStop()V

    .line 227
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy()V

    .line 229
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/htc/music/NowPlayingViewHelper;->onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStart()V

    .line 231
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->onResume()V

    .line 234
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 426
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 464
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 428
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 430
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 431
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_1

    .line 434
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 436
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 437
    const-string v2, "pickermode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    const-string v2, "AddToPlaylistData"

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaylistContent:[I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 439
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/16 v3, 0x65

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 443
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->enableNowPlayingWithGlance()V

    .line 444
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "com.htc.media/track"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v2, "isnowplayinglist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 448
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/16 v3, 0x66

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 454
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 459
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_3
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    goto :goto_0

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 273
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 281
    :goto_0
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 276
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v0, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause_Plugin()V

    goto :goto_0

    .line 279
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onPause_Local()V

    goto :goto_0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)Z
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v0, 0x1

    .line 1420
    sparse-switch p1, :sswitch_data_0

    .line 1461
    const/4 v0, 0x0

    .end local p2
    :goto_0
    return v0

    .line 1422
    .restart local p2
    :sswitch_0
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuTitle:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1425
    .restart local p2
    :sswitch_1
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1429
    .restart local p2
    :sswitch_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1420
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 379
    const/16 v1, 0x67

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 380
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 381
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-nez v1, :cond_5

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 384
    :cond_0
    const/16 v1, 0x66

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_1

    .line 386
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 389
    :cond_1
    const/16 v1, 0x65

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_3

    .line 391
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-nez v1, :cond_2

    move v3, v2

    :cond_2
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 394
    :cond_3
    const/16 v1, 0x68

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_4

    .line 396
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 419
    :cond_4
    return v2

    :cond_5
    move v1, v3

    .line 381
    goto :goto_0

    :cond_6
    move v1, v3

    .line 386
    goto :goto_1
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 238
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 263
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    if-eq v0, v1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 265
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v0, :cond_1

    .line 266
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onResume_Plugin()V

    goto :goto_0

    .line 268
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onResume_Local()V

    goto :goto_0
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1656
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 1657
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/music/NowPlayingViewHelper;->onScroll_Local(Lcom/htc/widget/HtcAbsListView;III)V

    .line 1660
    :goto_0
    return-void

    .line 1659
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/music/NowPlayingViewHelper;->onScroll_Plugin(Lcom/htc/widget/HtcAbsListView;III)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1648
    iget-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 1649
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onScrollStateChanged_Local(Lcom/htc/widget/HtcAbsListView;I)V

    .line 1652
    :goto_0
    return-void

    .line 1651
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onScrollStateChanged_Plugin(Lcom/htc/widget/HtcAbsListView;I)V

    goto :goto_0
.end method

.method public onScroll_Local(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1722
    move v1, p2

    .line 1723
    .local v1, start:I
    add-int v0, p2, p3

    .line 1724
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1725
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    #getter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 1727
    :cond_0
    return-void
.end method

.method public onScroll_Plugin(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1730
    move v1, p2

    .line 1731
    .local v1, start:I
    add-int v0, p2, p3

    .line 1733
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_0

    .line 1734
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 1736
    :cond_0
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    if-eqz v2, :cond_1

    .line 1737
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->setPosition(I)V

    .line 1739
    :cond_1
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 802
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mNeedBindService:Z

    if-nez v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 804
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaybackServiceConnected:Z

    .line 817
    :goto_0
    return-void

    .line 807
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaybackServiceConnected:Z

    .line 809
    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v1, :cond_1

    .line 810
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onServiceConnected_Plugin(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "NowPlayingView onServiceConnected error:"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 812
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper;->onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 820
    const-string v0, "[NowPlayingViewHelper]"

    const-string v1, "nowplayingViewHelper call finish at service disconnected!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 824
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 243
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v1, :cond_2

    .line 250
    const-string v1, "com.htc.music.onerror"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    :cond_2
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNeedBindService:Z

    .line 254
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 256
    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-nez v1, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper;->onStart_Local()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 284
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 300
    :goto_0
    return-void

    .line 286
    :cond_0
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mActivityStatus:I

    .line 287
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->closeDialog()V

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 290
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_1
    iget-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaybackServiceConnected:Z

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 297
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mPlaybackServiceConnected:Z

    .line 299
    :cond_1
    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNeedBindService:Z

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public playPlug(I)V
    .locals 3
    .parameter "listItemPos"

    .prologue
    .line 1916
    if-gez p1, :cond_1

    .line 1934
    :cond_0
    :goto_0
    return-void

    .line 1921
    :cond_1
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 1923
    move v0, p1

    .line 1925
    .local v0, realPos:I
    :try_start_0
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mShuffleMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1926
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, p1}, Lcom/htc/music/IMediaPlaybackService;->getShufflePositionByPosition(I)I

    move-result v0

    .line 1928
    :cond_2
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, v0}, Lcom/htc/music/IMediaPlaybackService;->setQueuePosition(I)V

    .line 1929
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1931
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected resetNowIndicator()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1899
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-nez v2, :cond_0

    .line 1909
    :goto_0
    return-void

    .line 1901
    :cond_0
    const/4 v0, 0x0

    .line 1903
    .local v0, setInVisible:Z
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    .line 1904
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iget v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    #setter for: Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I
    invoke-static {v2, v3}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->access$202(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;I)I

    .line 1906
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mDlnaMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v1

    .line 1908
    :goto_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    iput-boolean v0, v1, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    goto :goto_0

    .line 1906
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    if-nez v0, :cond_0

    .line 2046
    :goto_0
    return-void

    .line 2045
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method

.method public showDatabaseError()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2334
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2335
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 2341
    :cond_0
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_1

    .line 2342
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2365
    :cond_1
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-nez v4, :cond_2

    .line 2366
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v5, 0x7f08004b

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    .line 2369
    :cond_2
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_4

    .line 2370
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2372
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v5, 0x7f0800a9

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2373
    if-nez v3, :cond_3

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v5, 0x7f08004c

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2374
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2377
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 2378
    .local v1, status:Ljava/lang/String;
    const v0, 0x20400a0

    .line 2381
    .local v0, message:I
    const-string v4, "shared"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2382
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2383
    const v0, 0x7f070049

    .line 2398
    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v5, 0x7f080091

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2399
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v2, :cond_6

    .line 2400
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2402
    :cond_6
    return-void

    .line 2385
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_7
    const v0, 0x7f070048

    goto :goto_0

    .line 2389
    :cond_8
    const-string v4, "removed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2390
    const v0, 0x20400a0

    goto :goto_0

    .line 2391
    :cond_9
    const-string v4, "unmounted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2392
    const v0, 0x20401fa

    goto :goto_0
.end method

.method protected showDialog(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(ILandroid/os/Bundle;)V

    .line 1180
    return-void
.end method

.method protected showDialog(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper;->closeDialog()V

    .line 1187
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/music/NowPlayingViewHelper;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    .line 1188
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 1192
    :goto_0
    return-void

    .line 1190
    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/NowPlayingViewHelper;->onPrepareDialog(ILandroid/app/Dialog;)Z

    .line 1191
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public showEmptyView(I)V
    .locals 4
    .parameter "rid"

    .prologue
    .line 2288
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2289
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2294
    :cond_0
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    .line 2299
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2302
    :cond_1
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v2, :cond_2

    .line 2303
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x7f080049

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 2305
    :cond_2
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mNoMusicViewStub:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2307
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x7f080095

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2308
    .local v0, text:Landroid/widget/TextView;
    if-eqz v0, :cond_3

    .line 2309
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2310
    :cond_3
    return-void
.end method

.method protected showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V
    .locals 1
    .parameter "title"
    .parameter "items"
    .parameter "ids"

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuTitle:Ljava/lang/String;

    .line 1196
    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    .line 1197
    iput-object p3, p0, Lcom/htc/music/NowPlayingViewHelper;->mHtcContextMenuIds:[I

    .line 1198
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/music/NowPlayingViewHelper;->showDialog(I)V

    .line 1199
    return-void
.end method

.method public showProperty(I)V
    .locals 6
    .parameter "listItemPos"

    .prologue
    .line 1938
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1939
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const-class v4, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1941
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1942
    .local v2, trackName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "artist"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1944
    .local v0, artistName:Ljava/lang/String;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    .line 1946
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    if-eqz v3, :cond_0

    .line 1948
    const-string v3, "duration"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "length"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1950
    const-string v3, "trackname"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1951
    const-string v3, "artistname"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "artist"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1952
    const-string v3, "albumname"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "album"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1953
    const-string v3, "genre"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "genre"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1954
    const-string v3, "composer"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "composer"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1955
    const-string v3, "location"

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1971
    :goto_0
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1972
    return-void

    .line 1957
    :cond_0
    const-string v3, "duration"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1959
    const-string v3, "trackname"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1960
    const-string v3, "artistname"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1961
    const-string v3, "albumname"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1962
    const-string v3, "genre"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1963
    const-string v3, "composer"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1964
    const-string v3, "location"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1965
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/music/NowPlayingViewHelper;->mIsNeedToUpdateProperty:Z

    goto :goto_0
.end method

.method protected showSpinner(Z)V
    .locals 0
    .parameter "setSpinnerVisible"

    .prologue
    .line 2035
    return-void
.end method
