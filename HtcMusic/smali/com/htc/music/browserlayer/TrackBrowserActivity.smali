.class public Lcom/htc/music/browserlayer/TrackBrowserActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x258

.field private static final ANIMATION_START_OFFSET:I = 0xc8

.field public static final DIALOG_DRM_CONFIRM:I = 0x3

.field public static final DIALOG_DRM_ERROR:I = 0x2

.field public static final DIALOG_FOR_DELETE:I = 0x1

.field private static final DIALOG_SHARETEXT:I = 0x5

.field private static final DIALOG_SHARETYPE:I = 0x4

.field private static final DIALOG_SHARE_DRM_FILE:I = 0x7

.field private static final DIALOG_SHARE_NORMAL_FILE:I = 0x6

.field public static final DLNA_CALLER_MUSIC:I = 0x1

.field private static final INVALIDATE_LISTVIEW:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "[TrackBrowser]"

.field private static final SHOW_SET_CONTACT_RINGTONE_TOAST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[PluginNowPlayingListActivity]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field private final ADD_SONGS:I

.field private final CHANGE_ORDER:I

.field private final CLEAR_PLAYLIST:I

.field private final DELETE_SONGS:I

.field private final DIALOG_SET_AS_RINGTONE:I

.field private final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

.field private final EDIT_PLAYLIST:I

.field private final GET_ALBUM_ART:I

.field private NPoptionButtonClick:Landroid/view/View$OnClickListener;

.field private final PLAY_ALL:I

.field private final QUEUE_UPDATE_COUNT:I

.field private final Q_ALL:I

.field private final Q_SELECTED:I

.field private final REMOVE:I

.field private final RENAME_PLAYLIST:I

.field private final SAVE_AS_PLAYLIST:I

.field private final SEARCH:I

.field private final SELECT_ALL:I

.field private final SETTING:I

.field private final SET_RINGTONE:I

.field private final SHARE:I

.field private final SHARE_PLUGIN:I

.field private final UNSELECT_ALL:I

.field private final UPLOAD:I

.field private mActivity_height:I

.field private mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

.field private mAdapterSent:Z

.field private mAlbumId:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field private mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field mAsyncQuerying:Z

.field private mButtonPanel:Lcom/htc/widget/HtcFooter;

.field private mCategory:S

.field private mComposer:Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCountTemplate:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private mCurrentDetails:Landroid/content/ContentValues;

.field private mCurrentPosition:I

.field private mCurrentTrackName:Ljava/lang/String;

.field private mCursorCols:[Ljava/lang/String;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDeletedOneRow:Z

.field private mDescription:Ljava/lang/String;

.field mDestroyed:Z

.field private mDlnaMode:I

.field private mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mDlnaServiceConn:Z

.field private mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

.field private mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field private mEditMode:Z

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

.field private mGenre:Ljava/lang/String;

.field private mIsDrmList:Z

.field private mIsNeedToUpdateProperty:Ljava/lang/Boolean;

.field public mIsNowPlayinglist:Z

.field private mIsPluginModeNowPlaying:Z

.field private mIsQueueChanged:Z

.field private mIsScrolling:Z

.field private mItemClicked:Z

.field private mLibraryButton:Landroid/widget/ImageButton;

.field private mLibraryListener:Landroid/view/View$OnClickListener;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

.field private mMsg:Ljava/lang/String;

.field private mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

.field private mNeedBindService:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private volatile mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

.field private volatile mNonUILooper:Landroid/os/Looper;

.field private mNotifyCallback:Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;

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

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPickerMode:I

.field mPlaybackServiceConnected:Z

.field private mPlaylistAudioId:[I

.field private mPlaylistContent:[I

.field private mPlaylistMemberCols:[Ljava/lang/String;

.field private mPlaylistUri:Ljava/lang/String;

.field private mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

.field private mPluginListener:Landroid/content/BroadcastReceiver;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mQueueTitle:Lcom/htc/widget/HeaderBarText;

.field private mQueueTitle_height:I

.field private mReScanHandler:Landroid/os/Handler;

.field private mRecentPlayedListener:Landroid/content/BroadcastReceiver;

.field private mRecentPlayedPlaylist:Z

.field private mRecommendButton:Landroid/widget/ImageButton;

.field private mRecommendListener:Landroid/view/View$OnClickListener;

.field private mRefreshListHandler:Landroid/os/Handler;

.field private mRefreshListRunnable:Ljava/lang/Runnable;

.field private mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

.field private mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSelectedId:J

.field private mSelectedPlaylistId:Ljava/lang/String;

.field private mSelectedPlaylistName:Ljava/lang/String;

.field private mSelectedPosition:I

.field private mShareText:Ljava/lang/String;

.field private mShowPlayerPanel:Z

.field private mShuffleMode:I

.field private mSortOrder:Ljava/lang/String;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Lcom/htc/widget/HtcListView;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

.field private mcurDMR:Ljava/lang/String;

.field private preSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x1e

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 279
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 159
    const/16 v0, 0x1a

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->Q_SELECTED:I

    .line 161
    const/16 v0, 0x1b

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->Q_ALL:I

    .line 163
    const/16 v0, 0x1c

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SAVE_AS_PLAYLIST:I

    .line 165
    const/16 v0, 0x1d

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->PLAY_ALL:I

    .line 167
    iput v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->CLEAR_PLAYLIST:I

    .line 169
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->REMOVE:I

    .line 171
    const/16 v0, 0x20

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SEARCH:I

    .line 174
    const/16 v0, 0x21

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->ADD_SONGS:I

    .line 176
    const/16 v0, 0x22

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->DELETE_SONGS:I

    .line 178
    const/16 v0, 0x23

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->CHANGE_ORDER:I

    .line 180
    const/16 v0, 0x24

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->RENAME_PLAYLIST:I

    .line 182
    const/16 v0, 0x25

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SELECT_ALL:I

    .line 184
    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->UNSELECT_ALL:I

    .line 186
    const/16 v0, 0x27

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->DIALOG_SET_AS_RINGTONE:I

    .line 188
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I

    .line 190
    const/16 v0, 0x29

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->EDIT_PLAYLIST:I

    .line 192
    const/16 v0, 0x2a

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SHARE_PLUGIN:I

    .line 194
    const/16 v0, 0x2b

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->UPLOAD:I

    .line 196
    const/16 v0, 0x2c

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SETTING:I

    .line 198
    const/16 v0, 0x2d

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SHARE:I

    .line 200
    const/16 v0, 0x2e

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->SET_RINGTONE:I

    .line 217
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 219
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    .line 231
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    .line 233
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapterSent:Z

    .line 249
    iput-short v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    .line 262
    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    .line 264
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mcurDMR:Ljava/lang/String;

    .line 266
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaServiceConn:Z

    .line 268
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 270
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    .line 276
    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenWidth:I

    .line 277
    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenHeight:I

    .line 315
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNeedBindService:Z

    .line 690
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    .line 785
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 818
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;

    .line 915
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDestroyed:Z

    .line 1132
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 1160
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 1173
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 1191
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    .line 1631
    const/16 v0, 0x4ce

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivity_height:I

    .line 1632
    const/16 v0, 0x40

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle_height:I

    .line 1699
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$7;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    .line 1715
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$8;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    .line 1819
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$9;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    .line 1859
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 1878
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 2350
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$12;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$12;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->NPoptionButtonClick:Landroid/view/View$OnClickListener;

    .line 3714
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$20;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$20;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 3730
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$21;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$21;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNextListener:Landroid/view/View$OnClickListener;

    .line 3741
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$22;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$22;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 3747
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$23;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$23;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLibraryListener:Landroid/view/View$OnClickListener;

    .line 3761
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$24;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$24;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecommendListener:Landroid/view/View$OnClickListener;

    .line 5178
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShowPlayerPanel:Z

    .line 5181
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPrevButton:Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNextButton:Landroid/widget/ImageButton;

    .line 5183
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPauseButton:Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLibraryButton:Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecommendButton:Landroid/widget/ImageButton;

    .line 5185
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    .line 5186
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    .line 5192
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mItemClicked:Z

    .line 5198
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    .line 5200
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    .line 5201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->preSearchTime:J

    .line 5202
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$27;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$27;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    .line 5254
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    .line 5260
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->QUEUE_UPDATE_COUNT:I

    .line 5262
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    .line 5264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    .line 5266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;

    .line 5268
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsQueueChanged:Z

    .line 5272
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

    .line 5274
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    .line 5277
    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-direct {v0, v5}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    .line 5281
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    .line 5283
    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    .line 5285
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I

    .line 5288
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    .line 5291
    iput v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->GET_ALBUM_ART:I

    .line 5339
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListHandler:Landroid/os/Handler;

    .line 5341
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$28;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListRunnable:Ljava/lang/Runnable;

    .line 5630
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$29;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$29;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginListener:Landroid/content/BroadcastReceiver;

    .line 5874
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    .line 5927
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    .line 5940
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    .line 280
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/music/browserlayer/TrackBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/TrackBrowserActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->removePlaylistItem(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateQueueTitle()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)S
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-short v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSetContactRingtoneToast()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->doPauseResume()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/htc/music/browserlayer/TrackBrowserActivity;IJZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showTrackOptions(IJZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$4400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$4500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$4900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mcurDMR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/htc/music/browserlayer/TrackBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    return v0
.end method

.method static synthetic access$6000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$6002(Lcom/htc/music/browserlayer/TrackBrowserActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$6200(Lcom/htc/music/browserlayer/TrackBrowserActivity;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showTrackOptions_plugin(IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsQueueChanged:Z

    return v0
.end method

.method static synthetic access$6302(Lcom/htc/music/browserlayer/TrackBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsQueueChanged:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsUpdatingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->notifyProperty(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$6900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onClickMusicStore()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->hideHtcContextMenu()V

    return-void
.end method

.method private canShare()I
    .locals 1

    .prologue
    .line 3492
    const/4 v0, 0x0

    return v0
.end method

.method private checkDrmFile(Landroid/net/Uri;IJ)V
    .locals 13
    .parameter "uri"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2274
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 2276
    .local v7, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    .line 2277
    .local v8, status:I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_0

    .line 2278
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    .line 2330
    :goto_0
    return-void

    .line 2279
    :cond_0
    if-nez v8, :cond_5

    .line 2280
    const/4 v5, 0x0

    .line 2281
    .local v5, msg:Ljava/lang/String;
    const/4 v10, 0x1

    invoke-static {v7, p1, v10}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v1

    .line 2282
    .local v1, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v1, :cond_2

    .line 2283
    const/4 v0, 0x0

    .line 2284
    .local v0, category:Lcom/htc/music/NpCategory;
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v10, :cond_1

    .line 2287
    new-instance v10, Lcom/htc/music/NpCategory;

    iget-short v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    invoke-direct {v10, v11}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    .line 2290
    :cond_1
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v11, 0x0

    new-array v11, v11, [I

    invoke-static {p0, v10, p2, v0, v11}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    .line 2292
    .end local v0           #category:Lcom/htc/music/NpCategory;
    :cond_2
    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMsg:Ljava/lang/String;

    .line 2293
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMsg:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 2294
    move v6, p2

    .line 2295
    .local v6, pos:I
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    goto :goto_0

    .line 2297
    .end local v6           #pos:I
    :cond_3
    const/4 v0, 0x0

    .line 2298
    .restart local v0       #category:Lcom/htc/music/NpCategory;
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v10, :cond_4

    .line 2301
    new-instance v10, Lcom/htc/music/NpCategory;

    iget-short v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    invoke-direct {v10, v11}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    .line 2304
    :cond_4
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v11, 0x0

    new-array v11, v11, [I

    invoke-static {p0, v10, p2, v0, v11}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    .line 2308
    .end local v0           #category:Lcom/htc/music/NpCategory;
    .end local v1           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v5           #msg:Ljava/lang/String;
    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2309
    .local v4, intent:Landroid/content/Intent;
    const-class v10, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v4, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2310
    const-string v10, "drmtargettomain"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2313
    const/4 v3, 0x0

    .line 2315
    .local v3, id_idx:I
    :try_start_0
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v10, :cond_6

    .line 2316
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "audio_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 2322
    :goto_1
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2323
    .local v9, trackId:Ljava/lang/String;
    const-string v10, "track"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2328
    :goto_2
    const/4 v10, -0x2

    invoke-virtual {p0, v4, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2319
    .end local v9           #trackId:Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_1

    .line 2324
    :catch_0
    move-exception v2

    .line 2325
    .local v2, e:Ljava/lang/Exception;
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v12, "_id"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2326
    .restart local v9       #trackId:Ljava/lang/String;
    const-string v10, "track"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private chooseShareType()V
    .locals 1

    .prologue
    .line 5899
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    .line 5900
    return-void
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 3770
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 3771
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3772
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 3777
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setPauseButtonImage()V

    .line 3781
    :cond_0
    :goto_1
    return-void

    .line 3774
    :cond_1
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3779
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getListSizeTitle(I)Ljava/lang/String;
    .locals 4
    .parameter "iListSize"

    .prologue
    .line 5999
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6000
    .local v0, szTitle:Ljava/lang/String;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 6001
    :cond_0
    const v1, 0x7f07002a

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6003
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "%1s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6004
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%1s"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 6008
    :goto_0
    return-object v1

    .line 6007
    :cond_2
    const-string v1, "[PluginNowPlayingListActivity]"

    const-string v2, "getListSizeTitle(), Can\'t find String htc_all_tracks_title_counts or htc_all_tracks_title_one!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6008
    const-string v1, ""

    goto :goto_0
.end method

.method private getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 23
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 3504
    const/16 v17, 0x0

    .line 3505
    .local v17, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_5

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    .line 3506
    const-string v2, "title COLLATE NOCASE ASC"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 3507
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 3508
    .local v22, where:Ljava/lang/StringBuilder;
    const-string v2, "title != \'\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3511
    const/4 v8, 0x0

    .line 3512
    .local v8, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 3526
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    .line 3527
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 3528
    const-string v2, " AND "

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3529
    const-string v2, "title LIKE ?"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3532
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 3534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND album_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3538
    const-string v2, "track"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 3541
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 3542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND artist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3545
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v12, v2

    .line 3546
    .local v12, genreId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_7

    .line 3547
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3548
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3549
    if-eqz p1, :cond_6

    .line 3550
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3552
    const/16 v17, 0x0

    .line 3705
    .end local v12           #genreId:J
    :cond_3
    :goto_1
    if-eqz v17, :cond_4

    if-eqz p1, :cond_4

    .line 3706
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 3709
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    .line 3711
    :cond_4
    return-object v17

    .line 3505
    .end local v8           #keywords:[Ljava/lang/String;
    .end local v22           #where:Ljava/lang/StringBuilder;
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3554
    .restart local v8       #keywords:[Ljava/lang/String;
    .restart local v12       #genreId:J
    .restart local v22       #where:Ljava/lang/StringBuilder;
    :cond_6
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto :goto_1

    .line 3558
    :cond_7
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3559
    if-eqz p1, :cond_8

    .line 3560
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3564
    :cond_8
    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto :goto_1

    .line 3566
    .end local v12           #genreId:J
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v2, v3, :cond_e

    .line 3567
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    .line 3568
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_3

    .line 3569
    if-eqz p2, :cond_c

    .line 3570
    const/4 v15, 0x0

    .line 3572
    .local v15, nowplaying:[I
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v15

    .line 3573
    const-string v2, " AND _id IN ("

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3574
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    array-length v2, v15

    if-ge v14, v2, :cond_b

    .line 3575
    aget v2, v15, v14

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3576
    array-length v2, v15

    add-int/lit8 v2, v2, -0x1

    if-ge v14, v2, :cond_a

    .line 3577
    const-string v2, ","

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3574
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 3580
    :cond_b
    const-string v2, ")"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3581
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    goto/16 :goto_1

    .line 3589
    .end local v14           #i:I
    .end local v15           #nowplaying:[I
    :cond_c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v19

    .line 3590
    .local v19, status:Ljava/lang/String;
    const-string v2, "mounted"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3591
    new-instance v17, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    .end local v17           #ret:Landroid/database/Cursor;
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V

    .restart local v17       #ret:Landroid/database/Cursor;
    goto/16 :goto_1

    .line 3594
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 3598
    .end local v19           #status:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 3599
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v2, :cond_10

    .line 3601
    const-string v2, "play_order"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 3603
    if-eqz p1, :cond_f

    .line 3604
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3612
    const/16 v17, 0x0

    .line 3621
    :goto_3
    const/16 v2, 0x14

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    goto/16 :goto_1

    .line 3614
    :cond_f
    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto :goto_3

    .line 3624
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    .line 3625
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_3

    .line 3626
    const/16 v16, 0x0

    .line 3628
    .local v16, recentPlayed:[I
    :try_start_1
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v16

    .line 3629
    const-string v2, " AND _id IN ("

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3630
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_4
    move-object/from16 v0, v16

    array-length v2, v0

    if-ge v14, v2, :cond_12

    .line 3631
    aget v2, v16, v14

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3632
    move-object/from16 v0, v16

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v14, v2, :cond_11

    .line 3633
    const-string v2, ","

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3630
    :cond_11
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 3636
    :cond_12
    const-string v2, ")"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3637
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3638
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 3640
    .local v20, tempCursor:Landroid/database/Cursor;
    if-eqz v20, :cond_14

    .line 3641
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v20

    .line 3642
    if-eqz v20, :cond_13

    .line 3643
    new-instance v18, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;-><init>(Landroid/database/Cursor;[ILcom/htc/music/browserlayer/TrackBrowserActivity$1;)V

    .end local v17           #ret:Landroid/database/Cursor;
    .local v18, ret:Landroid/database/Cursor;
    move-object/from16 v17, v18

    .end local v18           #ret:Landroid/database/Cursor;
    .restart local v17       #ret:Landroid/database/Cursor;
    goto/16 :goto_1

    .line 3646
    :cond_13
    const-string v2, "[PluginNowPlayingListActivity]"

    const-string v3, "Recently played cursor became null after joinAlbumArt."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 3651
    .end local v14           #i:I
    .end local v20           #tempCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 3652
    .local v11, ex:Landroid/os/RemoteException;
    const-string v2, "[PluginNowPlayingListActivity]"

    const-string v3, "getTrackCursor - (null != mSelectedPlaylistId && !mRecentPlayedPlaylist)."

    invoke-static {v2, v3, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 3649
    .end local v11           #ex:Landroid/os/RemoteException;
    .restart local v14       #i:I
    .restart local v20       #tempCursor:Landroid/database/Cursor;
    :cond_14
    :try_start_2
    const-string v2, "[PluginNowPlayingListActivity]"

    const-string v3, "Recently played cursor is null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 3658
    .end local v14           #i:I
    .end local v16           #recentPlayed:[I
    .end local v20           #tempCursor:Landroid/database/Cursor;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 3659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND album_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3660
    const-string v2, "track"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 3662
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 3663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND artist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3665
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 3666
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    .line 3667
    .local v10, composer:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v21

    .line 3668
    .local v21, unknown:Z
    if-eqz v21, :cond_19

    .line 3669
    const-string v2, " AND "

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3670
    invoke-static/range {v22 .. v22}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 3679
    .end local v10           #composer:Ljava/lang/String;
    .end local v21           #unknown:Z
    :cond_18
    :goto_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    if-ne v2, v3, :cond_1b

    .line 3684
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3685
    const-string v2, " AND (is_music>1 OR mime_type = \'audio/x-wma-drm\' )"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3691
    :goto_6
    if-eqz p1, :cond_1c

    .line 3692
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3694
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 3673
    .restart local v10       #composer:Ljava/lang/String;
    .restart local v21       #unknown:Z
    :cond_19
    const-string v2, "\'"

    const-string v3, "\'\'"

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND composer = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3687
    .end local v10           #composer:Ljava/lang/String;
    .end local v21           #unknown:Z
    :cond_1a
    const-string v2, " AND is_music>1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 3689
    :cond_1b
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 3696
    :cond_1c
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_1

    .line 3585
    .restart local v15       #nowplaying:[I
    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method private joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "c"

    .prologue
    .line 5109
    if-nez p1, :cond_0

    .line 5110
    const/4 v0, 0x0

    .line 5152
    :goto_0
    return-object v0

    .line 5112
    :cond_0
    instance-of v0, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/htc/music/util/AlbumArtMergeCursor;

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p1

    .line 5113
    goto :goto_0

    .line 5116
    :cond_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 5117
    .local v8, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 5118
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5119
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_art"

    aput-object v1, v2, v0

    .line 5123
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5125
    .local v10, artCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 5126
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5127
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5128
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5129
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 5134
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 5135
    const/4 p1, 0x0

    .line 5136
    const/4 v0, 0x0

    goto :goto_0

    .line 5139
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5140
    .local v6, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5141
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5142
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5143
    .local v12, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 5144
    .local v9, albumIdx:I
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 5145
    .local v11, id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5146
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5147
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5148
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 5151
    .end local v9           #albumIdx:I
    .end local v11           #id:I
    .end local v12           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_5
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5152
    .local v7, albumArtCrsor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v0, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    invoke-direct {v0, p1, v7, v10}, Lcom/htc/music/widget/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private moveItem(Z)V
    .locals 13
    .parameter "up"

    .prologue
    .line 2156
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 2157
    .local v3, curcount:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v4

    .line 2158
    .local v4, curpos:I
    if-eqz p1, :cond_0

    const/4 v10, 0x1

    if-lt v4, v10, :cond_1

    :cond_0
    if-nez p1, :cond_2

    add-int/lit8 v10, v3, -0x1

    if-lt v4, v10, :cond_2

    .line 2198
    :cond_1
    :goto_0
    return-void

    .line 2162
    :cond_2
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v10, v10, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v10, :cond_5

    .line 2163
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    .line 2164
    .local v1, c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    if-eqz p1, :cond_3

    add-int/lit8 v10, v4, -0x1

    :goto_1
    invoke-virtual {v1, v4, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->moveItem(II)V

    .line 2165
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 2166
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 2167
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 2168
    if-eqz p1, :cond_4

    .line 2169
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .line 2164
    :cond_3
    add-int/lit8 v10, v4, 0x1

    goto :goto_1

    .line 2171
    :cond_4
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .line 2174
    .end local v1           #c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    :cond_5
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "play_order"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 2176
    .local v2, colidx:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2177
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2178
    .local v5, currentplayidx:I
    const-string v10, "external"

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 2179
    .local v0, baseUri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2180
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "_id=?"

    .line 2181
    .local v8, where:Ljava/lang/String;
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    .line 2182
    .local v9, wherearg:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2183
    .local v6, res:Landroid/content/ContentResolver;
    if-eqz p1, :cond_6

    .line 2184
    const-string v10, "play_order"

    add-int/lit8 v11, v5, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2185
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 2186
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2187
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 2194
    :goto_2
    const-string v10, "play_order"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2195
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 2196
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2189
    :cond_6
    const-string v10, "play_order"

    add-int/lit8 v11, v5, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2190
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 2191
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2192
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method private notifyProperty(Ljava/lang/String;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 5614
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    .line 5615
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5617
    .local v0, i:Landroid/content/Intent;
    const-string v1, "duration"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "length"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5619
    const-string v1, "trackname"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5620
    const-string v1, "artistname"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "artist"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5621
    const-string v1, "albumname"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "album"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5622
    const-string v1, "genre"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "genre"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5623
    const-string v1, "composer"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "composer"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5624
    const-string v1, "location"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5626
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 5628
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onClickMusicStore()V
    .locals 8

    .prologue
    .line 5947
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportMMC()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5949
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "vfmusic://"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5996
    :goto_0
    return-void

    .line 5951
    :catch_0
    move-exception v0

    .line 5952
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "[PluginNowPlayingListActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5954
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_0
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isOrangeStoreCase()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5955
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 5957
    .local v2, locale:Ljava/util/Locale;
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v6, 0xb

    if-eq v5, v6, :cond_1

    sget-object v5, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5959
    :cond_1
    const-string v3, "http://m.musicstore.orange.fr"

    .line 5965
    .local v3, strLink:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5967
    :catch_1
    move-exception v0

    .line 5968
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v5, "[PluginNowPlayingListActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5960
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #strLink:Ljava/lang/String;
    :cond_2
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    .line 5961
    const-string v3, "http://mobile.orange.ch/MusicStore"

    .restart local v3       #strLink:Ljava/lang/String;
    goto :goto_1

    .line 5963
    .end local v3           #strLink:Ljava/lang/String;
    :cond_3
    const-string v3, "http://m.musicstore.orange.co.uk"

    .restart local v3       #strLink:Ljava/lang/String;
    goto :goto_1

    .line 5970
    .end local v2           #locale:Ljava/util/Locale;
    .end local v3           #strLink:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isTelstraStoreCase()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5971
    const-string v4, "http://waprd.telstra.com/redirect?target=music-g"

    .line 5973
    .local v4, strURL:Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 5975
    :catch_2
    move-exception v0

    .line 5976
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v5, "[PluginNowPlayingListActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5978
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v4           #strURL:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/CustomizeSetting;->isAmazonStoreCase(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5979
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchAmazonIntent()Landroid/content/Intent;

    move-result-object v1

    .line 5981
    .local v1, intent:Landroid/content/Intent;
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 5982
    :catch_3
    move-exception v0

    .line 5983
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v5, "[PluginNowPlayingListActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5984
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->forceReloadAmazonSetting()V

    goto/16 :goto_0

    .line 5986
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/CustomizeSetting;->isVerizonStoreCase(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5987
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVerizonMODIntent()Landroid/content/Intent;

    move-result-object v1

    .line 5989
    .restart local v1       #intent:Landroid/content/Intent;
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 5990
    :catch_4
    move-exception v0

    .line 5991
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v5, "[PluginNowPlayingListActivity]"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5994
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_7
    const-string v5, "[PluginNowPlayingListActivity]"

    const-string v6, "there is no music store available, but image button is visible."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onCreate_Local(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 457
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 458
    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCountTemplate:Ljava/lang/String;

    .line 460
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setVolumeControlStream(I)V

    .line 463
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v8

    const-string v1, "title"

    aput-object v1, v0, v12

    const-string v1, "title_key"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v5

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

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    .line 473
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v8

    const-string v1, "title"

    aput-object v1, v0, v12

    const-string v1, "title_key"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v5

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

    const-string v2, "play_order"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "audio_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 507
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_c

    .line 508
    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    .line 509
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v12}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-nez v0, :cond_1

    .line 513
    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 514
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 540
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 541
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 542
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 543
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 544
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_12

    .line 545
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    .line 547
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 548
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V

    .line 549
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDraggerId(I)V

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 572
    :cond_3
    :goto_1
    const/4 v11, 0x0

    .line 573
    .local v11, hideSelected:Z
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    if-eq v0, v12, :cond_4

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    if-ne v0, v4, :cond_5

    .line 574
    :cond_4
    const/4 v11, 0x1

    .line 577
    :cond_5
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v2, :cond_14

    const v3, 0x7f030024

    :goto_2
    const/4 v4, 0x0

    new-array v5, v8, [Ljava/lang/String;

    new-array v6, v8, [I

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-nez v2, :cond_6

    if-eqz v11, :cond_7

    :cond_6
    move v8, v12

    :cond_7
    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    .line 585
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$002(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I

    .line 587
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 589
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    .line 590
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 596
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_8

    .line 597
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HeaderBar;

    .line 598
    .local v10, header:Lcom/htc/widget/HeaderBar;
    if-eqz v10, :cond_8

    .line 599
    invoke-virtual {v10, v12}, Lcom/htc/widget/HeaderBar;->enableSecondBackground(Z)V

    .line 602
    .end local v10           #header:Lcom/htc/widget/HeaderBar;
    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initPlayerPanel()V

    .line 603
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initButtonsPanel()V

    .line 605
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 606
    .local v9, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 607
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 608
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 609
    const-string v0, "file"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 612
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-eqz v0, :cond_9

    .line 613
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.music.recentplayedchanged"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 616
    :cond_9
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    if-ne v12, v0, :cond_15

    .line 617
    const v0, 0x7f0700ad

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSearchHint(I)V

    .line 618
    iput-short v12, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    .line 622
    :goto_3
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-nez v0, :cond_a

    .line 623
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->enableSearch()V

    .line 624
    :cond_a
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_b

    .line 625
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    .line 628
    :cond_b
    return-void

    .line 517
    .end local v9           #f:Landroid/content/IntentFilter;
    .end local v11           #hideSelected:Z
    :cond_c
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_d

    .line 518
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 519
    :cond_d
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-nez v0, :cond_f

    .line 521
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 522
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 524
    :cond_e
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 527
    :cond_f
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 528
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    .line 536
    :cond_10
    :goto_4
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v12}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    goto/16 :goto_0

    .line 530
    :cond_11
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    .line 531
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-nez v0, :cond_10

    .line 532
    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 533
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    goto :goto_4

    .line 553
    :cond_12
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 555
    :cond_13
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    goto/16 :goto_1

    .line 577
    .restart local v11       #hideSelected:Z
    :cond_14
    const v3, 0x7f030009

    goto/16 :goto_2

    .line 621
    .restart local v9       #f:Landroid/content/IntentFilter;
    :cond_15
    const v0, 0x7f0700ac

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSearchHint(I)V

    goto/16 :goto_3
.end method

.method private onCreate_Plugin(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 631
    const-string v1, "[PluginNowPlayingListActivity]"

    const-string v2, "== onCreatePlugin() =="

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 635
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setVolumeControlStream(I)V

    .line 637
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v1, :cond_1

    .line 638
    const v1, 0x7f03004f

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    .line 646
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 647
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 648
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 649
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 653
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 659
    new-instance v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f030009

    invoke-direct {v1, p0, v2, p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;I)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    .line 660
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 665
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initPlayerPanel()V

    .line 667
    const v1, 0x7f07001f

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    .line 668
    const v1, 0x7f0700ac

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSearchHint(I)V

    .line 670
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-nez v1, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->enableSearch()V

    .line 675
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[PluginNowPlayingListActivity]"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 676
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 677
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUILooper:Landroid/os/Looper;

    .line 678
    new-instance v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUILooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    .line 680
    return-void

    .line 639
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_1
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-eqz v1, :cond_2

    .line 640
    const v1, 0x7f03004e

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto :goto_0

    .line 641
    :cond_2
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    if-nez v1, :cond_3

    .line 642
    const v1, 0x7f030047

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto :goto_0

    .line 644
    :cond_3
    const v1, 0x7f030036

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    goto :goto_0
.end method

.method private onDestroy_Local()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 952
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 954
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 956
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 958
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 967
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v1, :cond_0

    .line 968
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 969
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 970
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 973
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 974
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 979
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 980
    iput-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    .line 986
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_2

    .line 987
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    .line 989
    :cond_2
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 990
    return-void
.end method

.method private onDestroy_Plugin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 994
    const-string v1, "[PluginNowPlayingListActivity]"

    const-string v2, "== onDestroy() =="

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    .line 997
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 998
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRefreshListHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1000
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 1010
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1011
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    .line 1012
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1015
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V

    .line 1016
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->clearNowplayingQueueRequests()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    invoke-virtual {v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1023
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUILooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 1026
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    .line 1027
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v1, :cond_0

    .line 1029
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 1030
    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 1033
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 1035
    return-void

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onHtcContextItemSelected_Local(I)Z
    .locals 20
    .parameter "id"

    .prologue
    .line 1915
    sparse-switch p1, :sswitch_data_0

    .line 2062
    :sswitch_0
    invoke-super/range {p0 .. p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onHtcContextItemSelected(I)Z

    move-result v3

    :goto_0
    return v3

    .line 1918
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    move/from16 v18, v0

    .line 1921
    .local v18, position:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1923
    .local v17, path:Ljava/lang/String;
    if-eqz v17, :cond_0

    const-string v3, "content://drm/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1924
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->checkDrmFile(Landroid/net/Uri;IJ)V

    .line 1956
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 1926
    :cond_0
    const/4 v2, 0x0

    .line 1927
    .local v2, category:Lcom/htc/music/NpCategory;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v3, :cond_1

    .line 1928
    new-instance v2, Lcom/htc/music/NpCategory;

    .end local v2           #category:Lcom/htc/music/NpCategory;
    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    .restart local v2       #category:Lcom/htc/music/NpCategory;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    const/4 v5, 0x0

    new-array v5, v5, [I

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v2, v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_1

    .line 1960
    .end local v2           #category:Lcom/htc/music/NpCategory;
    .end local v17           #path:Ljava/lang/String;
    .end local v18           #position:I
    :sswitch_2
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v3

    if-gtz v3, :cond_2

    .line 1961
    const/16 v3, 0x25a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    .line 1972
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1964
    :cond_2
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 1966
    .local v16, intent:Landroid/content/Intent;
    const-class v3, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1967
    const-string v3, "pickermode"

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1968
    const/4 v3, 0x1

    new-array v9, v3, [I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v4, v4

    aput v4, v9, v3

    .line 1969
    .local v9, addToPlaylistData:[I
    const-string v3, "AddToPlaylistData"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1970
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 1976
    .end local v9           #addToPlaylistData:[I
    .end local v16           #intent:Landroid/content/Intent;
    :sswitch_3
    const-string v3, "[PluginNowPlayingListActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADD_TO_QUEUE, mSelectedId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v5, v5

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1982
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1979
    :catch_0
    move-exception v13

    .line 1980
    .local v13, e:Landroid/os/RemoteException;
    const-string v3, "[PluginNowPlayingListActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADD_TO_QUEUE, RemoteException e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1986
    .end local v13           #e:Landroid/os/RemoteException;
    :sswitch_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    .line 1987
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1991
    :sswitch_5
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 1992
    .restart local v16       #intent:Landroid/content/Intent;
    const-class v3, Lcom/htc/music/PropertyListActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1993
    const-string v3, "track"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1995
    const/4 v3, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1996
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2000
    .end local v16           #intent:Landroid/content/Intent;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2003
    .restart local v17       #path:Ljava/lang/String;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 2004
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2006
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    .line 2008
    .local v10, currentAudioType:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    if-eqz v3, :cond_5

    .line 2009
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->setAudioId(I)V

    .line 2010
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 2011
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    invoke-virtual {v3, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->setAudioType(I)V

    .line 2012
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->useAsRingtone(Z)V

    .line 2015
    :cond_5
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2019
    .end local v10           #currentAudioType:I
    .end local v17           #path:Ljava/lang/String;
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->doSearch()V

    .line 2020
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2024
    :sswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->chooseShareType()V

    .line 2025
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2032
    :sswitch_9
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v15

    .line 2033
    .local v15, index:I
    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/String;

    .line 2034
    .local v12, dataPathArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v11

    .line 2035
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_6

    .line 2036
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2037
    const/4 v3, 0x0

    const-string v4, "_data"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    .line 2038
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2039
    const/4 v11, 0x0

    .line 2041
    :cond_6
    new-instance v19, Ljava/lang/String;

    const-string v3, "com.htc.vmm.service.VMMEngineService"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2043
    .local v19, szAction:Ljava/lang/String;
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "upload"

    invoke-virtual {v3, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2049
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2044
    :catch_1
    move-exception v14

    .line 2046
    .local v14, ex:Ljava/lang/SecurityException;
    const-string v3, "[PluginNowPlayingListActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "We do not have permission to start the service :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1915
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_6
        0x5 -> :sswitch_1
        0xa -> :sswitch_4
        0xd -> :sswitch_3
        0x10 -> :sswitch_5
        0x15 -> :sswitch_9
        0x20 -> :sswitch_7
        0x2a -> :sswitch_0
        0x2d -> :sswitch_8
    .end sparse-switch
.end method

.method private onHtcContextItemSelected_Plugin(I)Z
    .locals 2
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 2066
    sparse-switch p1, :sswitch_data_0

    .line 2081
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onHtcContextItemSelected(I)Z

    move-result v0

    :goto_0
    return v0

    .line 2069
    :sswitch_0
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->play(I)V

    goto :goto_0

    .line 2075
    :sswitch_1
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showProperty(I)V

    goto :goto_0

    .line 2066
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private onListItemClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 2359
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

    .line 2361
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2437
    :cond_0
    :goto_0
    return-void

    .line 2365
    :cond_1
    iput p3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    .line 2366
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 2367
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mItemClicked:Z

    .line 2368
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    goto :goto_0

    .line 2370
    :cond_2
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v1, :cond_0

    .line 2375
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2376
    .local v7, path:Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v1, "content://drm/"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2377
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p3, p4, p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->checkDrmFile(Landroid/net/Uri;IJ)V

    .line 2434
    :goto_1
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v1, :cond_0

    .line 2435
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->invalidate()V

    goto :goto_0

    .line 2390
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v1, :cond_4

    .line 2391
    new-instance v0, Lcom/htc/music/NpCategory;

    iget-short v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    .local v0, category:Lcom/htc/music/NpCategory;
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    new-array v2, v8, [I

    invoke-static {p0, v1, p3, v0, v2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_1

    .line 2397
    .end local v0           #category:Lcom/htc/music/NpCategory;
    :cond_4
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    new-array v3, v8, [I

    invoke-static {p0, v1, p3, v2, v3}, Lcom/htc/music/util/MusicUtils;->playAllNotReShuffle(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_1
.end method

.method private onListItemClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2440
    const-string v1, "PluginNowPlayingListActivity"

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

    .line 2442
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2444
    iput p3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    .line 2459
    :goto_0
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->play(I)V

    .line 2460
    :goto_1
    return-void

    .line 2448
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2449
    .local v0, pos:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 2450
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    goto :goto_0

    .line 2453
    :cond_1
    const-string v1, "[PluginNowPlayingListActivity]"

    const-string v2, "pos is null in onListItemClick_Plugin"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onListItemLongClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2490
    const/4 v0, 0x0

    .line 2491
    .local v0, result:Z
    const-string v1, "TrackBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemLongClick, position="

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

    .line 2492
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 2494
    const/4 v1, 0x1

    invoke-direct {p0, p3, p4, p5, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showTrackOptions(IJZ)Z

    move-result v0

    .line 2497
    :cond_0
    return v0
.end method

.method private onListItemLongClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2703
    const-string v0, "PluginNowPlayingListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemLongClick, position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->enableKeyguard(Landroid/app/Activity;)V

    .line 2705
    invoke-direct {p0, p3, p4, p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showTrackOptions_plugin(IJ)Z

    move-result v0

    return v0
.end method

.method private onPause_Local()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1103
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1108
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1109
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 1110
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 1111
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 1113
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    .line 1117
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 1118
    return-void
.end method

.method private onPause_Plugin()V
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1125
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 1126
    return-void
.end method

.method private onResume_Local()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1063
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 1065
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 1067
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1073
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1081
    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncQuerying:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1082
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSpinner(Z)V

    .line 1084
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setPauseButtonImage()V

    .line 1085
    return-void
.end method

.method private onResume_Plugin()V
    .locals 0

    .prologue
    .line 1088
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 1090
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setPauseButtonImage()V

    .line 1091
    return-void
.end method

.method private onScrollStateChanged_Local(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 5053
    packed-switch p2, :pswitch_data_0

    .line 5076
    :cond_0
    :goto_0
    return-void

    .line 5055
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    .line 5056
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 5057
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5058
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 5062
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_2

    .line 5063
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequery(Z)V

    .line 5064
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5065
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 5069
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_3

    .line 5070
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 5071
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5072
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 5053
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

    .line 5079
    packed-switch p2, :pswitch_data_0

    .line 5106
    :cond_0
    :goto_0
    return-void

    .line 5081
    :pswitch_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

    .line 5084
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5088
    :goto_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    if-eqz v2, :cond_0

    .line 5089
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 5085
    :catch_0
    move-exception v1

    .line 5086
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 5092
    .end local v1           #e1:Landroid/os/RemoteException;
    :pswitch_1
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

    goto :goto_0

    .line 5096
    :pswitch_2
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z

    .line 5099
    :try_start_1
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->clearAlbumArtRequests()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5100
    :catch_1
    move-exception v0

    .line 5102
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 5079
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 695
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNeedBindService:Z

    if-nez v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 697
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    .line 733
    :goto_0
    return-void

    .line 701
    :cond_0
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    .line 702
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-nez v0, :cond_3

    .line 704
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v3, :cond_1

    const v3, 0x7f030024

    :goto_1
    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v9, :cond_2

    :goto_2
    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    .line 712
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 714
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    .line 715
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 704
    :cond_1
    const v3, 0x7f030009

    goto :goto_1

    :cond_2
    move v8, v2

    goto :goto_2

    .line 717
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 724
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 725
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 728
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    .line 729
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method private onServiceConnected_Plugin(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v6, 0x1

    .line 739
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNeedBindService:Z

    if-nez v3, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 741
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    .line 777
    :goto_0
    return-void

    .line 745
    :cond_0
    iput-boolean v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    .line 747
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    if-nez v3, :cond_1

    .line 748
    new-instance v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const v5, 0x7f030009

    invoke-direct {v3, p0, v4, p0, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;I)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    .line 749
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 753
    :cond_1
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/16 v4, 0x12c

    invoke-interface {v3, v4}, Lcom/htc/music/IMediaPlaybackService;->getNowplayingQueue(I)V

    .line 754
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v3

    iput v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    .line 756
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    .line 757
    .local v0, curPos:I
    iget v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    if-ne v3, v6, :cond_2

    .line 758
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v0

    .line 760
    :cond_2
    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I

    .line 762
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSpinner(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    .end local v0           #curPos:I
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 770
    .local v2, pluginIntentFilter:Landroid/content/IntentFilter;
    const-string v3, "com.htc.music.artpathupdated"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 771
    const-string v3, "com.htc.music.nowplayingqueueupdated"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 772
    const-string v3, "com.htc.music.trackdetailsupdated"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 773
    const-string v3, "com.htc.music.queuechanged"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 774
    const-string v3, "com.htc.music.metachanged"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 775
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 763
    .end local v2           #pluginIntentFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 765
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private removeItem()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 2116
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 2117
    .local v1, curcount:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v2

    .line 2118
    .local v2, curpos:I
    if-eqz v1, :cond_0

    if-gez v2, :cond_1

    .line 2153
    .end local v2           #curpos:I
    :cond_0
    :goto_0
    return-void

    .line 2122
    .restart local v2       #curpos:I
    :cond_1
    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v8, v7, :cond_3

    .line 2128
    :try_start_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v7

    if-eq v2, v7, :cond_2

    .line 2129
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2133
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2134
    .local v6, v:Landroid/view/View;
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2135
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 2136
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v7, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    invoke-virtual {v7, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->removeItem(I)Z

    .line 2137
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2138
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0

    .line 2141
    .end local v6           #v:Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 2142
    .local v0, colidx:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2143
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2144
    .local v3, id:J
    const-string v7, "external"

    iget-object v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    .line 2145
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2146
    add-int/lit8 v1, v1, -0x1

    .line 2147
    if-nez v1, :cond_4

    .line 2148
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 2150
    :cond_4
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-ge v2, v1, :cond_5

    .end local v2           #curpos:I
    :goto_2
    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .restart local v2       #curpos:I
    :cond_5
    move v2, v1

    goto :goto_2

    .line 2131
    .end local v0           #colidx:I
    .end local v3           #id:J
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private removePlaylistItem(I)V
    .locals 10
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1826
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, p1, v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1828
    .local v5, v:Landroid/view/View;
    :try_start_0
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v6

    if-eq p1, v6, :cond_0

    .line 1829
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1835
    :cond_0
    :goto_0
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1836
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1837
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v6, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v6, :cond_1

    .line 1838
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    invoke-virtual {v6, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->removeItem(I)Z

    .line 1846
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1847
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1848
    return-void

    .line 1831
    :catch_0
    move-exception v1

    .line 1833
    .local v1, e:Landroid/os/RemoteException;
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z

    goto :goto_0

    .line 1840
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1841
    .local v0, colidx:I
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1842
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1843
    .local v2, id:J
    const-string v6, "external"

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 1844
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removePlaylistItem([I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1851
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1853
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v0, :cond_0

    .line 1857
    :cond_0
    return-void
.end method

.method private setNPtitle()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1530
    const v3, 0x7f0800a2

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarText;

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    .line 1531
    const v3, 0x7f0800a3

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    .line 1532
    .local v1, playerButton:Lcom/htc/widget/HeaderBarImage;
    const v3, 0x7f0800a1

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    .line 1533
    .local v0, libraryButton:Lcom/htc/widget/HeaderBarImage;
    const v3, 0x7f0800a5

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarImage;

    .line 1536
    .local v2, storeButton:Lcom/htc/widget/HeaderBarImage;
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    if-eqz v3, :cond_0

    .line 1537
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    const v4, 0x7f07001f

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 1538
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 1539
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mQueueTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 1542
    :cond_0
    if-eqz v1, :cond_1

    .line 1543
    invoke-virtual {v1, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 1544
    const v3, 0x7f07011c

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 1545
    const v3, 0x7f02002b

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1546
    new-instance v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$6;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1555
    :cond_1
    if-eqz v0, :cond_2

    .line 1556
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 1558
    const v3, 0x2080078

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1559
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLibraryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1560
    invoke-virtual {v0, v5}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    .line 1563
    :cond_2
    if-eqz v2, :cond_3

    .line 1564
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isMusicStoreEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1565
    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 1566
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->getGlanceMusicStoreStringResId(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 1567
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->getGlanceMusicStoreImageResId(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1568
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1575
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateQueueTitle()V

    .line 1576
    return-void

    .line 1571
    :cond_4
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPauseButtonImage()V
    .locals 2

    .prologue
    .line 3785
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 3801
    :goto_0
    return-void

    .line 3788
    :cond_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3792
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x20800b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 3799
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3796
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x20800bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setTitle()V
    .locals 28

    .prologue
    .line 1359
    const/16 v18, 0x0

    .line 1360
    .local v18, fancyName:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v2, :cond_1

    .line 1361
    const v2, 0x7f07000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1522
    :cond_0
    :goto_0
    if-eqz v18, :cond_1d

    .line 1523
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1527
    :goto_1
    return-void

    .line 1362
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 1364
    const v2, 0x7f070070

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1365
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCategorySecondaryTitleVisible(Z)V

    goto :goto_1

    .line 1367
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f070027

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    .line 1369
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    if-ne v2, v3, :cond_4

    .line 1370
    const v2, 0x7f070033

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    .line 1371
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 1372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1373
    .local v12, albunId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_5

    .line 1374
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    .line 1376
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v24

    .line 1377
    .local v24, numresults:I
    :goto_2
    if-lez v24, :cond_0

    .line 1378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "album"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 1380
    .local v23, idx:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "artist_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "artist_id"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1395
    .local v5, where:Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "album"

    aput-object v6, v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1399
    .local v16, cursor:Landroid/database/Cursor;
    if-eqz v16, :cond_7

    .line 1400
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v24

    if-eq v2, v0, :cond_6

    .line 1402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1404
    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->deactivate()V

    .line 1406
    :cond_7
    if-eqz v18, :cond_8

    const-string v2, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1407
    :cond_8
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0

    .line 1376
    .end local v5           #where:Ljava/lang/String;
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v23           #idx:I
    .end local v24           #numresults:I
    :cond_9
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 1411
    .end local v12           #albunId:J
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1413
    .local v14, artistId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-nez v2, :cond_b

    .line 1414
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0

    .line 1416
    :cond_b
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "artist"

    aput-object v3, v8, v2

    .line 1419
    .local v8, cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1422
    .restart local v16       #cursor:Landroid/database/Cursor;
    if-eqz v16, :cond_0

    .line 1423
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_c

    .line 1424
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1425
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1426
    const-string v2, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1427
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1429
    :cond_c
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1433
    .end local v8           #cols:[Ljava/lang/String;
    .end local v14           #artistId:J
    .end local v16           #cursor:Landroid/database/Cursor;
    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v2, v3, :cond_10

    .line 1434
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 1435
    const v2, 0x7f070020

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    goto/16 :goto_0

    .line 1436
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v2, :cond_f

    .line 1437
    const v2, 0x7f07000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    goto/16 :goto_0

    .line 1439
    :cond_f
    const v2, 0x7f07001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1443
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setNPtitle()V

    goto/16 :goto_0

    .line 1445
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 1446
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v2, :cond_15

    .line 1447
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v8, v2

    .line 1449
    .restart local v8       #cols:[Ljava/lang/String;
    const-wide/16 v25, 0x0

    .line 1451
    .local v25, playlistId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    .line 1452
    .local v22, id:Ljava/lang/Long;
    if-eqz v22, :cond_11

    .line 1453
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v25

    .line 1459
    .end local v22           #id:Ljava/lang/Long;
    :cond_11
    :goto_3
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v25

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1462
    .restart local v16       #cursor:Landroid/database/Cursor;
    if-eqz v16, :cond_13

    .line 1463
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_12

    .line 1464
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1465
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1468
    :cond_12
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1469
    const/16 v16, 0x0

    .line 1472
    :cond_13
    if-eqz v18, :cond_14

    .line 1473
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistName:Ljava/lang/String;

    .line 1474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1475
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCategorySecondaryTitleVisible(Z)V

    goto/16 :goto_1

    .line 1455
    .end local v16           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v17

    .line 1456
    .local v17, ex:Ljava/lang/Exception;
    const-string v2, "[TrackBrowser]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(null != mSelectedPlaylistId), ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1479
    .end local v17           #ex:Ljava/lang/Exception;
    .restart local v16       #cursor:Landroid/database/Cursor;
    :cond_14
    const-string v2, "[PluginNowPlayingListActivity]"

    const-string v3, "setTitle(), fancyName is null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1482
    .end local v8           #cols:[Ljava/lang/String;
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v25           #playlistId:J
    :cond_15
    const-string v27, ""

    .line 1483
    .local v27, secondary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_16

    .line 1484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 1485
    .local v21, iCount:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListSizeTitle(I)Ljava/lang/String;

    move-result-object v27

    .line 1487
    .end local v21           #iCount:I
    :cond_16
    const v2, 0x7f070119

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setMainTitle(Ljava/lang/String;)V

    .line 1488
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSecondaryTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1491
    .end local v27           #secondary:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 1492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 1493
    .local v19, genreId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v19, v2

    if-nez v2, :cond_18

    .line 1494
    const v2, 0x7f070050

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0

    .line 1496
    :cond_18
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v8, v2

    .line 1499
    .restart local v8       #cols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1502
    .restart local v16       #cursor:Landroid/database/Cursor;
    if-eqz v16, :cond_0

    .line 1503
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_19

    .line 1504
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1505
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1508
    :cond_19
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1512
    .end local v8           #cols:[Ljava/lang/String;
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v19           #genreId:J
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 1513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const v2, 0x7f07004f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    :goto_4
    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_4

    .line 1517
    :cond_1c
    const v2, 0x7f070027

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1518
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCategorySecondaryTitleVisible(Z)V

    goto/16 :goto_1

    .line 1525
    :cond_1d
    const v2, 0x7f070027

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(I)V

    goto/16 :goto_1
.end method

.method private shareMusicFile()V
    .locals 7

    .prologue
    .line 5903
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "_data"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5905
    .local v3, path:Ljava/lang/String;
    iget-wide v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v0, v4

    .line 5906
    .local v0, audioId:I
    invoke-static {p0, v3, v0}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 5908
    .local v1, canShare:I
    packed-switch v1, :pswitch_data_0

    .line 5921
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070097

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5922
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 5924
    .end local v2           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 5911
    :pswitch_0
    const-string v4, "[PluginNowPlayingListActivity]"

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

    .line 5912
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showNewDialog(I)V

    goto :goto_0

    .line 5916
    :pswitch_1
    const-string v4, "[PluginNowPlayingListActivity]"

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

    .line 5917
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showNewDialog(I)V

    goto :goto_0

    .line 5908
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
    .line 5930
    invoke-static {p0, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    .line 5931
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 5932
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    .line 5935
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showNewDialog(I)V

    .line 5936
    return-void
.end method

.method private showSetContactRingtoneToast()V
    .locals 2

    .prologue
    .line 3496
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    if-eqz v0, :cond_0

    .line 3497
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 3499
    :cond_0
    return-void
.end method

.method private showTrackOptions(IJZ)Z
    .locals 8
    .parameter "position"
    .parameter "id"
    .parameter "bLongClick"

    .prologue
    .line 2501
    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    .line 2503
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2505
    const/4 v2, 0x0

    .line 2507
    .local v2, id_idx:I
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v5, :cond_0

    .line 2508
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "audio_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 2514
    :goto_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2518
    :goto_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "album"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 2520
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "artist"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 2522
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "title"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    .line 2530
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v5, :cond_1

    .line 2531
    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f070056

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f07006b

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2538
    .local v4, items:[Ljava/lang/CharSequence;
    const/4 v5, 0x5

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 2698
    .local v3, ids:[I
    :goto_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p0, v5, v4, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 2699
    const/4 v5, 0x1

    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :goto_3
    return v5

    .line 2511
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto/16 :goto_0

    .line 2515
    :catch_0
    move-exception v1

    .line 2516
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    iput-wide p2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    goto/16 :goto_1

    .line 2545
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-eqz v5, :cond_3

    .line 2547
    if-eqz p4, :cond_2

    .line 2548
    const/4 v5, 0x0

    goto :goto_3

    .line 2550
    :cond_2
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f070056

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2556
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x4

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    .restart local v3       #ids:[I
    goto :goto_2

    .line 2563
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_3
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 2564
    .local v0, dlnaMode:I
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2565
    if-nez v0, :cond_5

    .line 2567
    if-eqz p4, :cond_4

    .line 2568
    const/4 v5, 0x0

    goto :goto_3

    .line 2570
    :cond_4
    const/4 v5, 0x7

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f07000b

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f070056

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x204014d

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2584
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x7

    new-array v3, v5, [I

    fill-array-data v3, :array_2

    .restart local v3       #ids:[I
    goto/16 :goto_2

    .line 2600
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_5
    const/4 v5, 0x7

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f07000b

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f070056

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x204014d

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2613
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x7

    new-array v3, v5, [I

    fill-array-data v3, :array_3

    .restart local v3       #ids:[I
    goto/16 :goto_2

    .line 2629
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_6
    if-nez v0, :cond_8

    .line 2631
    if-eqz p4, :cond_7

    .line 2632
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 2634
    :cond_7
    const/4 v5, 0x7

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f07005a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f070056

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x204014d

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2647
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x7

    new-array v3, v5, [I

    fill-array-data v3, :array_4

    .restart local v3       #ids:[I
    goto/16 :goto_2

    .line 2662
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_8
    const/4 v5, 0x7

    new-array v4, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f070058

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x204020f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f070056

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x204014d

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x2040216

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2674
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x7

    new-array v3, v5, [I

    fill-array-data v3, :array_5

    .restart local v3       #ids:[I
    goto/16 :goto_2

    .line 2538
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2556
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2584
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2613
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2647
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2674
    :array_5
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private showTrackOptions_plugin(IJ)Z
    .locals 10
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2710
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 2712
    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    .line 2728
    :goto_0
    const/4 v5, 0x0

    :try_start_0
    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    .line 2729
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    invoke-interface {v5, v8}, Lcom/htc/music/IMediaPlaybackService;->getTrackDetails(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2734
    :goto_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2736
    const-string v5, "[PluginNowPlayingListActivity]"

    const-string v7, "onListItemLongClick()...mNowPlayingItemsArrayList is empty..."

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2752
    :goto_2
    return v5

    .line 2716
    :cond_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2717
    .local v3, pos:Ljava/lang/Integer;
    if-eqz v3, :cond_1

    .line 2718
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    goto :goto_0

    .line 2720
    :cond_1
    const-string v5, "[PluginNowPlayingListActivity]"

    const-string v7, "pos is null in onListItemLongClick_Plugin."

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2721
    goto :goto_2

    .line 2730
    .end local v3           #pos:Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 2731
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2740
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v8, "title"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2742
    .local v4, trackName:Ljava/lang/String;
    new-array v2, v9, [Ljava/lang/CharSequence;

    const v5, 0x204020f

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v6

    const v5, 0x2040216

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    .line 2746
    .local v2, items:[Ljava/lang/CharSequence;
    new-array v1, v9, [I

    fill-array-data v1, :array_0

    .line 2751
    .local v1, ids:[I
    invoke-virtual {p0, v4, v2, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    move v5, v7

    .line 2752
    goto :goto_2

    .line 2746
    nop

    :array_0
    .array-data 0x4
        0x2at 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 1046
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    :goto_0
    return-void

    .line 1047
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateQueueTitle()V
    .locals 0

    .prologue
    .line 1601
    return-void
.end method


# virtual methods
.method canRewind()Z
    .locals 1

    .prologue
    .line 5156
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 5157
    const/4 v0, 0x0

    .line 5160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public categoryRightAction()Z
    .locals 7

    .prologue
    .line 3259
    const/4 v0, 0x0

    .line 3260
    .local v0, category:Lcom/htc/music/NpCategory;
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3261
    new-instance v0, Lcom/htc/music/NpCategory;

    .end local v0           #category:Lcom/htc/music/NpCategory;
    iget-short v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3264
    .restart local v0       #category:Lcom/htc/music/NpCategory;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v1, v0}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    .line 3265
    const/4 v1, 0x1

    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 2096
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 2099
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2112
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2101
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->moveItem(Z)V

    goto :goto_0

    .line 2104
    :sswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->moveItem(Z)V

    goto :goto_0

    .line 2107
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->removeItem()V

    goto :goto_0

    .line 2099
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method doSearch()V
    .locals 3

    .prologue
    .line 2085
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 2086
    .local v0, rootContext:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    return-void
.end method

.method getCheckedItemCount()I
    .locals 4

    .prologue
    .line 2217
    const/4 v0, 0x0

    .line 2219
    .local v0, count:I
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v3, :cond_1

    .line 2220
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 2230
    :cond_0
    return v0

    .line 2221
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v3, :cond_0

    .line 2222
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 2223
    .local v2, items:Landroid/util/SparseBooleanArray;
    if-eqz v2, :cond_0

    .line 2224
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2225
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2226
    add-int/lit8 v0, v0, 0x1

    .line 2224
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .parameter "date"

    .prologue
    .line 2333
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2335
    .local v0, format:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2336
    const-string v0, "MM-dd-yyyy"

    .line 2337
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HH:mm:ss"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2338
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getPickerMode()J
    .locals 2

    .prologue
    .line 4996
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 14
    .parameter "newCursor"

    .prologue
    .line 1222
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-nez v10, :cond_1

    .line 1223
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1224
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1229
    :cond_1
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    if-eqz v10, :cond_2

    .line 1230
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->clearChoices()V

    .line 1232
    :cond_2
    instance-of v10, p1, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-nez v10, :cond_3

    instance-of v10, p1, Lcom/htc/music/browserlayer/TrackBrowserActivity$RecentPlayedPlaylistCursor;

    if-eqz v10, :cond_4

    .line 1234
    :cond_3
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v10, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1240
    :goto_1
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v10, :cond_5

    .line 1242
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDatabaseError()V

    .line 1243
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->closeContextMenu()V

    .line 1244
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1236
    :cond_4
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    .line 1237
    .local v2, c:Landroid/database/Cursor;
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v10, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 1251
    .end local v2           #c:Landroid/database/Cursor;
    :cond_5
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_6

    .line 1254
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    .line 1255
    const v10, 0x7f070037

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showEmptyView(I)V

    .line 1257
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v10, :cond_0

    .line 1258
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCategoryRightBtn(Z)V

    goto :goto_0

    .line 1264
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->hideEmptyErrorView()V

    .line 1266
    const v10, 0x102000a

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_e

    .line 1267
    const v10, 0x7f030036

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setContentView(I)V

    .line 1268
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 1269
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v10

    const-wide/16 v12, 0x2

    cmp-long v10, v10, v12

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v10

    const-wide/16 v12, 0x3

    cmp-long v10, v10, v12

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v10

    const-wide/16 v12, 0x4

    cmp-long v10, v10, v12

    if-nez v10, :cond_8

    .line 1271
    :cond_7
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 1274
    :cond_8
    iget-boolean v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v10, :cond_d

    .line 1275
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v10, v10, Lcom/htc/widget/HtcReorderListView;

    if-eqz v10, :cond_9

    .line 1276
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v10, Lcom/htc/widget/HtcReorderListView;

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    .line 1277
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v10, Lcom/htc/widget/HtcReorderListView;

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 1278
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v10, Lcom/htc/widget/HtcReorderListView;

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V

    .line 1280
    :cond_9
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 1285
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initPlayerPanel()V

    .line 1286
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->initButtonsPanel()V

    .line 1291
    :goto_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    .line 1297
    const/4 v10, 0x1

    iget-boolean v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v10, v11, :cond_10

    .line 1299
    const/4 v3, 0x0

    .line 1300
    .local v3, cur:I
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    .line 1301
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v9

    .line 1302
    .local v9, shufflePos:I
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10, v9}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v3

    .line 1306
    .end local v9           #shufflePos:I
    :goto_4
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSelection(I)V

    .line 1307
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.htc.music.metachanged"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0, v11}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1326
    .end local v3           #cur:I
    :goto_5
    const/4 v10, 0x1

    iget-boolean v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eq v10, v11, :cond_a

    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 1327
    :cond_a
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v10, :cond_0

    .line 1328
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    .line 1329
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1332
    .local v8, keyidx:I
    const/4 v7, -0x1

    .line 1333
    .local v7, keyAudioIdidx:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "audio_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1335
    const/4 v10, -0x1

    if-le v7, v10, :cond_b

    .line 1336
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    .line 1339
    :cond_b
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1340
    const/4 v4, 0x0

    .line 1341
    .local v4, i:I
    const/4 v1, -0x1

    .line 1342
    .local v1, audioId:I
    :goto_6
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1343
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1344
    .local v5, id:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    aput v5, v10, v4

    .line 1345
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    if-eqz v10, :cond_c

    .line 1346
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1347
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    aput v1, v10, v4

    .line 1350
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 1351
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_6

    .line 1282
    .end local v1           #audioId:I
    .end local v4           #i:I
    .end local v5           #id:I
    .end local v7           #keyAudioIdidx:I
    .end local v8           #keyidx:I
    :cond_d
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 1283
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    goto/16 :goto_2

    .line 1288
    :cond_e
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    goto/16 :goto_3

    .line 1304
    .restart local v3       #cur:I
    :cond_f
    :try_start_1
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto/16 :goto_4

    .line 1311
    .end local v3           #cur:I
    :cond_10
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "artistid"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1312
    .local v6, key:Ljava/lang/String;
    if-eqz v6, :cond_11

    .line 1313
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "artist_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1314
    .restart local v8       #keyidx:I
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1315
    :goto_7
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_11

    .line 1316
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1317
    .local v0, artist:Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1318
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSelection(I)V

    .line 1324
    .end local v0           #artist:Ljava/lang/String;
    .end local v8           #keyidx:I
    :cond_11
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.htc.music.metachanged"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0, v11}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 1321
    .restart local v0       #artist:Ljava/lang/String;
    .restart local v8       #keyidx:I
    :cond_12
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_7

    .line 1308
    .end local v0           #artist:Ljava/lang/String;
    .end local v6           #key:Ljava/lang/String;
    .end local v8           #keyidx:I
    .restart local v3       #cur:I
    :catch_0
    move-exception v10

    goto/16 :goto_5
.end method

.method initButtonsPanel()V
    .locals 6

    .prologue
    .line 4938
    iget-boolean v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 4943
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v3

    .line 4944
    .local v3, parent:Landroid/app/Activity;
    if-eqz v3, :cond_4

    .line 4945
    instance-of v4, v3, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    if-eqz v4, :cond_3

    .line 4946
    check-cast v3, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    .end local v3           #parent:Landroid/app/Activity;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->enableFooterButtonPanel(Z)Lcom/htc/widget/HtcFooter;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    .line 4966
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    const v5, 0x7f08001d

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 4967
    .local v1, Save:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040145

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 4968
    const v4, 0x20800a7

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 4969
    new-instance v4, Lcom/htc/music/browserlayer/TrackBrowserActivity$25;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$25;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4976
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    const v5, 0x7f08001c

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 4977
    .local v0, Cancel:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040152

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 4978
    const v4, 0x20800a3

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 4979
    new-instance v4, Lcom/htc/music/browserlayer/TrackBrowserActivity$26;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$26;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4992
    .end local v0           #Cancel:Lcom/htc/widget/HtcFooterButton;
    .end local v1           #Save:Lcom/htc/widget/HtcFooterButton;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    .line 4993
    return-void

    .line 4948
    .restart local v3       #parent:Landroid/app/Activity;
    :cond_3
    const-string v4, "[PluginNowPlayingListActivity]"

    const-string v5, "try to init panel with parent exist, but parent is not AddPlaylistTabActivity!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4957
    :cond_4
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    if-nez v4, :cond_1

    .line 4959
    const v4, 0x7f08004d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 4960
    .local v2, btnViewStub:Landroid/view/ViewStub;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 4961
    const v4, 0x7f08004e

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcFooter;

    iput-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    goto :goto_0

    .line 4986
    .end local v2           #btnViewStub:Landroid/view/ViewStub;
    .end local v3           #parent:Landroid/app/Activity;
    :cond_5
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    if-eqz v4, :cond_2

    .line 4988
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    goto :goto_1
.end method

.method public initListPos()V
    .locals 4

    .prologue
    .line 5773
    const/4 v0, 0x0

    .line 5775
    .local v0, cur:I
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    .line 5776
    iget v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 5777
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5781
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setSelection(I)V

    .line 5782
    return-void

    .line 5778
    :catch_0
    move-exception v1

    .line 5779
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method initPlayerPanel()V
    .locals 0

    .prologue
    .line 4837
    return-void
.end method

.method isEditMode()Z
    .locals 1

    .prologue
    .line 5000
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    return v0
.end method

.method isPickerMode()Z
    .locals 4

    .prologue
    .line 5004
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 31
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 3270
    sparse-switch p1, :sswitch_data_0

    .line 3488
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 3272
    :sswitch_1
    if-nez p2, :cond_1

    .line 3273
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 3275
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 3276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 3282
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 3283
    .local v23, uri:Landroid/net/Uri;
    if-eqz v23, :cond_0

    .line 3284
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v14, v0, [I

    .line 3285
    .local v14, list:[I
    const/16 v25, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v26

    aput v26, v14, v25

    .line 3286
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 3287
    .local v16, playlist:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v14, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 3292
    .end local v14           #list:[I
    .end local v16           #playlist:I
    .end local v23           #uri:Landroid/net/Uri;
    :sswitch_3
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 3293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v14

    .line 3294
    .restart local v14       #list:[I
    const-string v25, "playlist"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 3295
    .restart local v16       #playlist:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v14, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 3296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 3297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_0

    .line 3303
    .end local v14           #list:[I
    .end local v16           #playlist:I
    :sswitch_4
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 3304
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 3305
    .local v15, name:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 3306
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    goto/16 :goto_0

    .line 3312
    .end local v15           #name:Ljava/lang/String;
    :sswitch_5
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 3313
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 3314
    .restart local v15       #name:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 3315
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    goto/16 :goto_0

    .line 3320
    .end local v15           #name:Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 3321
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 3323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->requery()Z

    .line 3325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    .line 3326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    .line 3327
    const-string v25, "[TrackBrowser]"

    const-string v26, "Bad! I don\'t want to see this!"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3329
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    const-string v26, "_id"

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 3332
    .local v13, keyidx:I
    const/4 v12, -0x1

    .line 3334
    .local v12, keyAudioIdidx:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    const-string v26, "audio_id"

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 3338
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3339
    const/4 v5, -0x1

    .line 3340
    .local v5, audioId:I
    const/4 v9, 0x0

    .line 3341
    .local v9, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v25

    if-nez v25, :cond_0

    .line 3342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 3343
    .local v11, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    move-object/from16 v25, v0

    aput v11, v25, v9

    .line 3344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    if-lez v12, :cond_3

    .line 3345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 3346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    move-object/from16 v25, v0

    aput v5, v25, v9

    .line 3348
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 3349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 3336
    .end local v5           #audioId:I
    .end local v9           #i:I
    .end local v11           #id:I
    :catch_0
    move-exception v8

    .local v8, ex:Ljava/lang/Exception;
    const/4 v12, -0x1

    goto :goto_1

    .line 3355
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v12           #keyAudioIdidx:I
    .end local v13           #keyidx:I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    .line 3356
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 3358
    .local v17, resolver:Landroid/content/ContentResolver;
    const-string v25, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-static/range {v25 .. v27}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "playlist_id="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistAudioId:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJZ)V

    goto/16 :goto_0

    .line 3378
    .end local v17           #resolver:Landroid/content/ContentResolver;
    :catch_1
    move-exception v25

    goto/16 :goto_0

    .line 3364
    :cond_5
    const-string v25, "[PluginNowPlayingListActivity]"

    const-string v26, "using old logic!! this could need a lot of time"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3365
    new-instance v24, Landroid/content/ContentValues;

    const/16 v25, 0x1

    invoke-direct/range {v24 .. v25}, Landroid/content/ContentValues;-><init>(I)V

    .line 3366
    .local v24, values:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 3367
    .restart local v17       #resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_0

    .line 3368
    const-string v25, "play_order"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3370
    const-string v25, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-static/range {v25 .. v27}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v25

    const-string v26, "_id=?"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistContent:[I

    move-object/from16 v29, v0

    aget v29, v29, v9

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3367
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3385
    .end local v9           #i:I
    .end local v17           #resolver:Landroid/content/ContentResolver;
    .end local v24           #values:Landroid/content/ContentValues;
    :sswitch_7
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 3386
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v14, v0, [I

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    aput v26, v14, v25

    .line 3389
    .restart local v14       #list:[I
    const-string v25, "playlist"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 3390
    .restart local v16       #playlist:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v14, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    .line 3396
    .end local v14           #list:[I
    .end local v16           #playlist:I
    :sswitch_8
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 3397
    const-string v25, "selectedlist"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 3398
    .local v19, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v14

    .line 3399
    .restart local v14       #list:[I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2, v14}, Lcom/htc/music/util/MusicUtils;->deletePlaylistTrack(Landroid/content/Context;J[I)V

    .line 3400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 3401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_0

    .line 3407
    .end local v14           #list:[I
    .end local v19           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_9
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->getTabActivityResult(Landroid/content/Context;I)I

    move-result p2

    .line 3408
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 3409
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->getTabActivitySelectedId(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v19

    .line 3410
    .restart local v19       #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v14

    .line 3411
    .restart local v14       #list:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v14, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 3412
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 3421
    .end local v14           #list:[I
    .end local v19           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_a
    invoke-static/range {p2 .. p2}, Lcom/htc/music/util/DrmUtils;->DRMV2_VerifyStatus(I)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 3423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPosition:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto/16 :goto_0

    .line 3428
    :sswitch_b
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 3429
    const-string v25, "[PluginNowPlayingListActivity]"

    const-string v26, "receive set contact ringtone activity result"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3430
    move-object/from16 v18, p3

    .line 3431
    .local v18, resultIntent:Landroid/content/Intent;
    new-instance v20, Lcom/htc/music/browserlayer/TrackBrowserActivity$19;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$19;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Intent;)V

    .line 3441
    .local v20, setContactRingtoneRunnable:Ljava/lang/Runnable;
    new-instance v22, Ljava/lang/Thread;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3442
    .local v22, thread:Ljava/lang/Thread;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 3446
    .end local v18           #resultIntent:Landroid/content/Intent;
    .end local v20           #setContactRingtoneRunnable:Ljava/lang/Runnable;
    .end local v22           #thread:Ljava/lang/Thread;
    :sswitch_c
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 3447
    const-string v25, "selectedlist"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 3448
    .restart local v19       #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_0

    .line 3451
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3452
    .local v10, iCount:I
    new-array v7, v10, [Ljava/lang/String;

    .line 3453
    .local v7, dataPathArray:[Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_4
    if-ge v9, v10, :cond_7

    .line 3454
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v6

    .line 3455
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 3456
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3457
    const-string v25, "_data"

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v7, v9

    .line 3458
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3453
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 3462
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_7
    new-instance v21, Ljava/lang/String;

    const-string v25, "com.htc.vmm.service.VMMEngineService"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3464
    .local v21, szAction:Ljava/lang/String;
    :try_start_2
    new-instance v25, Landroid/content/Intent;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v26, "upload"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 3465
    :catch_2
    move-exception v8

    .line 3467
    .local v8, ex:Ljava/lang/SecurityException;
    const-string v25, "[PluginNowPlayingListActivity]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "We do not have permission to start the service :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3270
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_7
        0x4 -> :sswitch_2
        0xb -> :sswitch_1
        0x13 -> :sswitch_b
        0x1c -> :sswitch_3
        0x21 -> :sswitch_9
        0x22 -> :sswitch_8
        0x23 -> :sswitch_6
        0x24 -> :sswitch_5
        0x29 -> :sswitch_4
        0x2b -> :sswitch_c
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
    .end sparse-switch
.end method

.method onCancelClick()V
    .locals 6

    .prologue
    .line 4928
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 4929
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 4930
    .local v1, items:Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4931
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 4930
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4933
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    .line 4935
    .end local v0           #i:I
    .end local v1           #items:Landroid/util/SparseBooleanArray;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 423
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 425
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 426
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 427
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 428
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenWidth:I

    .line 429
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenHeight:I

    .line 453
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 357
    .local v2, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 358
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 359
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenWidth:I

    .line 360
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenHeight:I

    .line 378
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "albumid"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 381
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 382
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "artistid"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 383
    const-string v4, "isnowplayinglist"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    .line 384
    const-string v4, "playlist"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    .line 385
    const-string v4, "isrecentplayedplaylist"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    .line 386
    const-string v4, "genreid"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 387
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 388
    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    .line 390
    :cond_0
    const-string v4, "isshowplayerpanel"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShowPlayerPanel:Z

    .line 391
    const-string v4, "composer"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    .line 392
    const-string v4, "isdrmlist"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    .line 393
    const-string v4, "description"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDescription:Ljava/lang/String;

    .line 394
    const-string v4, "pickermode"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    .line 395
    const-string v4, "playlisturi"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    .line 398
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    .line 400
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    .line 401
    iget v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    .line 402
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mcurDMR:Ljava/lang/String;

    .line 403
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 404
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v7, v8, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 405
    iput-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaServiceConn:Z

    .line 408
    :cond_1
    iget-boolean v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v4, :cond_3

    .line 409
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onCreate_Local(Landroid/os/Bundle;)V

    .line 414
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v3

    .line 415
    .local v3, rootContext:Landroid/app/Activity;
    new-instance v4, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    invoke-direct {v4, p0, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    .line 420
    return-void

    .end local v3           #rootContext:Landroid/app/Activity;
    :cond_2
    move v4, v6

    .line 398
    goto :goto_0

    .line 411
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onCreate_Plugin(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .parameter "id"
    .parameter "args"

    .prologue
    .line 2769
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 2770
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_0

    move-object v1, p0

    .line 2771
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2922
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v8

    :goto_0
    return-object v8

    .line 2774
    :sswitch_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2775
    const v10, 0x7f070015

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2779
    .local v3, f:Ljava/lang/String;
    :goto_1
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2780
    .local v2, desc:Ljava/lang/String;
    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v10, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x2040214

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x1040013

    new-instance v12, Lcom/htc/music/browserlayer/TrackBrowserActivity$14;

    invoke-direct {v12, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$14;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x1040009

    new-instance v12, Lcom/htc/music/browserlayer/TrackBrowserActivity$13;

    invoke-direct {v12, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$13;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto :goto_0

    .line 2777
    .end local v2           #desc:Ljava/lang/String;
    .end local v3           #f:Ljava/lang/String;
    :cond_1
    const v10, 0x7f070014

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #f:Ljava/lang/String;
    goto :goto_1

    .line 2816
    .end local v3           #f:Ljava/lang/String;
    :sswitch_1
    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v10, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f070068

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x1040013

    new-instance v12, Lcom/htc/music/browserlayer/TrackBrowserActivity$15;

    invoke-direct {v12, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$15;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto :goto_0

    .line 2824
    :sswitch_2
    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v10, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x1040013

    new-instance v12, Lcom/htc/music/browserlayer/TrackBrowserActivity$17;

    invoke-direct {v12, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$17;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x1040009

    new-instance v12, Lcom/htc/music/browserlayer/TrackBrowserActivity$16;

    invoke-direct {v12, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$16;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 2846
    :sswitch_3
    const/4 v10, 0x3

    new-array v4, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const v11, 0x7f0700b5

    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const v11, 0x7f0700b6

    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x2

    const v11, 0x7f0700b7

    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    .line 2851
    .local v4, items:[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    if-eqz v10, :cond_2

    .line 2852
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    const/16 v11, 0x13

    invoke-virtual {v10, v4, v11}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 2855
    :cond_2
    const-string v10, "[PluginNowPlayingListActivity]"

    const-string v11, "mRingToneHelper is null!!"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2860
    .end local v4           #items:[Ljava/lang/CharSequence;
    :sswitch_4
    const/4 v10, 0x2

    new-array v4, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const v11, 0x7f0700b5

    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const v11, 0x7f0700b6

    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    .line 2864
    .restart local v4       #items:[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    if-eqz v10, :cond_3

    .line 2865
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    const/16 v11, 0x13

    invoke-virtual {v10, v4, v11}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 2868
    :cond_3
    const-string v10, "[PluginNowPlayingListActivity]"

    const-string v11, "mRingToneHelper is null!!"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2873
    .end local v4           #items:[Ljava/lang/CharSequence;
    :sswitch_5
    const/4 v10, 0x2

    new-array v4, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const v11, 0x7f070124

    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const v11, 0x7f070125

    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    .line 2878
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v10, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/htc/music/browserlayer/TrackBrowserActivity$18;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$18;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-virtual {v10, v4, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 2894
    .local v8, shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    goto/16 :goto_0

    .line 2897
    .end local v4           #items:[Ljava/lang/CharSequence;
    .end local v8           #shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 2898
    .local v0, activity:Landroid/app/Activity;
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShareText:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v9

    .local v9, textDialog:Landroid/app/Dialog;
    move-object v8, v9

    .line 2899
    goto/16 :goto_0

    .line 2903
    .end local v0           #activity:Landroid/app/Activity;
    .end local v9           #textDialog:Landroid/app/Dialog;
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 2904
    .restart local v0       #activity:Landroid/app/Activity;
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v12, "_data"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2905
    .local v5, path:Ljava/lang/String;
    iget-wide v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v10, v10

    const/4 v11, 0x0

    invoke-static {v0, v10, v5, v11}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v7

    .local v7, shareNormaldialog:Landroid/app/Dialog;
    move-object v8, v7

    .line 2909
    goto/16 :goto_0

    .line 2913
    .end local v0           #activity:Landroid/app/Activity;
    .end local v5           #path:Ljava/lang/String;
    .end local v7           #shareNormaldialog:Landroid/app/Dialog;
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 2914
    .restart local v0       #activity:Landroid/app/Activity;
    iget-object v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v11, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v12, "_data"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2915
    .restart local v5       #path:Ljava/lang/String;
    iget-wide v10, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v10, v10

    const/4 v11, 0x1

    invoke-static {v0, v10, v5, v11}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v6

    .local v6, shareDRMDialog:Landroid/app/Dialog;
    move-object v8, v6

    .line 2919
    goto/16 :goto_0

    .line 2771
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x27 -> :sswitch_3
        0x28 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 5
    .parameter "playlistName"

    .prologue
    .line 2927
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 2928
    .local v0, id:I
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    long-to-int v3, v3

    aput v3, v1, v2

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 2929
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/16 v8, 0x1d

    const/16 v7, 0x9

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2991
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2992
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_2

    .line 2994
    :cond_0
    const/16 v0, 0x25

    const v1, 0x204014f

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2996
    const/16 v0, 0x26

    const v1, 0x2040150

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 3025
    :cond_1
    :goto_0
    return v6

    .line 2997
    :cond_2
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 3000
    const v0, 0x7f070009

    invoke-interface {p1, v5, v7, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 3001
    const v0, 0x7f07000a

    invoke-interface {p1, v5, v8, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 3002
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3003
    const/16 v0, 0x2b

    const v1, 0x7f07000b

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 3005
    :cond_3
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3007
    const/16 v0, 0x2c

    const v1, 0x2040218

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 3009
    :cond_4
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eq v6, v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_5
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_1

    .line 3012
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v6, v0, :cond_6

    .line 3013
    const/16 v0, 0x23

    const v1, 0x7f07000c

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 3014
    const/16 v0, 0x1c

    const v1, 0x7f070059

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 3015
    const/16 v0, 0x2c

    const v1, 0x2040218

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 3016
    :cond_6
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    if-nez v0, :cond_1

    .line 3017
    const v0, 0x7f070009

    invoke-interface {p1, v5, v7, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 3018
    const v0, 0x7f07000a

    invoke-interface {p1, v5, v8, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 3021
    const/16 v0, 0x29

    const v1, 0x7f0700a0

    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 919
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDestroyed:Z

    .line 920
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v1, :cond_3

    .line 921
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onDestroy_Local()V

    .line 925
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 927
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaServiceConn:Z

    if-ne v1, v4, :cond_1

    .line 934
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 935
    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 936
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaServiceConn:Z

    .line 939
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 941
    iput-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    .line 943
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    if-eqz v1, :cond_2

    .line 944
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    invoke-virtual {v1, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 947
    :cond_2
    const-string v1, "[PluginNowPlayingListActivity]"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    return-void

    .line 923
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onDestroy_Plugin()V

    goto :goto_0

    .line 928
    :catch_0
    move-exception v0

    .line 929
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 1907
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 1908
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onHtcContextItemSelected_Local(I)Z

    move-result v0

    .line 1910
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onHtcContextItemSelected_Plugin(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2344
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 2345
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onListItemClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 2348
    :goto_0
    return-void

    .line 2347
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onListItemClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2483
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 2484
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onListItemLongClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 2486
    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onListItemLongClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v3, 0x3

    const/4 v12, 0x1

    .line 3102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 3253
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 3104
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->categoryRightAction()Z

    move v1, v12

    .line 3111
    goto :goto_0

    .line 3130
    :sswitch_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 3131
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaMode:I

    if-ne v1, v3, :cond_0

    .line 3132
    const-string v1, "DLNA"

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 3134
    .local v10, pref:Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "shuffle"

    invoke-interface {v1, v2, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3137
    .end local v10           #pref:Landroid/content/SharedPreferences;
    :cond_0
    const/4 v0, 0x0

    .line 3138
    .local v0, category:Lcom/htc/music/NpCategory;
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3139
    new-instance v0, Lcom/htc/music/NpCategory;

    .end local v0           #category:Lcom/htc/music/NpCategory;
    iget-short v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCategory:S

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    .restart local v0       #category:Lcom/htc/music/NpCategory;
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v1, v0}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    .end local v0           #category:Lcom/htc/music/NpCategory;
    :cond_2
    move v1, v12

    .line 3143
    goto :goto_0

    .line 3146
    :sswitch_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3148
    .local v8, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v8, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3149
    const-string v1, "pickermode"

    invoke-virtual {v8, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3150
    const/16 v1, 0x1c

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 3151
    goto :goto_0

    .line 3155
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_3
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearQueue()V

    move v1, v12

    .line 3156
    goto :goto_0

    .line 3159
    :sswitch_4
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3160
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v1, "playlisturi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/audio/playlists/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3162
    const-class v1, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    invoke-virtual {v8, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3164
    const/16 v1, 0x21

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 3165
    goto/16 :goto_0

    .line 3168
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_5
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3169
    .restart local v8       #intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v8, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3170
    const-string v1, "playlist"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3171
    const-string v1, "pickermode"

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3172
    const/16 v1, 0x22

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 3173
    goto/16 :goto_0

    .line 3176
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_6
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3177
    .restart local v8       #intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/track"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3178
    const-string v1, "playlist"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3179
    const-string v1, "isnowplayinglist"

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3181
    const/16 v1, 0x23

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 3183
    goto/16 :goto_0

    .line 3186
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_7
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3187
    .restart local v8       #intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v8, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3188
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 3189
    const-string v1, "playlistname"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistName:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3190
    :cond_3
    const-string v1, "playlist"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3191
    const/16 v1, 0x29

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 3192
    goto/16 :goto_0

    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_8
    move v1, v12

    .line 3199
    goto/16 :goto_0

    .line 3202
    :sswitch_9
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v1, :cond_5

    .line 3203
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 3204
    .local v11, size:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v11, :cond_4

    .line 3205
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3204
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3208
    :cond_4
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    invoke-virtual {v1, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->sendEmptyMessage(I)Z

    move v1, v12

    .line 3209
    goto/16 :goto_0

    .line 3212
    .end local v7           #i:I
    .end local v11           #size:I
    :cond_5
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v7, v1, :cond_6

    .line 3213
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1, v7, v12}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 3212
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3216
    :cond_6
    iput-boolean v12, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mItemClicked:Z

    .line 3217
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    move v1, v12

    .line 3219
    goto/16 :goto_0

    .line 3222
    .end local v7           #i:I
    :sswitch_a
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v1, :cond_7

    .line 3223
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 3224
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    invoke-virtual {v1, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->sendEmptyMessage(I)Z

    move v1, v12

    .line 3225
    goto/16 :goto_0

    .line 3228
    :cond_7
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v9

    .line 3229
    .local v9, items:Landroid/util/SparseBooleanArray;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v7, v1, :cond_8

    .line 3230
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v9, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 3229
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3232
    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateButtonCounter()V

    move v1, v12

    .line 3233
    goto/16 :goto_0

    .line 3236
    .end local v7           #i:I
    .end local v9           #items:Landroid/util/SparseBooleanArray;
    :sswitch_b
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3237
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v1, "albumid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3238
    const-string v1, "artistid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3239
    const-string v1, "genreid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3240
    const-string v1, "pickermode"

    const/4 v2, 0x4

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3241
    const-class v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v8, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3242
    const/16 v1, 0x2b

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 3243
    goto/16 :goto_0

    .line 3247
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_c
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3248
    .restart local v8       #intent:Landroid/content/Intent;
    const/4 v1, -0x2

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 3249
    goto/16 :goto_0

    .line 3102
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x1c -> :sswitch_2
        0x1d -> :sswitch_0
        0x1e -> :sswitch_3
        0x21 -> :sswitch_4
        0x22 -> :sswitch_5
        0x23 -> :sswitch_6
        0x24 -> :sswitch_8
        0x25 -> :sswitch_9
        0x26 -> :sswitch_a
        0x29 -> :sswitch_7
        0x2b -> :sswitch_b
        0x2c -> :sswitch_c
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1096
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 1097
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onPause_Local()V

    .line 1100
    :goto_0
    return-void

    .line 1099
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onPause_Plugin()V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 2933
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 2934
    packed-switch p1, :pswitch_data_0

    .line 2981
    .end local p2
    :goto_0
    :pswitch_0
    return-void

    .line 2937
    .restart local p2
    :pswitch_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2938
    const v2, 0x7f070015

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2942
    .local v1, f:Ljava/lang/String;
    :goto_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2943
    .local v0, desc:Ljava/lang/String;
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2940
    .end local v0           #desc:Ljava/lang/String;
    .end local v1           #f:Ljava/lang/String;
    .restart local p2
    :cond_0
    const v2, 0x7f070014

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #f:Ljava/lang/String;
    goto :goto_1

    .line 2946
    .end local v1           #f:Ljava/lang/String;
    :pswitch_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2949
    .restart local p2
    :pswitch_3
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2934
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter "menu"

    .prologue
    .line 3031
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 3032
    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-nez v7, :cond_4

    .line 3033
    const/16 v7, 0x23

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3034
    .local v3, item:Landroid/view/MenuItem;
    if-eqz v3, :cond_0

    .line 3035
    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v7, :cond_2

    const/4 v7, 0x1

    :goto_0
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3036
    :cond_0
    const/16 v7, 0x1c

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3037
    if-eqz v3, :cond_1

    .line 3038
    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3041
    :cond_1
    const/4 v7, 0x1

    .line 3095
    :goto_2
    return v7

    .line 3035
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 3038
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 3045
    .end local v3           #item:Landroid/view/MenuItem;
    :cond_4
    const/4 v6, 0x0

    .line 3046
    .local v6, num_tracks:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_5

    .line 3047
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 3050
    :cond_5
    const/4 v7, 0x1

    if-eq v6, v7, :cond_10

    const/4 v4, 0x1

    .line 3051
    .local v4, not_one_song:Z
    :goto_3
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_11

    if-lez v6, :cond_11

    const/4 v2, 0x1

    .line 3054
    .local v2, enabled:Z
    :goto_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v7, :cond_8

    .line 3056
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getCheckedItemCount()I

    move-result v0

    .line 3057
    .local v0, checkedCount:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v7, :cond_12

    const/4 v1, 0x0

    .line 3058
    .local v1, count:I
    :goto_5
    const/16 v7, 0x25

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3059
    .restart local v3       #item:Landroid/view/MenuItem;
    if-eqz v3, :cond_7

    .line 3060
    if-eqz v2, :cond_13

    if-eq v1, v0, :cond_13

    const/4 v7, 0x1

    :goto_6
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3061
    :cond_7
    const/16 v7, 0x26

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3062
    if-eqz v3, :cond_8

    .line 3063
    if-eqz v2, :cond_14

    if-lez v0, :cond_14

    const/4 v7, 0x1

    :goto_7
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3069
    .end local v0           #checkedCount:I
    .end local v1           #count:I
    .end local v3           #item:Landroid/view/MenuItem;
    :cond_8
    const/16 v7, 0x9

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3070
    .restart local v3       #item:Landroid/view/MenuItem;
    if-eqz v3, :cond_9

    .line 3071
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3072
    :cond_9
    const/16 v7, 0x1d

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3073
    if-eqz v3, :cond_a

    .line 3074
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3075
    :cond_a
    const/16 v7, 0x1c

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3076
    if-eqz v3, :cond_b

    .line 3077
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3078
    :cond_b
    const/16 v7, 0x23

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3079
    if-eqz v3, :cond_c

    .line 3080
    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v7, v8, :cond_15

    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v7, v7, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-nez v7, :cond_15

    const/4 v7, 0x1

    :goto_8
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3081
    .local v5, nowplayingSearch:Ljava/lang/Boolean;
    if-eqz v2, :cond_16

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_16

    if-eqz v4, :cond_16

    const/4 v7, 0x1

    :goto_9
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3083
    .end local v5           #nowplayingSearch:Ljava/lang/Boolean;
    :cond_c
    const/16 v7, 0x22

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3084
    if-eqz v3, :cond_d

    .line 3085
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3086
    :cond_d
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 3087
    const/16 v7, 0x2b

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3088
    if-eqz v3, :cond_e

    .line 3089
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3091
    :cond_e
    const/16 v7, 0x2c

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3092
    if-eqz v3, :cond_f

    .line 3093
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3095
    :cond_f
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 3050
    .end local v2           #enabled:Z
    .end local v3           #item:Landroid/view/MenuItem;
    .end local v4           #not_one_song:Z
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 3051
    .restart local v4       #not_one_song:Z
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 3057
    .restart local v0       #checkedCount:I
    .restart local v2       #enabled:Z
    :cond_12
    iget-object v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto/16 :goto_5

    .line 3060
    .restart local v1       #count:I
    .restart local v3       #item:Landroid/view/MenuItem;
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 3063
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 3080
    .end local v0           #checkedCount:I
    .end local v1           #count:I
    :cond_15
    const/4 v7, 0x0

    goto :goto_8

    .line 3081
    .restart local v5       #nowplayingSearch:Ljava/lang/Boolean;
    :cond_16
    const/4 v7, 0x0

    goto :goto_9
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1055
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 1056
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onResume_Local()V

    .line 1059
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V

    .line 1060
    return-void

    .line 1058
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onResume_Plugin()V

    goto :goto_0
.end method

.method public onSaveClick()V
    .locals 18

    .prologue
    .line 4840
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v14, :cond_7

    .line 4842
    const/4 v8, 0x0

    .line 4843
    .local v8, nowPlayingArray:[I
    const/4 v2, 0x0

    .line 4845
    .local v2, deleteArray:[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v14, v14, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v14, :cond_3

    .line 4846
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    .line 4847
    .local v1, c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v14}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 4850
    :try_start_0
    sget-object v14, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;->getNowPlayingQueue()[I

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/htc/music/IMediaPlaybackService;->syncNowPlayingQueue([I)V

    .line 4852
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 4853
    .local v13, totalCount:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    if-ne v13, v14, :cond_5

    .line 4854
    sget-object v14, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v15, 0x0

    add-int/lit8 v16, v13, -0x1

    invoke-interface/range {v14 .. v16}, Lcom/htc/music/IMediaPlaybackService;->removeTracks(II)I

    .line 4867
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v14, :cond_1

    .line 4871
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 4875
    :cond_1
    sget-object v14, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v14}, Lcom/htc/music/IMediaPlaybackService;->getNowplaying()[I

    move-result-object v8

    .line 4877
    if-eqz v8, :cond_2

    array-length v14, v8

    if-nez v14, :cond_3

    .line 4878
    :cond_2
    sget-object v14, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v14}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 4880
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 4881
    .local v6, intent:Landroid/content/Intent;
    const-class v14, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v14}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4882
    const/high16 v14, 0x2400

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4883
    const-string v14, "KeepHistory"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4884
    const-string v14, "RemoveStoreHistory"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4885
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4896
    .end local v1           #c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v13           #totalCount:I
    :cond_3
    :goto_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 4897
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v14, "NOW_PLAYING_LIST"

    invoke-virtual {v6, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 4898
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 4923
    .end local v2           #deleteArray:[I
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #nowPlayingArray:[I
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    .line 4924
    return-void

    .line 4855
    .restart local v1       #c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    .restart local v2       #deleteArray:[I
    .restart local v8       #nowPlayingArray:[I
    .restart local v13       #totalCount:I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 4856
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 4857
    .local v11, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v12

    .line 4859
    .local v12, temp:[Ljava/lang/Object;
    array-length v14, v12

    new-array v2, v14, [I

    .line 4860
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    array-length v14, v12

    if-ge v3, v14, :cond_6

    .line 4861
    aget-object v14, v12, v3

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v2, v3

    .line 4862
    const-string v14, "[PluginNowPlayingListActivity]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete position = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget v16, v2, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4860
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4865
    :cond_6
    sget-object v14, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v14, v2}, Lcom/htc/music/IMediaPlaybackService;->removeQueueTracks([I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 4890
    .end local v3           #i:I
    .end local v11           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v12           #temp:[Ljava/lang/Object;
    .end local v13           #totalCount:I
    :catch_0
    move-exception v14

    goto :goto_1

    .line 4900
    .end local v1           #c:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;
    .end local v2           #deleteArray:[I
    .end local v8           #nowPlayingArray:[I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    .line 4901
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4902
    .local v10, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v14}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 4903
    .local v7, items:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v15, "_id"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 4904
    .local v5, idx:I
    const/4 v4, 0x0

    .line 4905
    .local v4, id:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v14

    if-ge v3, v14, :cond_9

    .line 4906
    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 4907
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-interface {v14, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4908
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    long-to-int v4, v14

    .line 4909
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4905
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4913
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 4914
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v14, "playlisturi"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4915
    .local v9, playlisturi:Ljava/lang/String;
    if-nez v9, :cond_a

    .line 4916
    const-string v14, "selectedlist"

    invoke-virtual {v6, v14, v10}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 4921
    :goto_5
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_2

    .line 4918
    :cond_a
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/htc/music/util/MusicUtils;->setTabActivityResult(Landroid/content/Context;I)V

    .line 4919
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/htc/music/util/MusicUtils;->setTabActivitySelectedId(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_5
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 1203
    const-string v0, "selectedtrack"

    iget-wide v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1204
    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    const-string v0, "albumid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v0, "isnowplayinglist"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1207
    const-string v0, "playlist"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    const-string v0, "isrecentplayedplaylist"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1209
    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const-string v0, "editmode"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1211
    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string v0, "isdrmlist"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsDrmList:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1213
    const-string v0, "description"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const-string v0, "pickermode"

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1215
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string v0, "isshowplayerpanel"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShowPlayerPanel:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1217
    const-string v0, "pluginmode"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1218
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1219
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 5026
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 5027
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onScroll_Local(Lcom/htc/widget/HtcAbsListView;III)V

    .line 5030
    :goto_0
    return-void

    .line 5029
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onScroll_Plugin(Lcom/htc/widget/HtcAbsListView;III)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 5017
    const-string v0, "[TrackBrowser]"

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

    .line 5018
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 5019
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onScrollStateChanged_Local(Lcom/htc/widget/HtcAbsListView;I)V

    .line 5022
    :goto_0
    return-void

    .line 5021
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onScrollStateChanged_Plugin(Lcom/htc/widget/HtcAbsListView;I)V

    goto :goto_0
.end method

.method public onScroll_Local(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 5033
    move v1, p2

    .line 5034
    .local v1, start:I
    add-int v0, p2, p3

    .line 5035
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5036
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 5038
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
    .line 5041
    move v1, p2

    .line 5042
    .local v1, start:I
    add-int v0, p2, p3

    .line 5044
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_0

    .line 5045
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 5047
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    if-eqz v2, :cond_1

    .line 5048
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->setPosition(I)V

    .line 5050
    :cond_1
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 4
    .parameter "filter"

    .prologue
    .line 5009
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->preSearchTime:J

    .line 5010
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilter:Ljava/lang/String;

    .line 5011
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5014
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_0

    .line 684
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onServiceConnected_Local(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 687
    :goto_0
    return-void

    .line 686
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onServiceConnected_Plugin(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    .line 783
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 284
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 285
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 286
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-eqz v1, :cond_0

    .line 289
    const-string v1, "com.htc.music.onerror"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNeedBindService:Z

    .line 292
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 294
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v1, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onStart_Local()V

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onStart_Plugin()V

    goto :goto_0
.end method

.method protected onStart_Local()V
    .locals 3

    .prologue
    .line 303
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v1, v2, :cond_0

    .line 308
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onStart_Plugin()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 318
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 319
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 320
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPlaybackServiceConnected:Z

    .line 324
    :cond_0
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNeedBindService:Z

    .line 326
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsPluginModeNowPlaying:Z

    if-nez v0, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onStop_Local()V

    .line 330
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->onStop_Plugin()V

    goto :goto_0
.end method

.method protected onStop_Local()V
    .locals 2

    .prologue
    .line 336
    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-ne v0, v1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 344
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStop_Plugin()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public play(I)V
    .locals 3
    .parameter "listItemPos"

    .prologue
    .line 5787
    if-gez p1, :cond_1

    .line 5807
    :cond_0
    :goto_0
    return-void

    .line 5792
    :cond_1
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 5794
    move v0, p1

    .line 5796
    .local v0, realPos:I
    :try_start_0
    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mShuffleMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 5797
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, p1}, Lcom/htc/music/IMediaPlaybackService;->getShufflePositionByPosition(I)I

    move-result v0

    .line 5799
    :cond_2
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, v0}, Lcom/htc/music/IMediaPlaybackService;->setQueuePosition(I)V

    .line 5800
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 5801
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPluginAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5804
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected resetBackground()V
    .locals 2

    .prologue
    .line 1604
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v0, :cond_0

    .line 1605
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1619
    :goto_0
    return-void

    .line 1609
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->resetBackground()V

    goto :goto_0
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 8
    .parameter "setEnable"

    .prologue
    const/4 v7, 0x1

    .line 6014
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z

    if-eqz v5, :cond_2

    .line 6016
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->setCategoryRightBtn(Z)V

    .line 6059
    :cond_1
    :goto_0
    return-void

    .line 6020
    :cond_2
    const/4 v4, 0x0

    .line 6021
    .local v4, setEnableInt:I
    if-eqz p1, :cond_3

    const/4 v4, 0x1

    .line 6023
    :cond_3
    iput v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEnableRightBtn:I

    .line 6025
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isActivityResumed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 6026
    const-string v5, "[PluginNowPlayingListActivity]"

    const-string v6, "activity is paused, do not set category right button status"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6030
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v3

    .line 6031
    .local v3, parent:Landroid/app/Activity;
    if-eqz v3, :cond_1

    instance-of v5, v3, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v5, :cond_1

    move-object v2, v3

    .line 6032
    check-cast v2, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 6034
    .local v2, multiParent:Lcom/htc/music/widget/IMusicTabActivityInterface;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6035
    .local v0, enableAddIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x204025d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6036
    .local v1, label:Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 6037
    invoke-interface {v2, v7}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnEnable(Z)V

    .line 6038
    const/16 v5, 0xff

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6039
    new-instance v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$31;

    invoke-direct {v5, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$31;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    invoke-interface {v2, v5}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V

    .line 6056
    :goto_1
    invoke-interface {v2, v0, v1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 6057
    invoke-interface {v2, v7}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnVisible(Z)V

    goto :goto_0

    .line 6051
    :cond_5
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnEnable(Z)V

    .line 6053
    const/16 v5, 0x6e

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1
.end method

.method public showProperty(I)V
    .locals 6
    .parameter "listItemPos"

    .prologue
    .line 5811
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5812
    .local v1, intent:Landroid/content/Intent;
    const-class v3, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5814
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5815
    .local v2, trackName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "artist"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5817
    .local v0, artistName:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    .line 5819
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    if-eqz v3, :cond_0

    .line 5821
    const-string v3, "duration"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "length"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5823
    const-string v3, "trackname"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5824
    const-string v3, "artistname"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "artist"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5825
    const-string v3, "albumname"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "album"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5826
    const-string v3, "genre"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "genre"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5827
    const-string v3, "composer"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "composer"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5828
    const-string v3, "location"

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentDetails:Landroid/content/ContentValues;

    const-string v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5843
    :goto_0
    const/4 v3, -0x2

    invoke-virtual {p0, v1, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5844
    return-void

    .line 5831
    :cond_0
    const-string v3, "duration"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5833
    const-string v3, "trackname"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5834
    const-string v3, "artistname"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5835
    const-string v3, "albumname"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5836
    const-string v3, "genre"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5837
    const-string v3, "composer"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5838
    const-string v3, "location"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5839
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNeedToUpdateProperty:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method updateButtonCounter()V
    .locals 10

    .prologue
    const v9, 0x7f08001d

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2234
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 2271
    :goto_0
    return-void

    .line 2237
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getCheckedItemCount()I

    move-result v1

    .line 2239
    .local v1, count:I
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCountTemplate:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2240
    .local v2, text:Ljava/lang/String;
    iget v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mPickerMode:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 2242
    :pswitch_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 2243
    .local v0, Save:Lcom/htc/widget/HtcFooterButton;
    if-lez v1, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 2245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f07006a

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2246
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v3, v4

    .line 2243
    goto :goto_1

    .line 2250
    .end local v0           #Save:Lcom/htc/widget/HtcFooterButton;
    :pswitch_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 2251
    .restart local v0       #Save:Lcom/htc/widget/HtcFooterButton;
    if-lez v1, :cond_2

    :goto_2
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 2253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f07000b

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2254
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 2251
    goto :goto_2

    .line 2261
    .end local v0           #Save:Lcom/htc/widget/HtcFooterButton;
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f07006b

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2262
    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mButtonPanel:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 2263
    .restart local v0       #Save:Lcom/htc/widget/HtcFooterButton;
    const v5, 0x20800a6

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 2264
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 2265
    if-lez v1, :cond_3

    :goto_3
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_3
    move v3, v4

    goto :goto_3

    .line 2240
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
