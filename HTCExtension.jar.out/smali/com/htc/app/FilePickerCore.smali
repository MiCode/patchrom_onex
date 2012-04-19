.class public Lcom/htc/app/FilePickerCore;
.super Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;
.source "FilePickerCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerCore$SdcardListener;,
        Lcom/htc/app/FilePickerCore$OnlineItemClickListener;,
        Lcom/htc/app/FilePickerCore$OfflineItemClickListener;,
        Lcom/htc/app/FilePickerCore$GridAdapter;,
        Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    }
.end annotation


# static fields
.field private static final DIALOG_LOADING_PROGRESS_ID:I = 0x8

.field private static final DIALOG_PROCESSING_PROGRESS_ID:I = 0xb

.field private static final DOWNLOAD_DIALOG_ID:I = 0x6

.field private static final DOWNLOAD_FAIL_ID:I = 0x9

.field private static final DOWNLOAD_LIMITATION_ID:I = 0x5

.field public static final DRM_AUDIO:Ljava/lang/String; = "drm_audio"

.field public static final DRM_IMAGE:Ljava/lang/String; = "drm_image"

.field public static final DRM_VIDEO:Ljava/lang/String; = "drm_video"

.field static EMPTY_FOLDER:Ljava/lang/String; = null

.field private static final EMPTY_VIEW_TYPE:I = -0x1

.field private static final FILE_NOT_FOUND_ID:I = 0x7

.field static final FLAT_MODE_OF_FOLDER_VIEW:I = 0x1

.field static final FOLDER_MODE_OF_FOLDER_VIEW:I = 0x0

.field private static final FOLDER_PATH_RETURN_ID:I = 0x4

.field static final FOLDER_VIEW_ITEM_SELECT_TASK_FINISH:I = 0x1

.field public static final GRID_VIEW_TYPE:I = 0x1

.field public static final KEY_APP_NAME:Ljava/lang/String; = "application_name"

.field private static final KEY_CLOUD_FUNCTION_ENABLED:Ljava/lang/String; = "CloudFunctionEnabled"

.field public static final KEY_DRM_FILTER:Ljava/lang/String; = "drm_filter"

.field public static final KEY_DROPBOX_SHARE_LINK_ENABLE:Ljava/lang/String; = "returnDropBoxShareLinkEnable"

.field public static final KEY_FILTER:Ljava/lang/String; = "filter"

.field public static final KEY_FOLDER_ITEM_SELECT_ENABLED:Ljava/lang/String; = "folderItemSelectEnabled"

.field public static final KEY_GROUP_BY_PATH:Ljava/lang/String; = "showPath"

.field public static final KEY_MODE_TYPE_OF_FOLDER_VIEW:Ljava/lang/String; = "ModeTypeOfFolderView"

.field public static final KEY_NO_FILE_FOUND_TEXT:Ljava/lang/String; = "no_file_found_text"

.field public static final KEY_ONLY_SCAN_FOLDER_AT_FOLDER_MODE:Ljava/lang/String; = "onlyScanFolderAtFolderMode"

.field public static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final KEY_RECENT_FILES:Ljava/lang/String; = "recent_files"

.field private static final KEY_RECENT_TIMES:Ljava/lang/String; = "recent_time"

.field public static final KEY_REMOVE_FILE_MODE:Ljava/lang/String; = "remove_file_mode"

.field public static final KEY_ROOT_PATH:Ljava/lang/String; = "root_path"

.field public static final KEY_SEARCH_HINT_TEXT:Ljava/lang/String; = "hint_search_text"

.field public static final KEY_SELECTION_TYPE:Ljava/lang/String; = "selectionType"

.field public static final KEY_SHOW_ONLY_ONE_VIEW_TYPE_FORCE_ENABLED:Ljava/lang/String; = "showOnlyOneViewTypeForceEnabled"

.field public static final KEY_SORT_ORDER:Ljava/lang/String; = "sort_order"

.field public static final KEY_SORT_TYPE:Ljava/lang/String; = "sort_type"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_TITLE_ID:Ljava/lang/String; = "title_string_id"

.field public static final KEY_VIEW_TYPE:Ljava/lang/String; = "viewType"

.field static final LIST_MODE_OF_FOLDER_VIEW:I = 0x2

.field static LOADING:Ljava/lang/String; = null

.field public static final MULTIPLE_SELECTION:I = 0x1

.field private static final NETWORK_SETTING_ID:I = 0xa

.field private static final NON_USER_PREFERENCES:I = -0x1

.field static final NOTIFY_CLOUD_EXCEPTION:I = 0xd

.field static final NOTIFY_CLOUD_FILE_DOWNLOAD_FINISH:I = 0x2

.field static final NOTIFY_CLOUD_LOGIN_CHECK_TASK:I = 0xc

.field static final NOTIFY_DOWNLOAD_FAIL:I = 0x9

.field private static final NOTIFY_LOAD_FILES:I = 0xf

.field static final NOTIFY_MORE_EXPAND_FAIL:I = 0xa

.field private static final NOTIFY_STORAGE_UNAVAILABLE:I = 0xe

.field public static final OUTPUT_PATH_ARRAY:Ljava/lang/String; = "output"

.field private static final PERFORM_ON_RESULT_AND_FINISH_TASK:I = 0xb

.field static RECENT_USED:Ljava/lang/String; = null

.field private static final REFRESH_ITEM_ID:I = 0x1

.field private static final SEARCH_ITEM_ID:I = 0x3

.field public static final SINGLE_SELECTION:I = 0x0

.field static final SORT_BY_DATE:I = 0x1

.field static final SORT_BY_NAME:I = 0x0

.field private static final SORT_ITEM_ID:I = 0x2

.field static final SORT_ORDER_ASCENDING:I = 0x0

.field static final SORT_ORDER_DESCENDING:I = 0x1


# instance fields
.field private final DEBUG:Z

.field private final DEFAULT_SORT_ORDER:I

.field private final DEFAULT_SORT_TYPE:I

.field Default_PaddingBottom:I

.field Default_PaddingTop:I

.field private final FILE_PICKER_PREFERENCE:Ljava/lang/String;

.field private final INIT_TAG:Ljava/lang/String;

.field private final KEY_CLOUD_SERVICE_ACCOUNT_REQUEST:Ljava/lang/String;

.field private final KEY_CLOUD_SERVICE_NAME_REQUEST:Ljava/lang/String;

.field private final KEY_CURRENT_ADAPTER_IS_LOCAL_MODE:Ljava/lang/String;

.field private final KEY_FILE_PICKER_MODE_ENABLED:Ljava/lang/String;

.field private final KEY_FOLDER_PICKER_MODE_ENABLED:Ljava/lang/String;

.field private final KEY_LOCAL_DATA_SOURCE_ENABLED:Ljava/lang/String;

.field private final KEY_ONLY_SHOW_CAN_WRITE_FOLDER:Ljava/lang/String;

.field private final KEY_USB_CONNECTION_MODE:Ljava/lang/String;

.field private MoreExpanedObjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/FilePickerCore$MoreExpanedObject;",
            ">;"
        }
    .end annotation
.end field

.field private final NOTIFY_FAVORITE_DATA_CHANGE:I

.field private final NOTIFY_FILEPICKER_INITIAL_TASK:I

.field private final NOTIFY_RECENT_DATA_CHANGE:I

.field private final NOTIFY_RESCAN_FILES:I

.field private final SHOW_CLOUD_PICKER_VIEW_TASK:I

.field private final SHOW_LOCAL_PICKER_VIEW_TASK:I

.field private final SHOW_USB_CONNECTION_PICKER_VIEW_TASK:I

.field private final TAG:Ljava/lang/String;

.field private final USER_PREFER_CAROUSEL_DEFAULT_TAB:Ljava/lang/String;

.field private final USER_PREFER_CLOUD_ACCOUNT_NAME:Ljava/lang/String;

.field private final USER_PREFER_CLOUD_REFRESH_END_TIME:Ljava/lang/String;

.field private final USER_PREFER_CLOUD_SERVICE_NAME:Ljava/lang/String;

.field private final USER_PREFER_SHOW_CLOUD_FILES_SCOPE:Ljava/lang/String;

.field private final USER_PREFER_SHOW_LOCAL_FILES_SCOPE:Ljava/lang/String;

.field private favorite_view:Lcom/htc/app/FilePickerListView;

.field private gridItemBkg:Landroid/graphics/drawable/LayerDrawable;

.field private gridItemSize:I

.field private handler:Landroid/os/Handler;

.field private final initLog:Z

.field private isFolderItemSelectedEnabled:Z

.field private isNetworkConnected:Z

.field private isReturnCloudShareLinkEnabled:Z

.field private isSdcardRoot:Z

.field private final localLOGV:Z

.field private mActHandler:Landroid/os/Handler;

.field private mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

.field private mAppBackUpOnClickListener:Landroid/view/View$OnClickListener;

.field private mAppDropDownCloudAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

.field private mAppDropDownLocalAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

.field private mAppDropDownOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field mAppName:Ljava/lang/String;

.field private mAppSearchContainerBackUpOnClickListener:Landroid/view/View$OnClickListener;

.field private mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

.field private mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentTab:Ljava/lang/String;

.field private mDbHelper:Lcom/htc/app/FilePickerDBHelper;

.field private mDropboxText:Ljava/lang/String;

.field private mEditor:Landroid/widget/AutoCompleteTextView;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFavoriteDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

.field private mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private mFavoritesText:Ljava/lang/String;

.field private mFilePickerAct:Landroid/app/Activity;

.field private mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

.field private mFilePickerFavoritesFragment:Lcom/htc/app/FilePickerFavoritesFragment;

.field private mFilePickerLandingView:Landroid/view/View;

.field private mFilePickerMainView:Landroid/view/View;

.field private mFilePickerRecentFragment:Lcom/htc/app/FilePickerRecentFragment;

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mFileSorter:Lcom/htc/app/FileSorter;

.field private mFilter:[Ljava/lang/String;

.field private mHeaderOfFavoriteListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

.field private mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

.field private mHeaderOfTypeListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

.field private mHintText:Ljava/lang/String;

.field private mInitThread:Ljava/lang/Thread;

.field private mInitialTime:J

.field private mIsActionModeChoiceEnabled:Z

.field private mIsCloudDataSourceItemsEnabled:Z

.field private mIsCloudFolderPickerEnabled:Z

.field private mIsFavoriteStopScan:Z

.field private mIsFilePickerModeEnabled:Z

.field private mIsFolderPickerModeEnabled:Z

.field private mIsLocalDataSourceItemsEnabled:Z

.field private mIsOnlyShowCanWriteFolder:Z

.field private mIsRecentStopScan:Z

.field private mIsSearchMenuItemVisabled:Z

.field private mIsShowPath:Z

.field private mIsSortMenuItemVisabled:Z

.field private mIsTypeStopScan:Z

.field private mIsUsbConnectionMode:Z

.field private final mItemImageStr:Ljava/lang/String;

.field private final mItemTabTypeStr:Ljava/lang/String;

.field private final mItemTextStr:Ljava/lang/String;

.field private mOrientation:I

.field private mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private mRecentDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

.field private mRecentFiles:[Ljava/lang/String;

.field private mRecentFilesTime:[J

.field private mRecentText:Ljava/lang/String;

.field private mSdcardListener:Lcom/htc/app/FilePickerCore$SdcardListener;

.field mSelectedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedFolderItemInfoLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedItemInfoLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionType:I

.field private mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

.field private mSkyDriveText:Ljava/lang/String;

.field private mSortOrder:I

.field private mSortSelectedItem:I

.field private mSortType:I

.field private mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private mTypeDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

.field private mTypeText:Ljava/lang/String;

.field private mUsbConnetionViewMode:I

.field private notifyCloudExceptionRunnable:Ljava/lang/Runnable;

.field private notifyCloudFileDownloadFinishRunnable:Ljava/lang/Runnable;

.field private notifyCloudLoginCheckRunnable:Ljava/lang/Runnable;

.field private notifyDownloadFailRunnable:Ljava/lang/Runnable;

.field private notifyFavoriteDateChangeRunnable:Ljava/lang/Runnable;

.field private notifyFilePikcerInitialRunnable:Ljava/lang/Runnable;

.field private notifyFolderViewSelectTaskFinishRunnable:Ljava/lang/Runnable;

.field private notifyLoadFilesRunnable:Ljava/lang/Runnable;

.field private notifyReScanFilesRunnable:Ljava/lang/Runnable;

.field private notifyRecentDateChangeRunnable:Ljava/lang/Runnable;

.field offlineStringArray:[Ljava/lang/String;

.field offlineTabStringArray:[Ljava/lang/String;

.field onlineStringArray:[Ljava/lang/String;

.field onlineTabStringArray:[Ljava/lang/String;

.field private recent_view:Lcom/htc/app/FilePickerListView;

.field private showCloudPickerViewRunnable:Ljava/lang/Runnable;

.field private showLocalPickerViewRunnable:Ljava/lang/Runnable;

.field private showUsbConnectionPickerViewRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;-><init>()V

    .line 74
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->DEBUG:Z

    .line 75
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->localLOGV:Z

    .line 76
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->initLog:Z

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    .line 79
    iput v2, p0, Lcom/htc/app/FilePickerCore;->DEFAULT_SORT_TYPE:I

    .line 80
    iput v2, p0, Lcom/htc/app/FilePickerCore;->DEFAULT_SORT_ORDER:I

    .line 81
    const-string v0, "initial"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->INIT_TAG:Ljava/lang/String;

    .line 83
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsSortMenuItemVisabled:Z

    .line 86
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    .line 87
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    .line 103
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->gridItemBkg:Landroid/graphics/drawable/LayerDrawable;

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->handler:Landroid/os/Handler;

    .line 125
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->isSdcardRoot:Z

    .line 133
    iput v2, p0, Lcom/htc/app/FilePickerCore;->mSortSelectedItem:I

    .line 135
    iput v5, p0, Lcom/htc/app/FilePickerCore;->mOrientation:I

    .line 137
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    .line 140
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    .line 149
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerMainView:Landroid/view/View;

    .line 152
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerLandingView:Landroid/view/View;

    .line 201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/app/FilePickerCore;->mInitialTime:J

    .line 202
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    .line 272
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mRecentFilesTime:[J

    .line 273
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    .line 274
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    .line 275
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsActionModeChoiceEnabled:Z

    .line 276
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    .line 448
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/app/FilePickerCore$1;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerCore$1;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mInitThread:Ljava/lang/Thread;

    .line 645
    new-instance v0, Lcom/htc/app/FilePickerCore$2;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$2;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppBackUpOnClickListener:Landroid/view/View$OnClickListener;

    .line 654
    new-instance v0, Lcom/htc/app/FilePickerCore$3;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$3;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppSearchContainerBackUpOnClickListener:Landroid/view/View$OnClickListener;

    .line 670
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    .line 672
    new-instance v0, Lcom/htc/app/FilePickerCore$4;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$4;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 1091
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z

    .line 1092
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsOnlyShowCanWriteFolder:Z

    .line 1093
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsFolderPickerModeEnabled:Z

    .line 1094
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsFilePickerModeEnabled:Z

    .line 1125
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsShowPath:Z

    .line 1817
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    .line 1967
    const-string v0, "ItemImage"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mItemImageStr:Ljava/lang/String;

    .line 1968
    const-string v0, "ItemText"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mItemTextStr:Ljava/lang/String;

    .line 1969
    const-string v0, "ItemTabType"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mItemTabTypeStr:Ljava/lang/String;

    .line 2112
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    .line 2451
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/FilePickerCore;->mUsbConnetionViewMode:I

    .line 2904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    .line 2984
    new-instance v0, Lcom/htc/app/FilePickerCore$12;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$12;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 3028
    new-instance v0, Lcom/htc/app/FilePickerCore$13;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$13;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoriteDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 3149
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    .line 3156
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsRecentStopScan:Z

    .line 3157
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsFavoriteStopScan:Z

    .line 3168
    new-instance v0, Lcom/htc/app/FilePickerCore$14;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$14;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 3801
    iput v2, p0, Lcom/htc/app/FilePickerCore;->NOTIFY_RESCAN_FILES:I

    .line 3804
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/app/FilePickerCore;->NOTIFY_RECENT_DATA_CHANGE:I

    .line 3805
    iput v5, p0, Lcom/htc/app/FilePickerCore;->NOTIFY_FAVORITE_DATA_CHANGE:I

    .line 3806
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/app/FilePickerCore;->NOTIFY_FILEPICKER_INITIAL_TASK:I

    .line 3807
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/app/FilePickerCore;->SHOW_USB_CONNECTION_PICKER_VIEW_TASK:I

    .line 3808
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/app/FilePickerCore;->SHOW_CLOUD_PICKER_VIEW_TASK:I

    .line 3809
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/app/FilePickerCore;->SHOW_LOCAL_PICKER_VIEW_TASK:I

    .line 4296
    const-string v0, "onlyShowCanWriteFolder"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_ONLY_SHOW_CAN_WRITE_FOLDER:Ljava/lang/String;

    .line 4334
    const-string v0, "UsbConnectionMode"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_USB_CONNECTION_MODE:Ljava/lang/String;

    .line 4335
    const-string v0, "pref_key_filepicker_local_files_scope_type"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_SHOW_LOCAL_FILES_SCOPE:Ljava/lang/String;

    .line 4336
    const-string v0, "pref_key_filepicker_cloud_files_scope_type"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_SHOW_CLOUD_FILES_SCOPE:Ljava/lang/String;

    .line 4337
    const-string v0, "pref_key_filepicker_files_cloud_service_name"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_CLOUD_SERVICE_NAME:Ljava/lang/String;

    .line 4338
    const-string v0, "pref_key_filepicker_files_cloud_account_name"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_CLOUD_ACCOUNT_NAME:Ljava/lang/String;

    .line 4339
    const-string v0, "pref_key_filepicker_cloud_service_end_time"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_CLOUD_REFRESH_END_TIME:Ljava/lang/String;

    .line 4340
    const-string v0, "pref_key_filepicker_carousel_default_tab"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_CAROUSEL_DEFAULT_TAB:Ljava/lang/String;

    .line 4342
    const-string v0, "FilePickerPreference"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->FILE_PICKER_PREFERENCE:Ljava/lang/String;

    .line 4344
    const-string v0, "FOLDER_PICKER_MODE_ENABLED"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_FOLDER_PICKER_MODE_ENABLED:Ljava/lang/String;

    .line 4345
    const-string v0, "FILE_PICKER_MODE_ENABLED"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_FILE_PICKER_MODE_ENABLED:Ljava/lang/String;

    .line 4346
    const-string v0, "LocalDataSourceEnable"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_LOCAL_DATA_SOURCE_ENABLED:Ljava/lang/String;

    .line 4349
    const-string v0, "CloudServiceType"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_CLOUD_SERVICE_NAME_REQUEST:Ljava/lang/String;

    .line 4350
    const-string v0, "CloudServiceAccountName"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_CLOUD_SERVICE_ACCOUNT_REQUEST:Ljava/lang/String;

    .line 4351
    const-string v0, "CurrentAppAdapterIsLocalMode"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_CURRENT_ADAPTER_IS_LOCAL_MODE:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 6
    .parameter "activity"
    .parameter "context"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 176
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;-><init>()V

    .line 74
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->DEBUG:Z

    .line 75
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->localLOGV:Z

    .line 76
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->initLog:Z

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    .line 79
    iput v2, p0, Lcom/htc/app/FilePickerCore;->DEFAULT_SORT_TYPE:I

    .line 80
    iput v2, p0, Lcom/htc/app/FilePickerCore;->DEFAULT_SORT_ORDER:I

    .line 81
    const-string v0, "initial"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->INIT_TAG:Ljava/lang/String;

    .line 83
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsSortMenuItemVisabled:Z

    .line 86
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    .line 87
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    .line 103
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->gridItemBkg:Landroid/graphics/drawable/LayerDrawable;

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->handler:Landroid/os/Handler;

    .line 125
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->isSdcardRoot:Z

    .line 133
    iput v2, p0, Lcom/htc/app/FilePickerCore;->mSortSelectedItem:I

    .line 135
    iput v5, p0, Lcom/htc/app/FilePickerCore;->mOrientation:I

    .line 137
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    .line 140
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    .line 149
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerMainView:Landroid/view/View;

    .line 152
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerLandingView:Landroid/view/View;

    .line 201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/app/FilePickerCore;->mInitialTime:J

    .line 202
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    .line 272
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mRecentFilesTime:[J

    .line 273
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    .line 274
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    .line 275
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsActionModeChoiceEnabled:Z

    .line 276
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    .line 448
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/app/FilePickerCore$1;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerCore$1;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mInitThread:Ljava/lang/Thread;

    .line 645
    new-instance v0, Lcom/htc/app/FilePickerCore$2;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$2;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppBackUpOnClickListener:Landroid/view/View$OnClickListener;

    .line 654
    new-instance v0, Lcom/htc/app/FilePickerCore$3;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$3;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppSearchContainerBackUpOnClickListener:Landroid/view/View$OnClickListener;

    .line 670
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    .line 672
    new-instance v0, Lcom/htc/app/FilePickerCore$4;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$4;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 1091
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z

    .line 1092
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsOnlyShowCanWriteFolder:Z

    .line 1093
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsFolderPickerModeEnabled:Z

    .line 1094
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsFilePickerModeEnabled:Z

    .line 1125
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsShowPath:Z

    .line 1817
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    .line 1967
    const-string v0, "ItemImage"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mItemImageStr:Ljava/lang/String;

    .line 1968
    const-string v0, "ItemText"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mItemTextStr:Ljava/lang/String;

    .line 1969
    const-string v0, "ItemTabType"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mItemTabTypeStr:Ljava/lang/String;

    .line 2112
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    .line 2451
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/FilePickerCore;->mUsbConnetionViewMode:I

    .line 2904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    .line 2984
    new-instance v0, Lcom/htc/app/FilePickerCore$12;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$12;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 3028
    new-instance v0, Lcom/htc/app/FilePickerCore$13;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$13;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoriteDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 3149
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    .line 3156
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsRecentStopScan:Z

    .line 3157
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsFavoriteStopScan:Z

    .line 3168
    new-instance v0, Lcom/htc/app/FilePickerCore$14;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$14;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 3801
    iput v2, p0, Lcom/htc/app/FilePickerCore;->NOTIFY_RESCAN_FILES:I

    .line 3804
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/app/FilePickerCore;->NOTIFY_RECENT_DATA_CHANGE:I

    .line 3805
    iput v5, p0, Lcom/htc/app/FilePickerCore;->NOTIFY_FAVORITE_DATA_CHANGE:I

    .line 3806
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/app/FilePickerCore;->NOTIFY_FILEPICKER_INITIAL_TASK:I

    .line 3807
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/app/FilePickerCore;->SHOW_USB_CONNECTION_PICKER_VIEW_TASK:I

    .line 3808
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/app/FilePickerCore;->SHOW_CLOUD_PICKER_VIEW_TASK:I

    .line 3809
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/app/FilePickerCore;->SHOW_LOCAL_PICKER_VIEW_TASK:I

    .line 4296
    const-string v0, "onlyShowCanWriteFolder"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_ONLY_SHOW_CAN_WRITE_FOLDER:Ljava/lang/String;

    .line 4334
    const-string v0, "UsbConnectionMode"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_USB_CONNECTION_MODE:Ljava/lang/String;

    .line 4335
    const-string v0, "pref_key_filepicker_local_files_scope_type"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_SHOW_LOCAL_FILES_SCOPE:Ljava/lang/String;

    .line 4336
    const-string v0, "pref_key_filepicker_cloud_files_scope_type"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_SHOW_CLOUD_FILES_SCOPE:Ljava/lang/String;

    .line 4337
    const-string v0, "pref_key_filepicker_files_cloud_service_name"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_CLOUD_SERVICE_NAME:Ljava/lang/String;

    .line 4338
    const-string v0, "pref_key_filepicker_files_cloud_account_name"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_CLOUD_ACCOUNT_NAME:Ljava/lang/String;

    .line 4339
    const-string v0, "pref_key_filepicker_cloud_service_end_time"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_CLOUD_REFRESH_END_TIME:Ljava/lang/String;

    .line 4340
    const-string v0, "pref_key_filepicker_carousel_default_tab"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_CAROUSEL_DEFAULT_TAB:Ljava/lang/String;

    .line 4342
    const-string v0, "FilePickerPreference"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->FILE_PICKER_PREFERENCE:Ljava/lang/String;

    .line 4344
    const-string v0, "FOLDER_PICKER_MODE_ENABLED"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_FOLDER_PICKER_MODE_ENABLED:Ljava/lang/String;

    .line 4345
    const-string v0, "FILE_PICKER_MODE_ENABLED"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_FILE_PICKER_MODE_ENABLED:Ljava/lang/String;

    .line 4346
    const-string v0, "LocalDataSourceEnable"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_LOCAL_DATA_SOURCE_ENABLED:Ljava/lang/String;

    .line 4349
    const-string v0, "CloudServiceType"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_CLOUD_SERVICE_NAME_REQUEST:Ljava/lang/String;

    .line 4350
    const-string v0, "CloudServiceAccountName"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_CLOUD_SERVICE_ACCOUNT_REQUEST:Ljava/lang/String;

    .line 4351
    const-string v0, "CurrentAppAdapterIsLocalMode"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_CURRENT_ADAPTER_IS_LOCAL_MODE:Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerAct:Landroid/app/Activity;

    .line 178
    iput-object p2, p0, Lcom/htc/app/FilePickerCore;->mContext:Landroid/content/Context;

    .line 179
    return-void
.end method

.method private NotifyToDoTask(I)V
    .locals 10
    .parameter "what"

    .prologue
    const/4 v9, 0x1

    .line 3868
    packed-switch p1, :pswitch_data_0

    .line 4099
    :cond_0
    :goto_0
    return-void

    .line 3871
    :pswitch_0
    new-instance v5, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/app/FilePickerCore$24;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$24;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-direct {v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3877
    .local v5, performOnResultAndFinishThread:Ljava/lang/Thread;
    invoke-virtual {v5, v9}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 3878
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 3881
    .end local v5           #performOnResultAndFinishThread:Ljava/lang/Thread;
    :pswitch_1
    new-instance v7, Lcom/htc/app/FilePickerCore$25;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$25;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->showLocalPickerViewRunnable:Ljava/lang/Runnable;

    .line 3886
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 3887
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->showLocalPickerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3890
    :pswitch_2
    new-instance v7, Lcom/htc/app/FilePickerCore$26;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$26;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->showCloudPickerViewRunnable:Ljava/lang/Runnable;

    .line 3895
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 3896
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->showCloudPickerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3899
    :pswitch_3
    new-instance v7, Lcom/htc/app/FilePickerCore$27;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$27;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->showUsbConnectionPickerViewRunnable:Ljava/lang/Runnable;

    .line 3904
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 3905
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->showUsbConnectionPickerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3908
    :pswitch_4
    new-instance v7, Lcom/htc/app/FilePickerCore$28;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$28;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyFilePikcerInitialRunnable:Ljava/lang/Runnable;

    .line 3913
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 3914
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyFilePikcerInitialRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3917
    :pswitch_5
    new-instance v7, Lcom/htc/app/FilePickerCore$29;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$29;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyReScanFilesRunnable:Ljava/lang/Runnable;

    .line 3922
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 3923
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyReScanFilesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3927
    :pswitch_6
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/app/FilePickerCore$30;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$30;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3933
    .local v6, thread:Ljava/lang/Thread;
    invoke-virtual {v6, v9}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 3934
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 3935
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showProcessingPage()V

    .line 3936
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 3939
    .end local v6           #thread:Ljava/lang/Thread;
    :pswitch_7
    new-instance v7, Lcom/htc/app/FilePickerCore$31;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$31;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyCloudFileDownloadFinishRunnable:Ljava/lang/Runnable;

    .line 3953
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 3954
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyCloudFileDownloadFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3957
    :pswitch_8
    new-instance v7, Lcom/htc/app/FilePickerCore$32;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$32;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyRecentDateChangeRunnable:Ljava/lang/Runnable;

    .line 3963
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 3964
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyRecentDateChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3967
    :pswitch_9
    new-instance v7, Lcom/htc/app/FilePickerCore$33;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$33;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyFavoriteDateChangeRunnable:Ljava/lang/Runnable;

    .line 3973
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 3974
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyFavoriteDateChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3978
    :pswitch_a
    new-instance v7, Lcom/htc/app/FilePickerCore$34;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$34;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyDownloadFailRunnable:Ljava/lang/Runnable;

    .line 3987
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 3988
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyDownloadFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3991
    :pswitch_b
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getFilePickerUtil()Lcom/htc/app/FilePickerUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v4

    .line 3993
    .local v4, dataSourceType:I
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 3995
    :pswitch_c
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x20403cc

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4000
    :pswitch_d
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x20403cb

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4007
    .end local v4           #dataSourceType:I
    :pswitch_e
    new-instance v7, Lcom/htc/app/FilePickerCore$35;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$35;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyCloudLoginCheckRunnable:Ljava/lang/Runnable;

    .line 4026
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 4027
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4028
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyCloudLoginCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4029
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyCloudLoginCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4034
    :pswitch_f
    new-instance v7, Lcom/htc/app/FilePickerCore$36;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$36;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyCloudExceptionRunnable:Ljava/lang/Runnable;

    goto/16 :goto_0

    .line 4070
    :pswitch_10
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageAvailable()Z

    move-result v2

    .line 4071
    .local v2, bIntStorageAvailable:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageAvailable()Z

    move-result v0

    .line 4072
    .local v0, bExtStorageAvailable:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageShared()Z

    move-result v3

    .line 4073
    .local v3, bIntStorageShared:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageShared()Z

    move-result v1

    .line 4075
    .local v1, bExtStorageShared:Z
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 4076
    if-nez v3, :cond_1

    if-eqz v1, :cond_2

    .line 4077
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x20401f9

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4080
    :cond_2
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x20400a0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4086
    .end local v0           #bExtStorageAvailable:Z
    .end local v1           #bExtStorageShared:Z
    .end local v2           #bIntStorageAvailable:Z
    .end local v3           #bIntStorageShared:Z
    :pswitch_11
    new-instance v7, Lcom/htc/app/FilePickerCore$37;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$37;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyLoadFilesRunnable:Ljava/lang/Runnable;

    .line 4092
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 4093
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4094
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyLoadFilesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4095
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyLoadFilesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3868
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 3993
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/htc/app/FilePickerCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/app/FilePickerCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->hideSearchBar()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerCloudHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showSearchBar()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->performDropDownItemClick(Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerCloudHelper;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->checkCloudServiceDataSourceFromIntentRequest(Lcom/htc/app/FilePickerCloudHelper;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/app/FilePickerCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->showViewByTab(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/app/FilePickerCore;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/app/FilePickerCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->isFolderItemSelectedEnabled:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/app/FilePickerCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->isReturnCloudShareLinkEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/app/FilePickerCore;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/app/FilePickerCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/app/FilePickerCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/app/FilePickerCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/app/FilePickerCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/app/FilePickerCore;->gridItemSize:I

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/app/FilePickerCore;)Landroid/graphics/drawable/LayerDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->gridItemBkg:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/app/FilePickerCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->loadLocalDataSourceTypePreferences()I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/app/FilePickerCore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/htc/app/FilePickerCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchLocalPicker()V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mDropboxText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchCloudFilePicker()V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSkyDriveText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/app/FilePickerCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->checkHTCLandscapeEnabled(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerAppDropDownAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getAppDropDownLocalAdapter()Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/app/FilePickerCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->showNoSdCard(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->checkActionBarContainerBackUpEnabled()V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerDBHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialSharedPreferences()V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->hideDialog()V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/app/FilePickerCore;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->getFileCountString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCore;->setListViewHeaderText(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4602(Lcom/htc/app/FilePickerCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCore;->mIsRecentStopScan:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/htc/app/FilePickerCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCore;->mIsFavoriteStopScan:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/htc/app/FilePickerCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/htc/app/FilePickerCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FileSorter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/app/FilePickerCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->checkCloudServiceEnabledFromIntentRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/htc/app/FilePickerCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    return v0
.end method

.method static synthetic access$5002(Lcom/htc/app/FilePickerCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    return p1
.end method

.method static synthetic access$5100(Lcom/htc/app/FilePickerCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    return v0
.end method

.method static synthetic access$5102(Lcom/htc/app/FilePickerCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    return p1
.end method

.method static synthetic access$5200(Lcom/htc/app/FilePickerCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->notifyTextChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->notifyTextChanged()V

    return-void
.end method

.method static synthetic access$5400(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerListAdapter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->sort(Lcom/htc/app/FilePickerListAdapter;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/app/FilePickerCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCore;->saveSortPreferences(II)V

    return-void
.end method

.method static synthetic access$5702(Lcom/htc/app/FilePickerCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/app/FilePickerCore;->mSortSelectedItem:I

    return p1
.end method

.method static synthetic access$5800(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->performOnResultAndFinishTask()V

    return-void
.end method

.method static synthetic access$5900(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showLocalFilePickerView()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialSettings()V

    return-void
.end method

.method static synthetic access$6000(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showCloudPickerView()V

    return-void
.end method

.method static synthetic access$6100(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showUsbConnectionPickerView()V

    return-void
.end method

.method static synthetic access$6200(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->switchLayoutByPicker()V

    return-void
.end method

.method static synthetic access$6300(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->reStartToScan()V

    return-void
.end method

.method static synthetic access$6400(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->performDoneButtonOnClickListenerClick()V

    return-void
.end method

.method static synthetic access$6500(Lcom/htc/app/FilePickerCore;[Ljava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/FilePickerCore;->onResult([Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$6600(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->finish()V

    return-void
.end method

.method static synthetic access$6700(Lcom/htc/app/FilePickerCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    return v0
.end method

.method static synthetic access$6800(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchCloudFolderPicker()V

    return-void
.end method

.method static synthetic access$6900(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerAppDropDownAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getAppDropDownCloudAdapter()Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/app/FilePickerCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V

    return-void
.end method

.method static synthetic access$7000(Lcom/htc/app/FilePickerCore;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/htc/app/FilePickerCore;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->notifyCloudLoginCheckRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->doScanFiles()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerActionBarExtController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showLandingPage()V

    return-void
.end method

.method private addMoreExpanedObjectToList(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 1820
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 1821
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    .line 1823
    :cond_0
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1824
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1836
    :cond_1
    :goto_0
    return-void

    .line 1826
    :cond_2
    const/4 v1, 0x1

    .line 1827
    .local v1, isNeedNew:Z
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    .line 1828
    .local v2, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1829
    const/4 v1, 0x0

    goto :goto_1

    .line 1832
    .end local v2           #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_4
    if-eqz v1, :cond_1

    .line 1833
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkActionBarContainerBackUpEnabled()V
    .locals 2

    .prologue
    .line 2338
    const/4 v0, 0x0

    .line 2339
    .local v0, actionBarContainerBackUpEnabled:Z
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-eqz v1, :cond_1

    .line 2340
    const/4 v0, 0x1

    .line 2346
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerActionBarExtController;->setActionBarContainerBackUpEnabled(Z)V

    .line 2347
    return-void

    .line 2341
    :cond_1
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-eqz v1, :cond_2

    .line 2342
    const/4 v0, 0x0

    goto :goto_0

    .line 2343
    :cond_2
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-nez v1, :cond_0

    .line 2344
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkCloudServiceDataSourceFromIntentRequest(Lcom/htc/app/FilePickerCloudHelper;)Z
    .locals 8
    .parameter "filePickerCloudHelper"

    .prologue
    .line 573
    const/4 v4, 0x0

    .line 574
    .local v4, result:Z
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 576
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Invalid null argument. Please check a pair of CloudService and CloudServiceAccount from the intent settings"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 578
    :cond_0
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    if-nez v6, :cond_1

    .line 580
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Please check a pair of CloudService and CloudServiceAccount from the intent settings"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 582
    :cond_1
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 584
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    array-length v6, v6

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    array-length v7, v7

    if-eq v6, v7, :cond_2

    .line 585
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Please check a pair of CloudService and CloudServiceAccount from the intent settings"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 588
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_7

    .line 589
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    aget-object v6, v6, v1

    if-eqz v6, :cond_3

    const-string v6, ""

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 591
    :cond_3
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Invalid null argument for the account name of HtcCloudService"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 594
    :cond_4
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_6

    .line 595
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-static {v6}, Lcom/htc/app/FilePickerCloudHelper;->getServiceTypeFromString(Ljava/lang/String;)I

    move-result v5

    .line 597
    .local v5, serviceType:I
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    aget-object v0, v6, v1

    .line 598
    .local v0, accountId:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v6, v5, v0}, Lcom/htc/app/FilePickerCloudHelper;->isSignIn(ILjava/lang/String;)Z

    move-result v2

    .line 599
    .local v2, isSingIn:Z
    if-eqz v2, :cond_5

    .line 600
    const/4 v4, 0x0

    .line 594
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 602
    :cond_5
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Invalid behavior when launch CloudFilePicker, please do sign first."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 588
    .end local v0           #accountId:Ljava/lang/String;
    .end local v2           #isSingIn:Z
    .end local v5           #serviceType:I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    .end local v3           #j:I
    :cond_7
    if-eqz v4, :cond_8

    .line 608
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    .line 611
    .end local v1           #i:I
    :cond_8
    return v4
.end method

.method private checkCloudServiceEnabledFromIntentRequest()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 526
    const/4 v4, 0x0

    .line 527
    .local v4, result:Z
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 529
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Invalid null argument. Please check a pair of CloudService and CloudServiceAccount from the intent settings"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 531
    :cond_0
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    if-nez v7, :cond_1

    .line 533
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Please check a pair of CloudService and CloudServiceAccount from the intent settings"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 535
    :cond_1
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 537
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    array-length v7, v7

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    array-length v8, v8

    if-eq v7, v8, :cond_2

    .line 538
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Please check a pair of CloudService and CloudServiceAccount from the intent settings"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 541
    :cond_2
    const/4 v1, 0x0

    .line 542
    .local v1, hasAnyServiceAvialible:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_7

    .line 543
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    aget-object v7, v7, v2

    if-eqz v7, :cond_3

    const-string v7, ""

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 545
    :cond_3
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Invalid null argument for the service name of HtcCloudService"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 542
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 548
    :cond_5
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    aget-object v5, v7, v2

    .line 549
    .local v5, serviceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/app/FilePickerCloudHelper;->getServiceTypeFromString(Ljava/lang/String;)I

    move-result v0

    .line 551
    .local v0, dataSourceType:I
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/app/FilePickerCloudHelper;->isCloudServiceEnabled(I)Z

    move-result v3

    .line 553
    .local v3, isCloudServiceEnabled:Z
    if-eqz v3, :cond_4

    .line 554
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v7, v0}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 555
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v7, v0}, Lcom/htc/app/FilePickerUtil;->showDateSurceTypeCloudItemUiVisabled(I)V

    .line 556
    iput-boolean v6, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    .line 557
    iput-boolean v6, p0, Lcom/htc/app/FilePickerCore;->mIsActionModeChoiceEnabled:Z

    .line 558
    const/4 v1, 0x1

    move v4, v6

    .line 568
    .end local v0           #dataSourceType:I
    .end local v1           #hasAnyServiceAvialible:Z
    .end local v2           #i:I
    .end local v3           #isCloudServiceEnabled:Z
    .end local v4           #result:Z
    .end local v5           #serviceName:Ljava/lang/String;
    :cond_6
    :goto_1
    return v4

    .line 563
    .restart local v1       #hasAnyServiceAvialible:Z
    .restart local v2       #i:I
    .restart local v4       #result:Z
    :cond_7
    if-nez v1, :cond_6

    .line 564
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Not found any HtcCloudService avialible."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkHTCLandscapeEnabled(Z)V
    .locals 7
    .parameter "forceHTCLandscapeEnabled"

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x20200be

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1064
    .local v3, localLayout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x20200c2

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1065
    .local v0, cloudLayout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x20200c4

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1066
    .local v2, landingPageLayout:Landroid/view/View;
    const/4 v1, 0x0

    .line 1067
    .local v1, enableHTCLandscape:Z
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 1068
    const/4 v1, 0x0

    .line 1081
    :goto_0
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    if-eqz v5, :cond_1

    .line 1082
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    if-nez v1, :cond_0

    if-eqz p1, :cond_6

    :cond_0
    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/htc/app/FilePickerActionBarExtController;->enableHTCLandscape(Ljava/lang/Boolean;)V

    .line 1084
    :cond_1
    return-void

    .line 1069
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 1070
    const/4 v1, 0x0

    goto :goto_0

    .line 1071
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    .line 1072
    const v5, 0x20200bf

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1073
    .local v4, localVarouselView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 1074
    const/4 v1, 0x1

    goto :goto_0

    .line 1076
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1079
    .end local v4           #localVarouselView:Landroid/view/View;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 1082
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private checkShowNoLoginView(Landroid/view/View;)V
    .locals 9
    .parameter "filePickerFolderView"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1972
    const v5, 0x20200aa

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1973
    .local v2, emptyView:Landroid/widget/TextView;
    const v5, 0x20200af

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1974
    .local v4, noLoginLayout:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1975
    const v5, 0x20200ac

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1977
    .local v1, cloudDataSourceType:I
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/htc/app/FilePickerCloudHelper;->hasAnyAccountSignIn(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1978
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1979
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1981
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v1, v5}, Lcom/htc/app/FilePickerUtil;->setMoreExpandNoFileFoundText(Landroid/widget/TextView;ILandroid/content/Context;)V

    .line 1984
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v5, v1}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v0

    .line 1985
    .local v0, accounts:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lez v5, :cond_0

    .line 1986
    invoke-direct {p0, v1, v8}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v3

    .line 1988
    .local v3, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    if-eqz v3, :cond_0

    .line 1989
    aget-object v5, v0, v6

    invoke-virtual {v3, v5}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->setAccountId(Ljava/lang/String;)V

    .line 1998
    .end local v0           #accounts:[Ljava/lang/String;
    .end local v1           #cloudDataSourceType:I
    .end local v3           #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_0
    :goto_0
    return-void

    .line 1993
    .restart local v1       #cloudDataSourceType:I
    :cond_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1994
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1995
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private checkShowViewByTag(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 3745
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3746
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3753
    :cond_0
    :goto_0
    return-void

    .line 3748
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 3749
    .local v2, visibleTag:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 3750
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #visibleTag:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3751
    .local v1, visibility:I
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private clearHandler()V
    .locals 2

    .prologue
    .line 3819
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3820
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3821
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3822
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3823
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3824
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3825
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3826
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3827
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3828
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3829
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3830
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3831
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3832
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3833
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3834
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3836
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyReScanFilesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3837
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyCloudFileDownloadFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3838
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyFolderViewSelectTaskFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3839
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyFavoriteDateChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3840
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyFilePikcerInitialRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3841
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->showUsbConnectionPickerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3842
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->showCloudPickerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3843
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->showLocalPickerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3844
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyDownloadFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3845
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyCloudLoginCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3846
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyCloudExceptionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3847
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyLoadFilesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3849
    :cond_0
    return-void
.end method

.method private createBlockingProgressDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "messageId"

    .prologue
    const/4 v2, 0x0

    .line 3265
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3266
    .local v0, progressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3267
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 3268
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 3269
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 3270
    return-object v0
.end method

.method private createDownloadDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 3296
    const/4 v0, 0x0

    .line 3298
    .local v0, htcProgressDialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    if-eqz v1, :cond_0

    .line 3299
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->getProgressDialog(Landroid/app/Activity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    .line 3300
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 3302
    :cond_0
    return-object v0
.end method

.method private createDownloadFailDialog()Landroid/app/Dialog;
    .locals 8

    .prologue
    .line 3308
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3312
    :goto_0
    const v4, 0x20400eb

    .line 3313
    .local v4, titleId:I
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    .line 3314
    .local v1, dataSourceType:I
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getFilePickerUtil()Lcom/htc/app/FilePickerUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/app/FilePickerUtil;->getCloudExceptionType()I

    move-result v0

    .line 3315
    .local v0, cloudExceptionType:I
    const v3, 0x20403e7

    .line 3317
    .local v3, strId:I
    packed-switch v0, :pswitch_data_0

    .line 3341
    :pswitch_0
    packed-switch v1, :pswitch_data_1

    .line 3353
    :goto_1
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/htc/app/FilePickerCore$16;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$16;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    return-object v5

    .line 3309
    .end local v0           #cloudExceptionType:I
    .end local v1           #dataSourceType:I
    .end local v3           #strId:I
    .end local v4           #titleId:I
    :catch_0
    move-exception v2

    .line 3310
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 3320
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #cloudExceptionType:I
    .restart local v1       #dataSourceType:I
    .restart local v3       #strId:I
    .restart local v4       #titleId:I
    :pswitch_1
    const v3, 0x20403e6

    .line 3321
    goto :goto_1

    .line 3323
    :pswitch_2
    const v3, 0x20403e7

    .line 3324
    goto :goto_1

    .line 3326
    :pswitch_3
    const v3, 0x20403e8

    .line 3327
    goto :goto_1

    .line 3329
    :pswitch_4
    const v3, 0x20403e9

    .line 3330
    goto :goto_1

    .line 3332
    :pswitch_5
    const v3, 0x20403ea

    .line 3333
    goto :goto_1

    .line 3335
    :pswitch_6
    const v3, 0x20403eb

    .line 3336
    goto :goto_1

    .line 3338
    :pswitch_7
    const v3, 0x20403ec

    .line 3339
    goto :goto_1

    .line 3343
    :pswitch_8
    const v3, 0x20403e4

    .line 3344
    goto :goto_1

    .line 3346
    :pswitch_9
    const v3, 0x20403e5

    goto :goto_1

    .line 3317
    nop

    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3341
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private createFolderPathReturnDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 3362
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20403c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20403c6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/htc/app/FilePickerCore$18;

    invoke-direct {v2, p0}, Lcom/htc/app/FilePickerCore$18;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/app/FilePickerCore$17;

    invoke-direct {v2, p0}, Lcom/htc/app/FilePickerCore$17;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createMakeSureDialog(III)Landroid/app/Dialog;
    .locals 4
    .parameter "titleStringId"
    .parameter "messageStringId"
    .parameter "buttonStringId"

    .prologue
    .line 3283
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3284
    .local v1, title:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3286
    .local v0, message:Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/app/FilePickerCore$15;

    invoke-direct {v3, p0}, Lcom/htc/app/FilePickerCore$15;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v2, p3, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private createNetworkSettingDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 3447
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x2040278

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x204009e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040257

    new-instance v2, Lcom/htc/app/FilePickerCore$20;

    invoke-direct {v2, p0}, Lcom/htc/app/FilePickerCore$20;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040256

    new-instance v2, Lcom/htc/app/FilePickerCore$19;

    invoke-direct {v2, p0}, Lcom/htc/app/FilePickerCore$19;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createProgressDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "messageId"

    .prologue
    const/4 v2, 0x1

    .line 3274
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3275
    .local v0, progressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3276
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 3277
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 3278
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 3279
    return-object v0
.end method

.method private createSortDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 3470
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x204014e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x207001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/app/FilePickerCore;->mSortSelectedItem:I

    new-instance v3, Lcom/htc/app/FilePickerCore$22;

    invoke-direct {v3, p0}, Lcom/htc/app/FilePickerCore$22;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/app/FilePickerCore$21;

    invoke-direct {v2, p0}, Lcom/htc/app/FilePickerCore$21;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private dismissLoadingDialog()V
    .locals 3

    .prologue
    .line 3853
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3857
    :goto_0
    return-void

    .line 3854
    :catch_0
    move-exception v0

    .line 3855
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method private dismissProcessingDialog()V
    .locals 3

    .prologue
    .line 3861
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3865
    :goto_0
    return-void

    .line 3862
    :catch_0
    move-exception v0

    .line 3863
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method private doDestroy()V
    .locals 7

    .prologue
    .line 3210
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/app/FilePickerCore;->saveCarouselDefaultTabPreferences(Ljava/lang/String;)V

    .line 3211
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v4

    invoke-static {v4}, Lcom/htc/app/FilePickerUtil;->isLocalDataSourceType(I)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/htc/app/FilePickerCore;->saveCurrentDataSourceIsLocalPreferences(Z)V

    .line 3214
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v4, :cond_0

    .line 3215
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 3216
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    .line 3219
    :cond_0
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v4, :cond_1

    .line 3220
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 3221
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    .line 3224
    :cond_1
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v4, :cond_2

    .line 3225
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 3226
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    .line 3229
    :cond_2
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v4, :cond_3

    .line 3230
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->clear()V

    .line 3233
    :cond_3
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v4, :cond_4

    .line 3234
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->clear()V

    .line 3237
    :cond_4
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 3238
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    .line 3239
    .local v3, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getFolderAdapter()Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v1

    .line 3240
    .local v1, adapter:Lcom/htc/app/FilePickerFolderAdapter;
    if-eqz v1, :cond_5

    .line 3241
    invoke-virtual {v1}, Lcom/htc/app/FilePickerFolderAdapter;->close()V

    .line 3242
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getAccountId()Ljava/lang/String;

    move-result-object v0

    .line 3243
    .local v0, accountId:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FilePickerFolderAdapter(DataSourceType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v6}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", accountId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")==> object number:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3250
    .end local v0           #accountId:Ljava/lang/String;
    .end local v1           #adapter:Lcom/htc/app/FilePickerFolderAdapter;
    .end local v3           #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_6
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 3252
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_7
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    .line 3254
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v4, :cond_8

    .line 3255
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->clear()V

    .line 3256
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->close()V

    .line 3259
    :cond_8
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v4, :cond_9

    .line 3260
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->clearHandler()V

    .line 3262
    :cond_9
    return-void
.end method

.method private doScanFiles()V
    .locals 9

    .prologue
    .line 2819
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    .line 2822
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getFavoritesFragment()Lcom/htc/app/FilePickerFavoritesFragment;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2823
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getFavoritesFragment()Lcom/htc/app/FilePickerFavoritesFragment;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/htc/app/FilePickerFavoritesFragment;->NotifyToDoTask(I)V

    .line 2825
    :cond_0
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v5, :cond_1

    .line 2826
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerListAdapter;->startScanFiles()V

    .line 2829
    :cond_1
    :try_start_0
    new-instance v2, Lcom/htc/app/FileScanner;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/htc/app/FileScanner;-><init>(Landroid/content/Context;Lcom/htc/app/FilePickerListAdapter;[Ljava/lang/String;Lcom/htc/app/FilePickerDBHelper;)V

    .line 2831
    .local v2, fileScannerOfFavorites:Lcom/htc/app/FileScanner;
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v2, v5}, Lcom/htc/app/FileScanner;->setFilePickerUtil(Lcom/htc/app/FilePickerUtil;)V

    .line 2832
    new-instance v1, Ljava/lang/Thread;

    new-instance v5, Lcom/htc/app/FilePickerCore$10;

    invoke-direct {v5, p0, v2}, Lcom/htc/app/FilePickerCore$10;-><init>(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FileScanner;)V

    invoke-direct {v1, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2839
    .local v1, favoriteThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2846
    .end local v1           #favoriteThread:Ljava/lang/Thread;
    .end local v2           #fileScannerOfFavorites:Lcom/htc/app/FileScanner;
    :goto_0
    :try_start_1
    new-instance v3, Lcom/htc/app/FileScanner;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/htc/app/FileScanner;-><init>(Landroid/content/Context;Lcom/htc/app/FilePickerListAdapter;[Ljava/lang/String;Lcom/htc/app/FilePickerDBHelper;)V

    .line 2848
    .local v3, fileScannerOfRecent:Lcom/htc/app/FileScanner;
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v3, v5}, Lcom/htc/app/FileScanner;->setFilePickerUtil(Lcom/htc/app/FilePickerUtil;)V

    .line 2849
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mRecentFiles:[Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mRecentFilesTime:[J

    invoke-virtual {v3, v5, v6}, Lcom/htc/app/FileScanner;->setRecentFiles([Ljava/lang/String;[J)V

    .line 2850
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/htc/app/FilePickerCore$11;

    invoke-direct {v5, p0, v3}, Lcom/htc/app/FilePickerCore$11;-><init>(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FileScanner;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2857
    .local v4, recentThread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2862
    .end local v3           #fileScannerOfRecent:Lcom/htc/app/FileScanner;
    .end local v4           #recentThread:Ljava/lang/Thread;
    :goto_1
    return-void

    .line 2840
    :catch_0
    move-exception v0

    .line 2841
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "FilePickerWithDB"

    const-string v6, "#### favoriteThread exception"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2858
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2859
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v5, "FilePickerWithDB"

    const-string v6, "#### recentThread exception"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    .locals 6
    .parameter "dataSourceType"
    .parameter "accountId"

    .prologue
    .line 1839
    const/4 v4, 0x0

    .line 1840
    .local v4, result:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    if-nez v5, :cond_0

    .line 1841
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    .line 1842
    :cond_0
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1843
    packed-switch p1, :pswitch_data_0

    .line 1873
    :cond_1
    :pswitch_0
    return-object v4

    .line 1847
    :pswitch_1
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    .line 1848
    .local v3, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getDataSourceType()I

    move-result v2

    .line 1849
    .local v2, moreExpandDataSourceType:I
    if-ne v2, p1, :cond_2

    .line 1850
    move-object v4, v3

    goto :goto_0

    .line 1856
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #moreExpandDataSourceType:I
    .end local v3           #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :pswitch_2
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    .line 1857
    .restart local v3       #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getDataSourceType()I

    move-result v2

    .line 1858
    .restart local v2       #moreExpandDataSourceType:I
    if-ne v2, p1, :cond_3

    .line 1859
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getAccountId()Ljava/lang/String;

    move-result-object v1

    .line 1860
    .local v1, moreExpandAccountId:Ljava/lang/String;
    if-nez v1, :cond_4

    .line 1861
    move-object v4, v3

    goto :goto_1

    .line 1863
    :cond_4
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1864
    move-object v4, v3

    goto :goto_1

    .line 1843
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 3688
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3689
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3691
    :cond_0
    return-void
.end method

.method private getAppDropDownAdapter(Z)Lcom/htc/app/FilePickerAppDropDownAdapter;
    .locals 1
    .parameter "isLocal"

    .prologue
    .line 636
    const/4 v0, 0x0

    .line 637
    .local v0, adapter:Lcom/htc/app/FilePickerAppDropDownAdapter;
    if-eqz p1, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getAppDropDownLocalAdapter()Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v0

    .line 642
    :goto_0
    return-object v0

    .line 640
    :cond_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getAppDropDownCloudAdapter()Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method private getAppDropDownCloudAdapter()Lcom/htc/app/FilePickerAppDropDownAdapter;
    .locals 5

    .prologue
    .line 620
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownCloudAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    if-nez v0, :cond_0

    .line 621
    new-instance v0, Lcom/htc/app/FilePickerAppDropDownAdapter;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/app/FilePickerAppDropDownAdapter;-><init>(Landroid/content/Context;Lcom/htc/app/FilePickerUtil;Ljava/lang/Boolean;Lcom/htc/app/FilePickerCloudHelper;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownCloudAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownCloudAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    return-object v0
.end method

.method private getAppDropDownLocalAdapter()Lcom/htc/app/FilePickerAppDropDownAdapter;
    .locals 5

    .prologue
    .line 628
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownLocalAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    if-nez v0, :cond_0

    .line 629
    new-instance v0, Lcom/htc/app/FilePickerAppDropDownAdapter;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/app/FilePickerAppDropDownAdapter;-><init>(Landroid/content/Context;Lcom/htc/app/FilePickerUtil;Ljava/lang/Boolean;Lcom/htc/app/FilePickerCloudHelper;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownLocalAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownLocalAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    return-object v0
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mContext:Landroid/content/Context;

    .line 192
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method private getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;
    .locals 4

    .prologue
    .line 516
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Lcom/htc/app/FilePickerCloudHelper;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/app/FilePickerCloudHelper;-><init>(Landroid/content/Context;ZLcom/htc/app/FilePickerUtil;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    .line 520
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper;->isCloudHelperEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    return-object v0
.end method

.method private getFileCountString(I)Ljava/lang/String;
    .locals 4
    .parameter "count"

    .prologue
    .line 3409
    const/4 v0, 0x0

    .line 3410
    .local v0, text:Ljava/lang/String;
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 3411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20403d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3415
    :goto_0
    return-object v0

    .line 3413
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20403da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getFolderViewInstance()Landroid/view/ViewGroup;
    .locals 5

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 506
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x209002b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 510
    .local v0, filePickerFolderView:Landroid/view/ViewGroup;
    new-instance v2, Lcom/htc/widget/HtcOverlapLayout;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcOverlapLayout;-><init>(Landroid/content/Context;)V

    .line 511
    .local v2, overlayLayout:Lcom/htc/widget/HtcOverlapLayout;
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcOverlapLayout;->addView(Landroid/view/View;)V

    .line 512
    return-object v2
.end method

.method private getLandingView()Landroid/view/View;
    .locals 5

    .prologue
    .line 489
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerLandingView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 492
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x209002e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 495
    .local v0, filePickerLandingView:Landroid/view/View;
    new-instance v2, Lcom/htc/widget/HtcOverlapLayout;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcOverlapLayout;-><init>(Landroid/content/Context;)V

    .line 496
    .local v2, overlayLayout:Lcom/htc/widget/HtcOverlapLayout;
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcOverlapLayout;->addView(Landroid/view/View;)V

    .line 497
    iput-object v2, p0, Lcom/htc/app/FilePickerCore;->mFilePickerLandingView:Landroid/view/View;

    .line 499
    .end local v0           #filePickerLandingView:Landroid/view/View;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #overlayLayout:Lcom/htc/widget/HtcOverlapLayout;
    :cond_0
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerLandingView:Landroid/view/View;

    return-object v3
.end method

.method private getListAdapterSelectOutput(Lcom/htc/app/FilePickerListAdapter;)[Ljava/lang/String;
    .locals 5
    .parameter "adapter"

    .prologue
    .line 2907
    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/String;

    .line 2908
    .local v3, output:[Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 2909
    invoke-virtual {p1}, Lcom/htc/app/FilePickerListAdapter;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mSelectedItemInfoLists:Ljava/util/ArrayList;

    .line 2910
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mSelectedItemInfoLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 2911
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 2912
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mSelectedItemInfoLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/ItemInfo;

    .line 2913
    .local v2, itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->isCloudItem()Z

    move-result v1

    .line 2917
    .local v1, isCloudItem:Z
    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 2911
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2920
    .end local v1           #isCloudItem:Z
    .end local v2           #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/app/FilePickerListAdapter;->resetAllChecked()V

    .line 2922
    .end local v0           #i:I
    :cond_1
    return-object v3
.end method

.method private getMainView()Landroid/view/View;
    .locals 3

    .prologue
    .line 478
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerMainView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 479
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 482
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x209002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerMainView:Landroid/view/View;

    .line 484
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerMainView:Landroid/view/View;

    return-object v1
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private hideDialog()V
    .locals 3

    .prologue
    .line 2977
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2981
    :goto_0
    return-void

    .line 2978
    :catch_0
    move-exception v0

    .line 2979
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method private hideNoSdCard()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3756
    const v2, 0x20200bf

    invoke-direct {p0, v2}, Lcom/htc/app/FilePickerCore;->checkShowViewByTag(I)V

    .line 3757
    const v2, 0x20200c0

    invoke-direct {p0, v2}, Lcom/htc/app/FilePickerCore;->checkShowViewByTag(I)V

    .line 3758
    const v2, 0x20200c1

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 3760
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    if-eqz v2, :cond_1

    .line 3761
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v0

    .line 3762
    .local v0, dataSourceType:I
    invoke-static {v0}, Lcom/htc/app/FilePickerUtil;->isLocalDataSourceType(I)Z

    move-result v1

    .line 3763
    .local v1, isLocalDataSource:Z
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    if-eqz v2, :cond_2

    .line 3764
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v2, v4}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    .line 3771
    .end local v0           #dataSourceType:I
    .end local v1           #isLocalDataSource:Z
    :cond_1
    :goto_0
    return-void

    .line 3765
    .restart local v0       #dataSourceType:I
    .restart local v1       #isLocalDataSource:Z
    :cond_2
    iget-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    if-eqz v2, :cond_3

    .line 3766
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v2, v4}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_0

    .line 3768
    :cond_3
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerCore;->getAppDropDownAdapter(Z)Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_0
.end method

.method private hideSearchBar()V
    .locals 3

    .prologue
    .line 3699
    const-string v1, "Tab_Type"

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3700
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x20200cc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3701
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 3702
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_0

    .line 3703
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3704
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3710
    .end local v0           #view:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    if-eqz v1, :cond_1

    .line 3711
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerActionBarExtController;->hideSearchBarMode()V

    .line 3712
    :cond_1
    return-void
.end method

.method private initialActionBarExtCtrl()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 279
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    if-nez v1, :cond_0

    .line 280
    new-instance v1, Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/app/FilePickerActionBarExtController;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    .line 282
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mAppBackUpOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerActionBarExtController;->setActionBarContainerBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20403d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerActionBarExtController;->setMainTitle(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v1, v4}, Lcom/htc/app/FilePickerActionBarExtController;->setActionBarContainerBackUpEnabled(Z)V

    .line 289
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 290
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mAppSearchContainerBackUpOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerActionBarExtController;->setSearchContainerBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-direct {p0, v4}, Lcom/htc/app/FilePickerCore;->checkHTCLandscapeEnabled(Z)V

    .line 295
    .end local v0           #title:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initialCarouselFragment(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x20200bf

    const/16 v4, 0x8

    .line 248
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 250
    .local v1, fm:Landroid/app/FragmentManager;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->loadCarouselDefaultTabPreferences()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    .line 251
    if-nez p1, :cond_2

    .line 252
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 253
    .local v2, tx:Landroid/app/FragmentTransaction;
    new-instance v0, Lcom/htc/app/FilePickerCarousel;

    invoke-direct {v0}, Lcom/htc/app/FilePickerCarousel;-><init>()V

    .line 254
    .local v0, carousel:Lcom/htc/app/FilePickerCarousel;
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/htc/app/FilePickerCarousel;->setDefaultTab(Ljava/lang/String;)V

    .line 257
    :cond_0
    invoke-virtual {v0, v4}, Lcom/htc/app/FilePickerCarousel;->requestCarouselFeature(I)Z

    .line 258
    invoke-virtual {v2, v5, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 259
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 270
    .end local v2           #tx:Landroid/app/FragmentTransaction;
    :cond_1
    :goto_0
    return-void

    .line 261
    .end local v0           #carousel:Lcom/htc/app/FilePickerCarousel;
    :cond_2
    invoke-virtual {v1, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerCarousel;

    .line 263
    .restart local v0       #carousel:Lcom/htc/app/FilePickerCarousel;
    if-eqz v0, :cond_1

    .line 264
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 265
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/htc/app/FilePickerCarousel;->setDefaultTab(Ljava/lang/String;)V

    .line 267
    :cond_3
    invoke-virtual {v0, v4}, Lcom/htc/app/FilePickerCarousel;->requestCarouselFeature(I)Z

    goto :goto_0
.end method

.method private initialEmptyViewOfFavoritesView()V
    .locals 4

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x20200a8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 695
    .local v1, favoritesViewLayout:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 696
    const v2, 0x20200aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 697
    .local v0, emptyView:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    .end local v0           #emptyView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private initialEmptyViewOfRecentView()V
    .locals 4

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x20200c9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 703
    .local v1, recentViewLayout:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 704
    const v2, 0x20200aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 705
    .local v0, emptyView:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    .end local v0           #emptyView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private initialEmptyViewOfTypeView()V
    .locals 4

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x20200cb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 687
    .local v1, typeViewLayout:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 688
    const v2, 0x20200aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 689
    .local v0, emptyView:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    .end local v0           #emptyView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private initialIntentValue(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 346
    const-string v4, "FILE_PICKER_MODE_ENABLED"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsFilePickerModeEnabled:Z

    .line 349
    const-string v4, "FOLDER_PICKER_MODE_ENABLED"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsFolderPickerModeEnabled:Z

    .line 352
    const-string v4, "returnDropBoxShareLinkEnable"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->isReturnCloudShareLinkEnabled:Z

    .line 354
    const-string v4, "onlyShowCanWriteFolder"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsOnlyShowCanWriteFolder:Z

    .line 356
    const-string v4, "folderItemSelectEnabled"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->isFolderItemSelectedEnabled:Z

    .line 359
    const-string v4, "recent_files"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentFiles:[Ljava/lang/String;

    .line 360
    const-string v4, "recent_time"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentFilesTime:[J

    .line 362
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentFiles:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 363
    const-string v4, "FilePickerWithDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#### BUNDLE: mRecentFiles.length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mRecentFiles:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentFiles:[Ljava/lang/String;

    array-length v1, v4

    .line 365
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 366
    const-string v4, "FilePickerWithDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#### BUNDLE: mRecentFiles["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mRecentFiles:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    .end local v0           #i:I
    .end local v1           #length:I
    :cond_0
    const-string v4, "FilePickerWithDB"

    const-string v5, "#### BUNDLE: mRecentFiles == null "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_1
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentFilesTime:[J

    if-eqz v4, :cond_2

    .line 373
    const-string v4, "FilePickerWithDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#### BUNDLE: mRecentFilesTime.length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mRecentFilesTime:[J

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_1
    const-string v4, "LocalDataSourceEnable"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    .line 381
    const-string v4, "CloudFunctionEnabled"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    .line 384
    const-string v4, "CloudServiceType"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    .line 386
    const-string v4, "CloudServiceAccountName"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    .line 389
    const-string v4, "UsbConnectionMode"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/app/FilePickerCore;->mUsbConnetionViewMode:I

    .line 391
    iget v4, p0, Lcom/htc/app/FilePickerCore;->mUsbConnetionViewMode:I

    if-eq v4, v7, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    .line 392
    const-string v2, "selectionType"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    .line 393
    const-string v2, "hint_search_text"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerCore;->mHintText:Ljava/lang/String;

    .line 394
    const-string v2, "filter"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    .line 396
    const-string v2, "application_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerCore;->mAppName:Ljava/lang/String;

    .line 397
    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 398
    const-string v2, "title_string_id"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 399
    const-string v2, "no_file_found_text"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 400
    const-string v2, "root_path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 401
    const-string v2, "remove_file_mode"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 402
    const-string v2, "sort_type"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 403
    const-string v2, "sort_order"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 408
    return-void

    .line 376
    :cond_2
    const-string v4, "FilePickerWithDB"

    const-string v5, "#### BUNDLE: mRecentFilesTime == null "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v2, v3

    .line 391
    goto :goto_2
.end method

.method private initialLocalPickerAdapter()V
    .locals 7

    .prologue
    .line 1140
    new-instance v0, Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/app/FilePickerListAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerUtil;Lcom/htc/app/FilePickerDBHelper;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 1143
    new-instance v0, Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/app/FilePickerListAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerUtil;Lcom/htc/app/FilePickerDBHelper;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 1145
    new-instance v0, Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/app/FilePickerListAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerUtil;Lcom/htc/app/FilePickerDBHelper;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 1155
    new-instance v0, Lcom/htc/app/FileSorter;

    invoke-direct {v0}, Lcom/htc/app/FileSorter;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    .line 1157
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    iget v1, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortBy(I)V

    .line 1158
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    iget v1, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortOrder(I)V

    .line 1159
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setFileSorter(Lcom/htc/app/FileSorter;)V

    .line 1160
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    const-string v1, "Tab_Type"

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setAdapterType(Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    const-string v1, "Tab_Recent"

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setAdapterType(Ljava/lang/String;)V

    .line 1162
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    const-string v1, "Tab_Favorites"

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setAdapterType(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setFileSorter(Lcom/htc/app/FileSorter;)V

    .line 1166
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setFileSorter(Lcom/htc/app/FileSorter;)V

    .line 1170
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsShowPath:Z

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->groupByPath(Z)V

    .line 1171
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mTypeDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setDataSetChangedListener(Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;)V

    .line 1173
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mRecentDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setDataSetChangedListener(Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;)V

    .line 1174
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFavoriteDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setDataSetChangedListener(Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;)V

    .line 1178
    return-void
.end method

.method private initialLocalPickerScanner()V
    .locals 5

    .prologue
    .line 1184
    new-instance v0, Lcom/htc/app/FileScanner;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/app/FileScanner;-><init>(Landroid/content/Context;Lcom/htc/app/FilePickerListAdapter;[Ljava/lang/String;Lcom/htc/app/FilePickerDBHelper;)V

    .line 1187
    .local v0, fileScanner:Lcom/htc/app/FileScanner;
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v0, v1}, Lcom/htc/app/FileScanner;->setFilePickerUtil(Lcom/htc/app/FilePickerUtil;)V

    .line 1192
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/FileScanner;->setFilePickerCloudHelper(Lcom/htc/app/FilePickerCloudHelper;)V

    .line 1194
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerListAdapter;->setFileScanner(Lcom/htc/app/FileScanner;)V

    .line 1196
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v0, v1}, Lcom/htc/app/FileScanner;->setFileSorter(Lcom/htc/app/FileSorter;)V

    .line 1199
    return-void
.end method

.method private initialSettings()V
    .locals 3

    .prologue
    .line 2460
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->initStringDescription()V

    .line 2462
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/app/FilePickerCore;->mSelectedFiles:Ljava/util/ArrayList;

    .line 2466
    :try_start_0
    new-instance v1, Lcom/htc/app/FilePickerDBHelper;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/app/FilePickerDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2481
    :goto_0
    return-void

    .line 2467
    :catch_0
    move-exception v0

    .line 2468
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FilePickerWithDB"

    const-string v2, "#### INIT FilePickerDBHelper Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2470
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    goto :goto_0
.end method

.method private initialSharedPreferences()V
    .locals 3

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->loadCurrentDataSourceIsLocalPreferences()Z

    move-result v0

    .line 316
    .local v0, currentDataSourceIsLocal:Z
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-nez v1, :cond_0

    .line 317
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The LocalDataSourceItems and CloudDataSource could not disable at the same time!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_0
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-nez v1, :cond_3

    .line 320
    const/4 v0, 0x0

    .line 325
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->loadSortTypePreferences()I

    move-result v1

    iput v1, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    .line 326
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->loadSortOrderPreferences()I

    move-result v1

    iput v1, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    .line 327
    iget v1, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    iget v2, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-static {v1, v2}, Lcom/htc/app/FilePickerUtil;->getSortSelectedItemId(II)I

    move-result v1

    iput v1, p0, Lcom/htc/app/FilePickerCore;->mSortSelectedItem:I

    .line 332
    if-eqz v0, :cond_4

    .line 333
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->loadLocalDataSourceTypePreferences()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 337
    :goto_1
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 338
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    if-eqz v1, :cond_2

    .line 339
    const-string v1, "Tab_NoneCarousel"

    iput-object v1, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    .line 342
    :cond_2
    return-void

    .line 321
    :cond_3
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-nez v1, :cond_1

    .line 322
    const/4 v0, 0x1

    goto :goto_0

    .line 335
    :cond_4
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->loadCloudDataSourceTypePreferences()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    goto :goto_1
.end method

.method private launchCloudFilePicker()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1308
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showLoadingPage()V

    .line 1309
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->unregisterSdcardReceiver()V

    .line 1310
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v7}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v3

    .line 1311
    .local v3, dataSourceType:I
    const v7, 0x20200c3

    invoke-direct {p0, v7}, Lcom/htc/app/FilePickerCore;->removeAllChildView(I)V

    .line 1313
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->checkActionBarContainerBackUpEnabled()V

    .line 1314
    invoke-direct {p0, v9}, Lcom/htc/app/FilePickerCore;->checkHTCLandscapeEnabled(Z)V

    .line 1316
    iget-boolean v7, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    if-eqz v7, :cond_0

    .line 1317
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20403d1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1318
    .local v6, title:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v7, v6}, Lcom/htc/app/FilePickerActionBarExtController;->setMainTitle(Ljava/lang/String;)V

    .line 1319
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v7, v10}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 1320
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v7, v10}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    .line 1338
    .end local v6           #title:Ljava/lang/String;
    :goto_0
    const v7, 0x20200c4

    const/16 v8, 0x8

    invoke-direct {p0, v7, v8}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1339
    const v7, 0x20200c2

    invoke-direct {p0, v7, v9}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1340
    const/4 v7, 0x7

    invoke-direct {p0, v7}, Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V

    .line 1341
    return-void

    .line 1322
    :cond_0
    invoke-direct {p0, v3}, Lcom/htc/app/FilePickerCore;->setMainTitle(I)V

    .line 1323
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v1

    .line 1324
    .local v1, accountIds:[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1325
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 1326
    .local v0, accountId:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v7

    invoke-virtual {v7, v3, v0}, Lcom/htc/app/FilePickerCloudHelper;->isSignIn(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1327
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v7, v0}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 1334
    .end local v0           #accountId:Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    invoke-direct {p0, v9}, Lcom/htc/app/FilePickerCore;->getAppDropDownAdapter(Z)Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/app/FilePickerAppDropDownAdapter;->refreshAppListItems()V

    .line 1335
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-direct {p0, v9}, Lcom/htc/app/FilePickerCore;->getAppDropDownAdapter(Z)Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_0

    .line 1330
    .restart local v0       #accountId:Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_2
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v7, v10}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 1325
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private launchCloudFolderPicker()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1262
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showLoadingPage()V

    .line 1263
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->unregisterSdcardReceiver()V

    .line 1264
    const v8, 0x20200c4

    const/16 v9, 0x8

    invoke-direct {p0, v8, v9}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1265
    const v8, 0x20200c2

    invoke-direct {p0, v8, v10}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1266
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v8}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v3

    .line 1267
    .local v3, dataSourceType:I
    const v8, 0x20200c3

    invoke-direct {p0, v8}, Lcom/htc/app/FilePickerCore;->removeAllChildView(I)V

    .line 1269
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->checkActionBarContainerBackUpEnabled()V

    .line 1270
    invoke-direct {p0, v10}, Lcom/htc/app/FilePickerCore;->checkHTCLandscapeEnabled(Z)V

    .line 1272
    iget-boolean v8, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    if-eqz v8, :cond_0

    .line 1273
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x20403d1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1274
    .local v7, title:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v8, v7}, Lcom/htc/app/FilePickerActionBarExtController;->setMainTitle(Ljava/lang/String;)V

    .line 1275
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v8, v11}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 1276
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v8, v11}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    .line 1293
    .end local v7           #title:Ljava/lang/String;
    :goto_0
    new-instance v6, Lcom/htc/app/FilePickerCore$6;

    new-instance v8, Lcom/htc/app/FilePickerCore$5;

    invoke-direct {v8, p0}, Lcom/htc/app/FilePickerCore$5;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-direct {v6, p0, v8}, Lcom/htc/app/FilePickerCore$6;-><init>(Lcom/htc/app/FilePickerCore;Ljava/lang/Runnable;)V

    .line 1303
    .local v6, thread:Ljava/lang/Thread;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1304
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1305
    return-void

    .line 1278
    .end local v6           #thread:Ljava/lang/Thread;
    :cond_0
    invoke-direct {p0, v3}, Lcom/htc/app/FilePickerCore;->setMainTitle(I)V

    .line 1279
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v1

    .line 1280
    .local v1, accountIds:[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1281
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 1282
    .local v0, accountId:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v8

    invoke-virtual {v8, v3, v0}, Lcom/htc/app/FilePickerCloudHelper;->isSignIn(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1283
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v8, v0}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 1290
    .end local v0           #accountId:Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    invoke-direct {p0, v10}, Lcom/htc/app/FilePickerCore;->getAppDropDownAdapter(Z)Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/app/FilePickerAppDropDownAdapter;->refreshAppListItems()V

    .line 1291
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-direct {p0, v10}, Lcom/htc/app/FilePickerCore;->getAppDropDownAdapter(Z)Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_0

    .line 1286
    .restart local v0       #accountId:Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_2
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v8, v11}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 1281
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private launchLocalPicker()V
    .locals 2

    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showLoadingPage()V

    .line 1348
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->registerSdcardReceiver()V

    .line 1351
    const v0, 0x20200c4

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1354
    const v0, 0x20200be

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1357
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialLocalPickerAdapter()V

    .line 1360
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialLocalPickerScanner()V

    .line 1363
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showLocalFilePickerView()V

    .line 1365
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->loadFiles()V

    .line 1366
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 1367
    return-void
.end method

.method private launchUsbConnectionPicker()V
    .locals 2

    .prologue
    .line 1370
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showLoadingPage()V

    .line 1372
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->registerSdcardReceiver()V

    .line 1373
    const v0, 0x20200c4

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1374
    const v0, 0x20200be

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1375
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V

    .line 1376
    return-void
.end method

.method private loadCarouselDefaultTabPreferences()Ljava/lang/String;
    .locals 5

    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "FilePickerPreference"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 935
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_filepicker_carousel_default_tab"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method private loadCloudDataSourceTypePreferences()I
    .locals 6

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "FilePickerPreference"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 942
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/FilePickerCloudHelper;->getCloudDefaultDateSourceType()I

    move-result v1

    .line 943
    .local v1, defaultCloudDateSourceType:I
    const-string v3, "pref_key_filepicker_cloud_files_scope_type"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 946
    .local v0, dataSourceType:I
    return v0
.end method

.method private loadCurrentDataSourceIsLocalPreferences()Z
    .locals 4

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "FilePickerPreference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 898
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "CurrentAppAdapterIsLocalMode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private loadFiles()V
    .locals 8

    .prologue
    const v7, 0x20400a0

    const v6, 0x20401f9

    const/16 v5, 0xf

    .line 2865
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageAvailable()Z

    move-result v2

    .line 2866
    .local v2, bInternalStorageAvailable:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageAvailable()Z

    move-result v0

    .line 2868
    .local v0, bExternalStorageAvailable:Z
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 2900
    :goto_0
    return-void

    .line 2870
    :sswitch_0
    if-eqz v2, :cond_0

    .line 2871
    invoke-direct {p0, v5}, Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V

    goto :goto_0

    .line 2873
    :cond_0
    invoke-direct {p0, v6}, Lcom/htc/app/FilePickerCore;->showNoSdCard(I)V

    goto :goto_0

    .line 2877
    :sswitch_1
    if-eqz v0, :cond_1

    .line 2878
    invoke-direct {p0, v5}, Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V

    goto :goto_0

    .line 2880
    :cond_1
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageShared()Z

    move-result v1

    .line 2881
    .local v1, bExternalStorageShared:Z
    if-eqz v1, :cond_2

    .line 2882
    invoke-direct {p0, v6}, Lcom/htc/app/FilePickerCore;->showNoSdCard(I)V

    goto :goto_0

    .line 2884
    :cond_2
    invoke-direct {p0, v7}, Lcom/htc/app/FilePickerCore;->showNoSdCard(I)V

    goto :goto_0

    .line 2888
    .end local v1           #bExternalStorageShared:Z
    :sswitch_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_4

    .line 2889
    :cond_3
    invoke-direct {p0, v5}, Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V

    goto :goto_0

    .line 2891
    :cond_4
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageShared()Z

    move-result v1

    .line 2892
    .restart local v1       #bExternalStorageShared:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageShared()Z

    move-result v3

    .line 2893
    .local v3, bInternalStorageShared:Z
    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    .line 2894
    :cond_5
    invoke-direct {p0, v6}, Lcom/htc/app/FilePickerCore;->showNoSdCard(I)V

    goto :goto_0

    .line 2896
    :cond_6
    invoke-direct {p0, v7}, Lcom/htc/app/FilePickerCore;->showNoSdCard(I)V

    goto :goto_0

    .line 2868
    :sswitch_data_0
    .sparse-switch
        -0x9 -> :sswitch_2
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method private loadLocalDataSourceTypePreferences()I
    .locals 6

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "FilePickerPreference"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 911
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->getLocalDefaultDateSourceType()I

    move-result v1

    .line 912
    .local v1, defaultDateSourceType:I
    const-string v3, "pref_key_filepicker_local_files_scope_type"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 915
    .local v0, dateSourceType:I
    return v0
.end method

.method private loadSortOrderPreferences()I
    .locals 5

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "FilePickerPreference"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 967
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "sort_order"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 968
    .local v1, sortOrder:I
    return v1
.end method

.method private loadSortTypePreferences()I
    .locals 5

    .prologue
    .line 958
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "FilePickerPreference"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 960
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "sort_type"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 961
    .local v1, sortType:I
    return v1
.end method

.method private notifyTextChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3431
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x20200cc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerListView;

    .line 3433
    .local v0, typeListView:Lcom/htc/app/FilePickerListView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_0

    .line 3434
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/htc/app/FilePickerListView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 3436
    :cond_0
    return-void
.end method

.method private notifyTextChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"

    .prologue
    const/4 v3, 0x0

    .line 3439
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x20200cc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerListView;

    .line 3441
    .local v0, typeListView:Lcom/htc/app/FilePickerListView;
    if-eqz v0, :cond_0

    .line 3442
    invoke-virtual {v0, p1, v3, v3, v3}, Lcom/htc/app/FilePickerListView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 3444
    :cond_0
    return-void
.end method

.method private onResult([Ljava/lang/String;II)V
    .locals 1
    .parameter "output"
    .parameter "sortType"
    .parameter "sortOrder"

    .prologue
    .line 3382
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/FilePickerActivity;->onResult([Ljava/lang/String;II)V

    .line 3383
    return-void
.end method

.method private performAllViewActionModeFinish()V
    .locals 8

    .prologue
    .line 2001
    const/4 v6, 0x3

    new-array v1, v6, [Lcom/htc/app/FilePickerListAdapter;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    aput-object v7, v1, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    aput-object v7, v1, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    aput-object v7, v1, v6

    .line 2002
    .local v1, adapters:[Lcom/htc/app/FilePickerListAdapter;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/app/FilePickerListAdapter;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 2003
    .local v0, adapter:Lcom/htc/app/FilePickerListAdapter;
    if-eqz v0, :cond_0

    .line 2004
    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->resetAllChecked()V

    .line 2005
    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChanged()V

    .line 2006
    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->performActionModeFinish()V

    .line 2002
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2009
    .end local v0           #adapter:Lcom/htc/app/FilePickerListAdapter;
    :cond_1
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2010
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    .line 2011
    .local v5, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    invoke-virtual {v5}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getFolderAdapter()Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v0

    .line 2012
    .local v0, adapter:Lcom/htc/app/FilePickerFolderAdapter;
    if-eqz v0, :cond_2

    .line 2013
    invoke-virtual {v0}, Lcom/htc/app/FilePickerFolderAdapter;->resetAllChecked()V

    .line 2014
    invoke-virtual {v0}, Lcom/htc/app/FilePickerFolderAdapter;->notifyDataSetChanged()V

    .line 2015
    invoke-virtual {v0}, Lcom/htc/app/FilePickerFolderAdapter;->performActionModeFinish()V

    goto :goto_1

    .line 2019
    .end local v0           #adapter:Lcom/htc/app/FilePickerFolderAdapter;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_3
    return-void
.end method

.method private performDoneButtonOnClickListenerClick()V
    .locals 7

    .prologue
    .line 2927
    iget v5, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2929
    :cond_0
    const/4 v4, 0x0

    .line 2930
    .local v4, output:[Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v5, :cond_1

    .line 2931
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 2933
    :cond_1
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v5, :cond_2

    .line 2934
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 2935
    :cond_2
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v5, :cond_3

    .line 2936
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 2938
    :cond_3
    const-string v5, "Tab_Recent"

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2939
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0, v5}, Lcom/htc/app/FilePickerCore;->getListAdapterSelectOutput(Lcom/htc/app/FilePickerListAdapter;)[Ljava/lang/String;

    move-result-object v4

    .line 2940
    iget v5, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    iget v6, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/app/FilePickerCore;->onResult([Ljava/lang/String;II)V

    .line 2941
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->finish()V

    .line 2973
    .end local v4           #output:[Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .line 2942
    .restart local v4       #output:[Ljava/lang/String;
    :cond_5
    const-string v5, "Tab_Favorites"

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2943
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0, v5}, Lcom/htc/app/FilePickerCore;->getListAdapterSelectOutput(Lcom/htc/app/FilePickerListAdapter;)[Ljava/lang/String;

    move-result-object v4

    .line 2944
    iget v5, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    iget v6, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/app/FilePickerCore;->onResult([Ljava/lang/String;II)V

    .line 2945
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->finish()V

    goto :goto_0

    .line 2946
    :cond_6
    const-string v5, "Tab_Type"

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2947
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0, v5}, Lcom/htc/app/FilePickerCore;->getListAdapterSelectOutput(Lcom/htc/app/FilePickerListAdapter;)[Ljava/lang/String;

    move-result-object v4

    .line 2948
    iget v5, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    iget v6, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/app/FilePickerCore;->onResult([Ljava/lang/String;II)V

    .line 2949
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->finish()V

    goto :goto_0

    .line 2952
    :cond_7
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    .line 2953
    .local v1, dataSourceType:I
    const/4 v3, 0x0

    .line 2954
    .local v3, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v5, v1}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v0

    .line 2955
    .local v0, accounts:[Ljava/lang/String;
    if-eqz v0, :cond_a

    array-length v5, v0

    if-lez v5, :cond_a

    .line 2956
    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-direct {p0, v1, v5}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v3

    .line 2960
    :goto_1
    const/4 v2, 0x0

    .line 2961
    .local v2, moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    if-eqz v3, :cond_8

    .line 2962
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getFolderAdapter()Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v2

    .line 2964
    :cond_8
    invoke-virtual {v2}, Lcom/htc/app/FilePickerFolderAdapter;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    .line 2965
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    if-nez v5, :cond_9

    .line 2966
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    .line 2968
    :cond_9
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->performOnResultAndFinishTask()V

    .line 2969
    if-eqz v2, :cond_4

    .line 2970
    invoke-virtual {v2}, Lcom/htc/app/FilePickerFolderAdapter;->resetAllChecked()V

    goto :goto_0

    .line 2958
    .end local v2           #moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    :cond_a
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v3

    goto :goto_1
.end method

.method private performDropDownItemClick(Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;)V
    .locals 4
    .parameter "appListItem"

    .prologue
    const/4 v3, 0x0

    .line 713
    invoke-virtual {p1}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->getDataSourceType()I

    move-result v0

    .line 715
    .local v0, itemDataSourceType:I
    packed-switch v0, :pswitch_data_0

    .line 762
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 719
    :pswitch_1
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 721
    const-string v1, "Tab_Type"

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialEmptyViewOfTypeView()V

    .line 724
    :cond_1
    const-string v1, "Tab_Favorites"

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 725
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialEmptyViewOfFavoritesView()V

    .line 727
    :cond_2
    const-string v1, "Tab_Recent"

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 728
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialEmptyViewOfRecentView()V

    .line 730
    :cond_3
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 731
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->setMainTitle(I)V

    .line 732
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->saveLocalDataSourceTypePreferences(I)V

    .line 733
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchLocalPicker()V

    goto :goto_0

    .line 738
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->setMainTitle(I)V

    .line 739
    invoke-virtual {p1}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->isSignIn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 741
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 744
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->getSubTextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/app/FilePickerCloudHelper;->isSignIn(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 746
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {p1}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->getSubTextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 755
    :goto_1
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 756
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->saveCloudDataSourceTypePreferences(I)V

    .line 757
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchCloudFilePicker()V

    goto :goto_0

    .line 748
    :cond_4
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 751
    :cond_5
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 752
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerCloudHelper;->signIn(I)V

    .line 753
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getAppDropDownCloudAdapter()Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerAppDropDownAdapter;->refreshAppListItems()V

    goto :goto_1

    .line 715
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private performOnResultAndFinishTask()V
    .locals 15

    .prologue
    .line 851
    const/4 v10, 0x0

    .line 852
    .local v10, output:[Ljava/lang/String;
    iget-object v13, p0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    monitor-enter v13

    .line 853
    :try_start_0
    iget-object v12, p0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 854
    const/4 v6, 0x0

    .line 855
    .local v6, i:I
    iget-object v12, p0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 856
    .local v11, size:I
    iget-object v12, p0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    const/4 v14, 0x0

    new-array v14, v14, [Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/app/FolderItemInfo;

    .line 858
    .local v5, folderItemInfos:[Lcom/htc/app/FolderItemInfo;
    new-array v10, v11, [Ljava/lang/String;

    .line 859
    if-eqz v5, :cond_3

    .line 860
    move-object v1, v5

    .local v1, arr$:[Lcom/htc/app/FolderItemInfo;
    array-length v9, v1

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v4, v1, v7

    .line 861
    .local v4, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {v4}, Lcom/htc/app/FolderItemInfo;->isCloudItem()Z

    move-result v8

    .line 862
    .local v8, isCloudItem:Z
    iget-boolean v12, p0, Lcom/htc/app/FilePickerCore;->isReturnCloudShareLinkEnabled:Z

    if-eqz v12, :cond_0

    if-eqz v8, :cond_0

    .line 863
    invoke-virtual {v4}, Lcom/htc/app/FolderItemInfo;->getItemDataSourceType()I

    move-result v2

    .line 864
    .local v2, cloudDataSourceType:I
    invoke-virtual {v4}, Lcom/htc/app/FolderItemInfo;->getCloudPath()Ljava/lang/String;

    move-result-object v3

    .line 865
    .local v3, cloudPath:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/app/FolderItemInfo;->getAccountId()Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, accountId:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v12

    invoke-virtual {v12, v2, v3, v0}, Lcom/htc/app/FilePickerCloudHelper;->getCloudShareLink(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v6

    .line 879
    .end local v0           #accountId:Ljava/lang/String;
    .end local v2           #cloudDataSourceType:I
    .end local v3           #cloudPath:Ljava/lang/String;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 860
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 869
    :cond_0
    iget-boolean v12, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    if-eqz v12, :cond_1

    .line 870
    invoke-virtual {v4}, Lcom/htc/app/FolderItemInfo;->getCloudPath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v6

    goto :goto_1

    .line 883
    .end local v1           #arr$:[Lcom/htc/app/FolderItemInfo;
    .end local v4           #folderItemInfo:Lcom/htc/app/FolderItemInfo;
    .end local v5           #folderItemInfos:[Lcom/htc/app/FolderItemInfo;
    .end local v6           #i:I
    .end local v7           #i$:I
    .end local v8           #isCloudItem:Z
    .end local v9           #len$:I
    .end local v11           #size:I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 872
    .restart local v1       #arr$:[Lcom/htc/app/FolderItemInfo;
    .restart local v4       #folderItemInfo:Lcom/htc/app/FolderItemInfo;
    .restart local v5       #folderItemInfos:[Lcom/htc/app/FolderItemInfo;
    .restart local v6       #i:I
    .restart local v7       #i$:I
    .restart local v8       #isCloudItem:Z
    .restart local v9       #len$:I
    .restart local v11       #size:I
    :cond_1
    :try_start_1
    iget v12, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_2

    .line 873
    invoke-virtual {v4}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v6

    goto :goto_1

    .line 875
    :cond_2
    invoke-virtual {v4}, Lcom/htc/app/FolderItemInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v6

    goto :goto_1

    .line 883
    .end local v1           #arr$:[Lcom/htc/app/FolderItemInfo;
    .end local v4           #folderItemInfo:Lcom/htc/app/FolderItemInfo;
    .end local v5           #folderItemInfos:[Lcom/htc/app/FolderItemInfo;
    .end local v6           #i:I
    .end local v7           #i$:I
    .end local v8           #isCloudItem:Z
    .end local v9           #len$:I
    .end local v11           #size:I
    :cond_3
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 884
    iget v12, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    iget v13, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-direct {p0, v10, v12, v13}, Lcom/htc/app/FilePickerCore;->onResult([Ljava/lang/String;II)V

    .line 885
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->finish()V

    .line 886
    return-void
.end method

.method private reStartToScan()V
    .locals 0

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->doStop()V

    .line 1129
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->doDestroy()V

    .line 1131
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->switchLayoutByPicker()V

    .line 1132
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 1134
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->doStart()V

    .line 1135
    return-void
.end method

.method private registerSdcardReceiver()V
    .locals 3

    .prologue
    .line 2425
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mSdcardListener:Lcom/htc/app/FilePickerCore$SdcardListener;

    if-nez v1, :cond_0

    .line 2426
    new-instance v1, Lcom/htc/app/FilePickerCore$SdcardListener;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerCore$SdcardListener;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v1, p0, Lcom/htc/app/FilePickerCore;->mSdcardListener:Lcom/htc/app/FilePickerCore$SdcardListener;

    .line 2427
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2428
    .local v0, sdFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2429
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2430
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2431
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2432
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2433
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2434
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2435
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2436
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2437
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2438
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2439
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2440
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mSdcardListener:Lcom/htc/app/FilePickerCore$SdcardListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2442
    .end local v0           #sdFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private removeAllChildView(I)V
    .locals 3
    .parameter "parentResId"

    .prologue
    .line 1960
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1961
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1962
    .local v0, childCount:I
    if-lez v0, :cond_0

    .line 1963
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1965
    :cond_0
    return-void
.end method

.method private saveCarouselDefaultTabPreferences(Ljava/lang/String;)V
    .locals 2
    .parameter "currentTab"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_key_filepicker_carousel_default_tab"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 928
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 930
    :cond_0
    return-void
.end method

.method private saveCloudDataSourceTypePreferences(I)V
    .locals 2
    .parameter "dataSourceType"

    .prologue
    .line 919
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_key_filepicker_cloud_files_scope_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 921
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 923
    :cond_0
    return-void
.end method

.method private saveCurrentDataSourceIsLocalPreferences(Z)V
    .locals 2
    .parameter "isLocal"

    .prologue
    .line 902
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "CurrentAppAdapterIsLocalMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 904
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 906
    :cond_0
    return-void
.end method

.method private saveLocalDataSourceTypePreferences(I)V
    .locals 2
    .parameter "showFilesScope"

    .prologue
    .line 889
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_key_filepicker_local_files_scope_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 891
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 893
    :cond_0
    return-void
.end method

.method private saveSortPreferences(II)V
    .locals 2
    .parameter "sortType"
    .parameter "sortOrder"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sort_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 952
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sort_order"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 953
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 955
    :cond_0
    return-void
.end method

.method private setListViewHeaderText(ILjava/lang/String;)V
    .locals 3
    .parameter "resId"
    .parameter "text"

    .prologue
    .line 3114
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FilePickerListView;

    .line 3115
    .local v1, listView:Lcom/htc/app/FilePickerListView;
    if-eqz v1, :cond_0

    .line 3116
    invoke-virtual {v1}, Lcom/htc/app/FilePickerListView;->getHeaderViewsCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 3117
    const v2, 0x20200c6

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemSeparator;

    .line 3119
    .local v0, htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 3122
    .end local v0           #htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    :cond_0
    return-void
.end method

.method private setMainTitle(I)V
    .locals 4
    .parameter "dataSourceType"

    .prologue
    .line 799
    const v1, 0x20403c0

    .line 800
    .local v1, titleId:I
    const/4 v2, 0x0

    .line 802
    .local v2, updated:Z
    packed-switch p1, :pswitch_data_0

    .line 829
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_0

    .line 830
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, title:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 832
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v3, v0}, Lcom/htc/app/FilePickerActionBarExtController;->setMainTitle(Ljava/lang/String;)V

    .line 835
    .end local v0           #title:Ljava/lang/String;
    :cond_0
    return-void

    .line 804
    :pswitch_1
    const v1, 0x20403c4

    .line 805
    const/4 v2, 0x1

    .line 806
    goto :goto_0

    .line 808
    :pswitch_2
    sget-boolean v3, Lcom/htc/app/FilePickerUtil;->IsTabletDevice:Z

    if-eqz v3, :cond_1

    .line 809
    const v1, 0x20403d6

    .line 813
    :goto_1
    const/4 v2, 0x1

    .line 814
    goto :goto_0

    .line 811
    :cond_1
    const v1, 0x20403d7

    goto :goto_1

    .line 816
    :pswitch_3
    const v1, 0x20403c1

    .line 817
    const/4 v2, 0x1

    .line 818
    goto :goto_0

    .line 820
    :pswitch_4
    const v1, 0x20403c2

    .line 821
    const/4 v2, 0x1

    .line 822
    goto :goto_0

    .line 824
    :pswitch_5
    const v1, 0x20403bf

    .line 825
    const/4 v2, 0x1

    goto :goto_0

    .line 802
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setMenuItemVisibled(Landroid/view/Menu;Z)V
    .locals 3
    .parameter "menu"
    .parameter "visibled"

    .prologue
    .line 2712
    if-eqz p1, :cond_0

    .line 2713
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    .line 2714
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2715
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2716
    .local v2, menuItem:Landroid/view/MenuItem;
    invoke-interface {v2, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2714
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2719
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #menuItem:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method private setViewToMainLayoutAndShow(ILandroid/view/View;)V
    .locals 6
    .parameter "parentResId"
    .parameter "childView"

    .prologue
    const/4 v5, 0x0

    .line 1464
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1465
    .local v3, viewParent:Landroid/view/ViewParent;
    if-eqz v3, :cond_0

    move-object v2, v3

    .line 1466
    check-cast v2, Landroid/view/ViewGroup;

    .line 1467
    .local v2, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1470
    .end local v2           #viewGroup:Landroid/view/ViewGroup;
    :cond_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getMainView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1471
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1472
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 1473
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1474
    :cond_1
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1475
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1480
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v5}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1481
    return-void

    .line 1478
    :cond_3
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setViewVisibilityAndTag(II)V
    .locals 4
    .parameter "resId"
    .parameter "visibility"

    .prologue
    .line 3715
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3716
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3724
    :cond_0
    :goto_0
    return-void

    .line 3718
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 3719
    .local v1, viewVisibility:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3720
    .local v2, visibleTag:Ljava/lang/Integer;
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3721
    if-eq v1, p2, :cond_0

    .line 3722
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showCloudPickerView()V
    .locals 13

    .prologue
    .line 1877
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v7

    .line 1882
    .local v7, dataSourceType:I
    const/4 v11, 0x0

    .line 1883
    .local v11, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v1, v7}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v6

    .line 1884
    .local v6, accounts:[Ljava/lang/String;
    if-eqz v6, :cond_3

    array-length v1, v6

    if-lez v1, :cond_3

    .line 1885
    const/4 v1, 0x0

    aget-object v1, v6, v1

    invoke-direct {p0, v7, v1}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v11

    .line 1889
    :goto_0
    const/4 v4, 0x0

    .line 1890
    .local v4, filePickerFolderView:Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getFolderViewInstance()Landroid/view/ViewGroup;

    move-result-object v4

    .line 1892
    const v1, 0x20200b1

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/htc/widget/HtcIconButton;

    .line 1894
    .local v12, noLoginBtn:Lcom/htc/widget/HtcIconButton;
    new-instance v1, Lcom/htc/app/FilePickerCore$8;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerCore$8;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1902
    packed-switch v7, :pswitch_data_0

    .line 1911
    :goto_1
    const v1, 0x20200aa

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1912
    .local v8, emptyView:Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1913
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/FilePickerFolderAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;ILandroid/view/View;Lcom/htc/app/FilePickerUtil;)V

    .line 1916
    .local v0, moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->setFilePickerCloudHelper(Lcom/htc/app/FilePickerCloudHelper;)V

    .line 1917
    iget v1, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->setSortOrder(I)V

    .line 1918
    iget v1, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->setSortBy(I)V

    .line 1920
    const v1, 0x20200ae

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/MoreExpandableHtcListView;

    .line 1923
    .local v9, moreExListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1924
    const v1, 0x20200ac

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 1926
    .local v10, moreExpandViewLayout:Landroid/view/ViewGroup;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1927
    if-eqz v10, :cond_0

    .line 1928
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1929
    const v1, 0x20200aa

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #emptyView:Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 1930
    .restart local v8       #emptyView:Landroid/widget/TextView;
    invoke-virtual {v9, v8}, Lcom/htc/widget/MoreExpandableHtcListView;->setEmptyView(Landroid/view/View;)V

    .line 1931
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1934
    :cond_0
    invoke-virtual {p0, v0, v4, v7}, Lcom/htc/app/FilePickerCore;->getMoreExpanedObjectInstance(Lcom/htc/app/FilePickerFolderAdapter;Landroid/view/ViewGroup;I)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v11

    .line 1936
    invoke-direct {p0, v11}, Lcom/htc/app/FilePickerCore;->addMoreExpanedObjectToList(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    .line 1939
    const v1, 0x20200c3

    invoke-direct {p0, v1, v4}, Lcom/htc/app/FilePickerCore;->setViewToMainLayoutAndShow(ILandroid/view/View;)V

    .line 1941
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->setNeedReLoad(Z)V

    .line 1942
    invoke-virtual {v11}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->updatePathOfFolderViewHeader()V

    .line 1947
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/htc/app/FilePickerCloudHelper;->hasAnyAccountSignIn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1948
    #calls: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->loadFolders()V
    invoke-static {v11}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$1500(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    .line 1951
    :cond_1
    const-string v1, "Tab_NoneCarousel"

    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerCore;->showViewByTab(Ljava/lang/String;)V

    .line 1952
    invoke-direct {p0, v4}, Lcom/htc/app/FilePickerCore;->checkShowNoLoginView(Landroid/view/View;)V

    .line 1953
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    if-nez v1, :cond_2

    .line 1954
    invoke-direct {p0, v7}, Lcom/htc/app/FilePickerCore;->saveCloudDataSourceTypePreferences(I)V

    .line 1956
    :cond_2
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 1957
    return-void

    .line 1887
    .end local v0           #moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    .end local v4           #filePickerFolderView:Landroid/view/ViewGroup;
    .end local v8           #emptyView:Landroid/widget/TextView;
    .end local v9           #moreExListView:Lcom/htc/widget/MoreExpandableHtcListView;
    .end local v10           #moreExpandViewLayout:Landroid/view/ViewGroup;
    .end local v12           #noLoginBtn:Lcom/htc/widget/HtcIconButton;
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v7, v1}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v11

    goto/16 :goto_0

    .line 1904
    .restart local v4       #filePickerFolderView:Landroid/view/ViewGroup;
    .restart local v12       #noLoginBtn:Lcom/htc/widget/HtcIconButton;
    :pswitch_0
    const v1, 0x20403cf

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcIconButton;->setText(I)V

    goto/16 :goto_1

    .line 1907
    :pswitch_1
    const v1, 0x20403d0

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcIconButton;->setText(I)V

    goto/16 :goto_1

    .line 1902
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showLandingPage()V
    .locals 36

    .prologue
    .line 2173
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->showLoadingPage()V

    .line 2174
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->unregisterSdcardReceiver()V

    .line 2175
    const v6, 0x20200c4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 2176
    const v6, 0x20200c2

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 2177
    const v6, 0x20200be

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 2178
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getLandingView()Landroid/view/View;

    move-result-object v19

    .line 2180
    .local v19, filePickerLandingView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-eqz v6, :cond_4

    .line 2181
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 2182
    .local v24, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2183
    .local v22, lstImageItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v6, "ItemImage"

    const v7, 0x2080217

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2184
    const-string v6, "ItemText"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->mRecentText:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2185
    const-string v6, "ItemTabType"

    const-string v7, "Tab_Recent"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2186
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2187
    new-instance v24, Ljava/util/HashMap;

    .end local v24           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 2188
    .restart local v24       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "ItemImage"

    const v7, 0x2080215

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2189
    const-string v6, "ItemText"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->mTypeText:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    const-string v6, "ItemTabType"

    const-string v7, "Tab_Type"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2191
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2192
    new-instance v24, Ljava/util/HashMap;

    .end local v24           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 2193
    .restart local v24       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "ItemImage"

    const v7, 0x2080214

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2194
    const-string v6, "ItemText"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->mFavoritesText:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2195
    const-string v6, "ItemTabType"

    const-string v7, "Tab_Favorites"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2196
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2198
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/app/FilePickerCore;->offlineStringArray:[Ljava/lang/String;

    .line 2199
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v20

    if-ge v0, v6, :cond_0

    .line 2200
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->offlineStringArray:[Ljava/lang/String;

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v8, "ItemText"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v20

    .line 2199
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 2203
    :cond_0
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v9, v6, [Ljava/lang/Integer;

    .line 2204
    .local v9, offlineIdArray:[Ljava/lang/Integer;
    const/16 v20, 0x0

    :goto_1
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v20

    if-ge v0, v6, :cond_1

    .line 2205
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "ItemImage"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    aput-object v6, v9, v20

    .line 2204
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 2208
    :cond_1
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/app/FilePickerCore;->offlineTabStringArray:[Ljava/lang/String;

    .line 2209
    const/16 v20, 0x0

    :goto_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v20

    if-ge v0, v6, :cond_2

    .line 2210
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->offlineTabStringArray:[Ljava/lang/String;

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v8, "ItemTabType"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v20

    .line 2209
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 2212
    :cond_2
    new-instance v5, Lcom/htc/app/FilePickerCore$GridAdapter;

    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/app/FilePickerCore;->offlineStringArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/app/FilePickerCore;->offlineTabStringArray:[Ljava/lang/String;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/htc/app/FilePickerCore$GridAdapter;-><init>(Lcom/htc/app/FilePickerCore;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;[Ljava/lang/String;)V

    .line 2215
    .local v5, offlineGridAdapter:Lcom/htc/app/FilePickerCore$GridAdapter;
    const v6, 0x20200b9

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/htc/widget/HtcGridView;

    .line 2218
    .local v25, offlineGridView:Lcom/htc/widget/HtcGridView;
    new-instance v18, Landroid/util/DisplayMetrics;

    invoke-direct/range {v18 .. v18}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2219
    .local v18, displaymetrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2220
    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v35, v0

    .line 2221
    .local v35, total_width:I
    invoke-virtual/range {v25 .. v25}, Lcom/htc/widget/HtcGridView;->getPaddingLeft()I

    move-result v29

    .line 2222
    .local v29, paddingLeft:I
    invoke-virtual/range {v25 .. v25}, Lcom/htc/widget/HtcGridView;->getPaddingRight()I

    move-result v30

    .line 2223
    .local v30, paddingRight:I
    invoke-virtual/range {v25 .. v25}, Lcom/htc/widget/HtcGridView;->getPaddingTop()I

    move-result v31

    .line 2224
    .local v31, paddingTop:I
    invoke-virtual/range {v25 .. v25}, Lcom/htc/widget/HtcGridView;->getPaddingBottom()I

    move-result v28

    .line 2225
    .local v28, paddingBottom:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/app/FilePickerCore;->gridItemSize:I

    mul-int/lit8 v6, v6, 0x3

    sub-int v21, v35, v6

    .line 2226
    .local v21, left_width:I
    if-lez v21, :cond_3

    .line 2227
    div-int/lit8 v29, v21, 0x8

    .line 2228
    div-int/lit8 v30, v21, 0x8

    .line 2230
    :cond_3
    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v30

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcGridView;->setPadding(IIII)V

    .line 2232
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2233
    new-instance v6, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;-><init>(Lcom/htc/app/FilePickerCore;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcGridView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 2235
    .end local v5           #offlineGridAdapter:Lcom/htc/app/FilePickerCore$GridAdapter;
    .end local v9           #offlineIdArray:[Ljava/lang/Integer;
    .end local v18           #displaymetrics:Landroid/util/DisplayMetrics;
    .end local v20           #i:I
    .end local v21           #left_width:I
    .end local v22           #lstImageItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v24           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v25           #offlineGridView:Lcom/htc/widget/HtcGridView;
    .end local v28           #paddingBottom:I
    .end local v29           #paddingLeft:I
    .end local v30           #paddingRight:I
    .end local v31           #paddingTop:I
    .end local v35           #total_width:I
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    .line 2236
    .local v33, time:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ServiceEnabledCheck->FilePicker CloudUI by Intent->Enabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-eqz v6, :cond_b

    .line 2239
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 2240
    .restart local v24       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 2243
    .local v23, lstImageItem2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/app/FilePickerCloudHelper;->isCloudServiceEnabled(I)Z

    move-result v32

    .line 2245
    .local v32, serviceEnabled:Z
    const/4 v6, 0x1

    move/from16 v0, v32

    if-ne v0, v6, :cond_5

    .line 2246
    new-instance v24, Ljava/util/HashMap;

    .end local v24           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 2247
    .restart local v24       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "ItemImage"

    const v7, 0x2080213

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2248
    const-string v6, "ItemText"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->mDropboxText:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    const-string v6, "ItemTabType"

    const-string v7, "Tab_NoneCarousel"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2250
    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2252
    :cond_5
    const-string v6, "ServiceEnabledCheck"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ServiceEnabledCheck->Dropbox:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/app/FilePickerCloudHelper;->isCloudServiceEnabled(I)Z

    move-result v32

    .line 2257
    const/4 v6, 0x1

    move/from16 v0, v32

    if-ne v0, v6, :cond_6

    .line 2258
    new-instance v24, Ljava/util/HashMap;

    .end local v24           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 2259
    .restart local v24       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "ItemImage"

    const v7, 0x2080219

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    const-string v6, "ItemText"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->mSkyDriveText:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2261
    const-string v6, "ItemTabType"

    const-string v7, "Tab_NoneCarousel"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2262
    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2264
    :cond_6
    const-string v6, "ServiceEnabledCheck"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ServiceEnabledCheck->skydrive:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_b

    .line 2267
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/app/FilePickerCore;->onlineStringArray:[Ljava/lang/String;

    .line 2268
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_3
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v20

    if-ge v0, v6, :cond_7

    .line 2269
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->onlineStringArray:[Ljava/lang/String;

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v8, "ItemText"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v20

    .line 2268
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 2272
    :cond_7
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v14, v6, [Ljava/lang/Integer;

    .line 2273
    .local v14, onlineIdArray:[Ljava/lang/Integer;
    const/16 v20, 0x0

    :goto_4
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v20

    if-ge v0, v6, :cond_8

    .line 2274
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "ItemImage"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    aput-object v6, v14, v20

    .line 2273
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 2277
    :cond_8
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/app/FilePickerCore;->onlineTabStringArray:[Ljava/lang/String;

    .line 2278
    const/16 v20, 0x0

    :goto_5
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v20

    if-ge v0, v6, :cond_9

    .line 2279
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->onlineTabStringArray:[Ljava/lang/String;

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v8, "ItemTabType"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v20

    .line 2278
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 2281
    :cond_9
    new-instance v10, Lcom/htc/app/FilePickerCore$GridAdapter;

    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/app/FilePickerCore;->onlineStringArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FilePickerCore;->onlineTabStringArray:[Ljava/lang/String;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/htc/app/FilePickerCore$GridAdapter;-><init>(Lcom/htc/app/FilePickerCore;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;[Ljava/lang/String;)V

    .line 2284
    .local v10, onlineGridAdapter:Lcom/htc/app/FilePickerCore$GridAdapter;
    const v6, 0x20200bc

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/htc/widget/HtcGridView;

    .line 2286
    .local v26, onlineGridView:Lcom/htc/widget/HtcGridView;
    new-instance v18, Landroid/util/DisplayMetrics;

    invoke-direct/range {v18 .. v18}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2287
    .restart local v18       #displaymetrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2288
    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v35, v0

    .line 2289
    .restart local v35       #total_width:I
    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcGridView;->getPaddingLeft()I

    move-result v29

    .line 2290
    .restart local v29       #paddingLeft:I
    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcGridView;->getPaddingRight()I

    move-result v30

    .line 2291
    .restart local v30       #paddingRight:I
    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcGridView;->getPaddingTop()I

    move-result v31

    .line 2292
    .restart local v31       #paddingTop:I
    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcGridView;->getPaddingBottom()I

    move-result v28

    .line 2293
    .restart local v28       #paddingBottom:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/app/FilePickerCore;->gridItemSize:I

    mul-int/lit8 v6, v6, 0x3

    sub-int v21, v35, v6

    .line 2294
    .restart local v21       #left_width:I
    if-lez v21, :cond_a

    .line 2295
    div-int/lit8 v29, v21, 0x8

    .line 2296
    div-int/lit8 v30, v21, 0x8

    .line 2298
    :cond_a
    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v30

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcGridView;->setPadding(IIII)V

    .line 2300
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2301
    new-instance v6, Lcom/htc/app/FilePickerCore$OnlineItemClickListener;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/app/FilePickerCore$OnlineItemClickListener;-><init>(Lcom/htc/app/FilePickerCore;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcGridView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 2303
    const v6, 0x20200bb

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcListItemSeparator;

    .line 2305
    .local v16, cloudServicesSepararor:Lcom/htc/widget/HtcListItemSeparator;
    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemSeparator;->setVisibility(I)V

    .line 2306
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20403e1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2308
    .local v17, cloudServicesStr:Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 2309
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .line 2310
    const v6, 0x20200ba

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .line 2311
    .local v27, onlineLayout:Landroid/view/View;
    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2314
    .end local v10           #onlineGridAdapter:Lcom/htc/app/FilePickerCore$GridAdapter;
    .end local v14           #onlineIdArray:[Ljava/lang/Integer;
    .end local v16           #cloudServicesSepararor:Lcom/htc/widget/HtcListItemSeparator;
    .end local v17           #cloudServicesStr:Ljava/lang/String;
    .end local v18           #displaymetrics:Landroid/util/DisplayMetrics;
    .end local v20           #i:I
    .end local v21           #left_width:I
    .end local v23           #lstImageItem2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v24           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v26           #onlineGridView:Lcom/htc/widget/HtcGridView;
    .end local v27           #onlineLayout:Landroid/view/View;
    .end local v28           #paddingBottom:I
    .end local v29           #paddingLeft:I
    .end local v30           #paddingRight:I
    .end local v31           #paddingTop:I
    .end local v32           #serviceEnabled:Z
    .end local v35           #total_width:I
    :cond_b
    const v6, 0x20200c4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/htc/app/FilePickerCore;->setViewToMainLayoutAndShow(ILandroid/view/View;)V

    .line 2321
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/app/FilePickerActionBarExtController;->setActionBarContainerBackUpEnabled(Z)V

    .line 2322
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    .line 2323
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20403d8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 2325
    .local v34, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lcom/htc/app/FilePickerActionBarExtController;->setMainTitle(Ljava/lang/String;)V

    .line 2326
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 2327
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/app/FilePickerCore;->checkHTCLandscapeEnabled(Z)V

    .line 2329
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    .line 2330
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2332
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 2333
    return-void
.end method

.method private showLoadingPage()V
    .locals 3

    .prologue
    .line 307
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method private showLocalFilePickerView()V
    .locals 15

    .prologue
    const v14, 0x20200bf

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1380
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-direct {p0, v12}, Lcom/htc/app/FilePickerCore;->getAppDropDownAdapter(Z)Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    .line 1381
    invoke-direct {p0, v12}, Lcom/htc/app/FilePickerCore;->checkHTCLandscapeEnabled(Z)V

    .line 1382
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->checkActionBarContainerBackUpEnabled()V

    .line 1383
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v10}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/htc/app/FilePickerCore;->setMainTitle(I)V

    .line 1385
    invoke-direct {p0, v14, v13}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1387
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 1388
    .local v5, fm:Landroid/app/FragmentManager;
    invoke-virtual {v5, v14}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/htc/app/FilePickerCarousel;

    .line 1390
    .local v3, carousel:Lcom/htc/app/FilePickerCarousel;
    if-eqz v3, :cond_5

    .line 1391
    new-instance v10, Lcom/htc/app/FilePickerCore$7;

    invoke-direct {v10, p0}, Lcom/htc/app/FilePickerCore$7;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v3, v10}, Lcom/htc/app/FilePickerCarousel;->setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V

    .line 1396
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x20200cc

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/app/FilePickerListView;

    .line 1399
    .local v9, typeListView:Lcom/htc/app/FilePickerListView;
    if-eqz v9, :cond_0

    .line 1400
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v10, :cond_0

    .line 1401
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v9, v10}, Lcom/htc/app/FilePickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1405
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x20200ca

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/app/FilePickerListView;

    .line 1407
    .local v8, recentListView:Lcom/htc/app/FilePickerListView;
    if-eqz v8, :cond_2

    .line 1408
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v10, :cond_1

    .line 1409
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v8, v10}, Lcom/htc/app/FilePickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1410
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialEmptyViewOfRecentView()V

    .line 1413
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getRecentFragment()Lcom/htc/app/FilePickerRecentFragment;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1414
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getRecentFragment()Lcom/htc/app/FilePickerRecentFragment;

    move-result-object v10

    const/16 v11, 0x3ec

    invoke-virtual {v10, v11}, Lcom/htc/app/FilePickerRecentFragment;->NotifyToDoTask(I)V

    .line 1415
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getRecentFragment()Lcom/htc/app/FilePickerRecentFragment;

    move-result-object v10

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Lcom/htc/app/FilePickerRecentFragment;->NotifyToDoTask(I)V

    .line 1419
    :cond_2
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x20200a9

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/app/FilePickerListView;

    .line 1421
    .local v4, favoritesListView:Lcom/htc/app/FilePickerListView;
    if-eqz v4, :cond_3

    .line 1422
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v10, :cond_3

    .line 1423
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4, v10}, Lcom/htc/app/FilePickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1424
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialEmptyViewOfFavoritesView()V

    .line 1428
    :cond_3
    const/4 v10, 0x3

    new-array v1, v10, [Lcom/htc/app/FilePickerListAdapter;

    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    aput-object v10, v1, v13

    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    aput-object v10, v1, v12

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    aput-object v11, v1, v10

    .line 1429
    .local v1, adapters:[Lcom/htc/app/FilePickerListAdapter;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/app/FilePickerListAdapter;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v0, v2, v6

    .line 1430
    .local v0, adapter:Lcom/htc/app/FilePickerListAdapter;
    if-eqz v0, :cond_4

    .line 1431
    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChanged()V

    .line 1429
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1436
    .end local v0           #adapter:Lcom/htc/app/FilePickerListAdapter;
    .end local v1           #adapters:[Lcom/htc/app/FilePickerListAdapter;
    .end local v2           #arr$:[Lcom/htc/app/FilePickerListAdapter;
    .end local v4           #favoritesListView:Lcom/htc/app/FilePickerListView;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #recentListView:Lcom/htc/app/FilePickerListView;
    .end local v9           #typeListView:Lcom/htc/app/FilePickerListView;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1437
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/htc/app/FilePickerCore;->showViewByTab(Ljava/lang/String;)V

    .line 1438
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 1439
    return-void
.end method

.method private showNoSdCard(I)V
    .locals 4
    .parameter "messageResId"

    .prologue
    const v3, 0x20200c1

    const/16 v2, 0x8

    .line 3727
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 3728
    const v1, 0x20200bf

    invoke-direct {p0, v1, v2}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 3729
    const v1, 0x20200c0

    invoke-direct {p0, v1, v2}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 3730
    const v1, 0x20200cc

    invoke-direct {p0, v1, v2}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 3731
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 3732
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->setNoFileViewEmptyTextOfTypeView()V

    .line 3733
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3735
    .local v0, mSdcardWarningMessage:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 3736
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 3741
    :goto_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 3742
    return-void

    .line 3738
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    const-string v2, "showNoSdCard: NoSdCardView is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showProcessingPage()V
    .locals 3

    .prologue
    .line 299
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method private showSearchBar()V
    .locals 1

    .prologue
    .line 3578
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    if-eqz v0, :cond_0

    .line 3579
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z

    if-eqz v0, :cond_0

    .line 3580
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 3581
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerActionBarExtController;->showSearchBarMode()V

    .line 3585
    :cond_0
    return-void
.end method

.method private showUsbConnectionPickerView()V
    .locals 14

    .prologue
    const v13, 0x20200aa

    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1484
    iget v8, p0, Lcom/htc/app/FilePickerCore;->mUsbConnetionViewMode:I

    invoke-virtual {p0, v8}, Lcom/htc/app/FilePickerCore;->initialUsbConnection(I)V

    .line 1486
    const/4 v7, 0x0

    .line 1487
    .local v7, title:Ljava/lang/String;
    iget v8, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    if-nez v8, :cond_2

    .line 1488
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v8}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1489
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x20403d1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1497
    :goto_0
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v8, v10}, Lcom/htc/app/FilePickerActionBarExtController;->setActionBarContainerBackUpEnabled(Z)V

    .line 1498
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v8, v11}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    .line 1499
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v8, v7}, Lcom/htc/app/FilePickerActionBarExtController;->setMainTitle(Ljava/lang/String;)V

    .line 1500
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v8, v11}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 1501
    invoke-direct {p0, v10}, Lcom/htc/app/FilePickerCore;->checkHTCLandscapeEnabled(Z)V

    .line 1503
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v8}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v0

    .line 1504
    .local v0, dataSourceType:I
    invoke-direct {p0, v0, v11}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v6

    .line 1506
    .local v6, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    const/4 v2, 0x0

    .line 1509
    .local v2, filePickerFolderView:Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getFolderViewInstance()Landroid/view/ViewGroup;

    move-result-object v2

    .line 1510
    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1511
    .local v1, emptyView:Landroid/widget/TextView;
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1513
    invoke-virtual {p0, v2}, Lcom/htc/app/FilePickerCore;->getFolderAdapterInstance(Landroid/view/ViewGroup;)Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v3

    .line 1515
    .local v3, moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    const v8, 0x20200ae

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/MoreExpandableHtcListView;

    .line 1518
    .local v4, moreExListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1519
    const v8, 0x20200ac

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1521
    .local v5, moreExpandViewLayout:Landroid/view/ViewGroup;
    if-eqz v5, :cond_0

    .line 1522
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1523
    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #emptyView:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 1524
    .restart local v1       #emptyView:Landroid/widget/TextView;
    invoke-virtual {v4, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setEmptyView(Landroid/view/View;)V

    .line 1525
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1528
    :cond_0
    invoke-virtual {p0, v3, v2, v0}, Lcom/htc/app/FilePickerCore;->getMoreExpanedObjectInstance(Lcom/htc/app/FilePickerFolderAdapter;Landroid/view/ViewGroup;I)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v6

    .line 1530
    invoke-direct {p0, v6}, Lcom/htc/app/FilePickerCore;->addMoreExpanedObjectToList(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    .line 1533
    const v8, 0x20200c0

    invoke-direct {p0, v8, v2}, Lcom/htc/app/FilePickerCore;->setViewToMainLayoutAndShow(ILandroid/view/View;)V

    .line 1534
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->setNeedReLoad(Z)V

    .line 1535
    invoke-virtual {v6}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->updatePathOfFolderViewHeader()V

    .line 1536
    #calls: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->loadFolders()V
    invoke-static {v6}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$1500(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    .line 1538
    const-string v8, "Tab_NoneCarousel"

    invoke-direct {p0, v8}, Lcom/htc/app/FilePickerCore;->showViewByTab(Ljava/lang/String;)V

    .line 1539
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 1540
    return-void

    .line 1491
    .end local v0           #dataSourceType:I
    .end local v1           #emptyView:Landroid/widget/TextView;
    .end local v2           #filePickerFolderView:Landroid/view/ViewGroup;
    .end local v3           #moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    .end local v4           #moreExListView:Lcom/htc/widget/MoreExpandableHtcListView;
    .end local v5           #moreExpandViewLayout:Landroid/view/ViewGroup;
    .end local v6           #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_1
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2040146

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 1494
    :cond_2
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2040147

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method private showViewByTab(Ljava/lang/String;)V
    .locals 10
    .parameter "tabId"

    .prologue
    const/4 v9, 0x0

    .line 2022
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    .line 2023
    .local v3, oldTab:Ljava/lang/String;
    iput-object p1, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    .line 2024
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->hideSearchBar()V

    .line 2025
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->performAllViewActionModeFinish()V

    .line 2027
    const-string v5, "Tab_Recent"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2028
    iput-boolean v9, p0, Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z

    .line 2076
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2077
    return-void

    .line 2029
    :cond_1
    const-string v5, "Tab_Favorites"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2030
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    if-eq v3, v5, :cond_4

    .line 2032
    :try_start_0
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerDBHelper;->isFavChanged()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2033
    const-string v5, "FilePickerWithDB"

    const-string v6, "#### refresh fav data"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    new-instance v2, Lcom/htc/app/FileScanner;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/htc/app/FileScanner;-><init>(Landroid/content/Context;Lcom/htc/app/FilePickerListAdapter;[Ljava/lang/String;Lcom/htc/app/FilePickerDBHelper;)V

    .line 2037
    .local v2, fileScanner:Lcom/htc/app/FileScanner;
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v2, v5}, Lcom/htc/app/FileScanner;->setFilePickerUtil(Lcom/htc/app/FilePickerUtil;)V

    .line 2038
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerListAdapter;->clear()V

    .line 2039
    new-instance v1, Ljava/lang/Thread;

    new-instance v5, Lcom/htc/app/FilePickerCore$9;

    invoke-direct {v5, p0, v2}, Lcom/htc/app/FilePickerCore$9;-><init>(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FileScanner;)V

    invoke-direct {v1, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2053
    .local v1, favoriteThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2065
    .end local v1           #favoriteThread:Ljava/lang/Thread;
    .end local v2           #fileScanner:Lcom/htc/app/FileScanner;
    :cond_2
    :goto_1
    iput-boolean v9, p0, Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z

    goto :goto_0

    .line 2055
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v5, :cond_2

    .line 2056
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2058
    :catch_0
    move-exception v0

    .line 2059
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "FilePickerWithDB"

    const-string v6, "#### mDbHelper.isFavChanged() fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2063
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const-string v5, "FilePickerWithDB"

    const-string v6, "#### don\'t refresh fav data"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2066
    :cond_5
    const-string v5, "Tab_Type"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2067
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x20200cb

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2068
    .local v4, typeLayout:Landroid/view/View;
    if-eqz v4, :cond_6

    .line 2069
    invoke-virtual {p0, v4}, Lcom/htc/app/FilePickerCore;->checkToShowLocalStorageAvailableView(Landroid/view/View;)V

    .line 2071
    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z

    goto/16 :goto_0

    .line 2072
    .end local v4           #typeLayout:Landroid/view/View;
    :cond_7
    const-string v5, "Tab_NoneCarousel"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2073
    iput-boolean v9, p0, Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z

    goto/16 :goto_0
.end method

.method private sort(Lcom/htc/app/FilePickerListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 3562
    if-eqz p1, :cond_0

    .line 3563
    invoke-virtual {p1}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3564
    new-instance v0, Lcom/htc/app/FileSorter;

    invoke-direct {v0}, Lcom/htc/app/FileSorter;-><init>()V

    .line 3565
    .local v0, fileSorter:Lcom/htc/app/FileSorter;
    iget v1, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortBy(I)V

    .line 3566
    iget v1, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortOrder(I)V

    .line 3567
    invoke-virtual {p1, v0}, Lcom/htc/app/FilePickerListAdapter;->setFileSorter(Lcom/htc/app/FileSorter;)V

    .line 3568
    invoke-virtual {p1}, Lcom/htc/app/FilePickerListAdapter;->sortRecentAndFavorite()V

    .line 3571
    .end local v0           #fileSorter:Lcom/htc/app/FileSorter;
    :cond_0
    return-void
.end method

.method private switchLayoutByPicker()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1206
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1207
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1208
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->notifyCloudLoginCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1210
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    if-nez v1, :cond_1

    .line 1252
    :goto_0
    return-void

    .line 1213
    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    invoke-static {v1}, Lcom/htc/app/FilePickerUtil;->isLocalDataSourceType(I)Z

    move-result v0

    .line 1216
    .local v0, currentDataSourceIsLocal:Z
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    if-eqz v1, :cond_2

    .line 1218
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchUsbConnectionPicker()V

    goto :goto_0

    .line 1224
    :cond_2
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    if-eqz v1, :cond_3

    .line 1226
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchCloudFolderPicker()V

    goto :goto_0

    .line 1232
    :cond_3
    if-nez v0, :cond_4

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    if-nez v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-ne v1, v3, :cond_6

    .line 1235
    :cond_5
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchCloudFilePicker()V

    goto :goto_0

    .line 1241
    :cond_6
    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    if-nez v1, :cond_8

    :cond_7
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-ne v1, v3, :cond_9

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-nez v1, :cond_9

    .line 1243
    :cond_8
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchLocalPicker()V

    goto :goto_0

    .line 1248
    :cond_9
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 1249
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showLandingPage()V

    goto :goto_0

    .line 1254
    :cond_a
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 1257
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No found the kind settings of Picker!!!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private unregisterSdcardReceiver()V
    .locals 2

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSdcardListener:Lcom/htc/app/FilePickerCore$SdcardListener;

    if-eqz v0, :cond_0

    .line 2446
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mSdcardListener:Lcom/htc/app/FilePickerCore$SdcardListener;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mSdcardListener:Lcom/htc/app/FilePickerCore$SdcardListener;

    .line 2449
    :cond_0
    return-void
.end method

.method private updateCountOfFavoriteListViewHeader()V
    .locals 4

    .prologue
    .line 3419
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mHeaderOfFavoriteListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v2, :cond_1

    .line 3420
    const/4 v0, 0x0

    .line 3421
    .local v0, fileCount:I
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v2, :cond_0

    .line 3422
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getCurrentFileCount()I

    move-result v0

    .line 3424
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->getFileCountString(I)Ljava/lang/String;

    move-result-object v1

    .line 3425
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mHeaderOfFavoriteListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 3428
    .end local v0           #fileCount:I
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateCountOfRecentListViewHeader()V
    .locals 4

    .prologue
    .line 3397
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v2, :cond_1

    .line 3398
    const/4 v0, 0x0

    .line 3399
    .local v0, fileCount:I
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v2, :cond_0

    .line 3400
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getCurrentFileCount()I

    move-result v0

    .line 3402
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->getFileCountString(I)Ljava/lang/String;

    move-result-object v1

    .line 3403
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 3406
    .end local v0           #fileCount:I
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateCountOfTypeListViewHeader()V
    .locals 4

    .prologue
    .line 3386
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mHeaderOfTypeListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v2, :cond_1

    .line 3387
    const/4 v0, 0x0

    .line 3388
    .local v0, fileCount:I
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v2, :cond_0

    .line 3389
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getCurrentFileCount()I

    move-result v0

    .line 3391
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->getFileCountString(I)Ljava/lang/String;

    move-result-object v1

    .line 3392
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mHeaderOfTypeListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 3394
    .end local v0           #fileCount:I
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public final checkLandingPage()V
    .locals 12

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x20200b9

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcGridView;

    .line 986
    .local v2, offlineGridView:Lcom/htc/widget/HtcGridView;
    if-eqz v2, :cond_1

    .line 987
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 988
    .local v0, displaymetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 989
    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 990
    .local v9, total_width:I
    invoke-virtual {v2}, Lcom/htc/widget/HtcGridView;->getPaddingLeft()I

    move-result v6

    .line 991
    .local v6, paddingLeft:I
    invoke-virtual {v2}, Lcom/htc/widget/HtcGridView;->getPaddingRight()I

    move-result v7

    .line 992
    .local v7, paddingRight:I
    invoke-virtual {v2}, Lcom/htc/widget/HtcGridView;->getPaddingTop()I

    move-result v8

    .line 993
    .local v8, paddingTop:I
    invoke-virtual {v2}, Lcom/htc/widget/HtcGridView;->getPaddingBottom()I

    move-result v5

    .line 994
    .local v5, paddingBottom:I
    iget v10, p0, Lcom/htc/app/FilePickerCore;->gridItemSize:I

    mul-int/lit8 v10, v10, 0x3

    sub-int v1, v9, v10

    .line 995
    .local v1, left_width:I
    if-lez v1, :cond_0

    .line 996
    div-int/lit8 v6, v1, 0x8

    .line 997
    div-int/lit8 v7, v1, 0x8

    .line 1000
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 1001
    .local v4, orientation:I
    packed-switch v4, :pswitch_data_0

    .line 1020
    :goto_0
    invoke-virtual {v2, v6, v8, v7, v5}, Lcom/htc/widget/HtcGridView;->setPadding(IIII)V

    .line 1022
    .end local v0           #displaymetrics:Landroid/util/DisplayMetrics;
    .end local v1           #left_width:I
    .end local v4           #orientation:I
    .end local v5           #paddingBottom:I
    .end local v6           #paddingLeft:I
    .end local v7           #paddingRight:I
    .end local v8           #paddingTop:I
    .end local v9           #total_width:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x20200bc

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcGridView;

    .line 1023
    .local v3, onlineGridView:Lcom/htc/widget/HtcGridView;
    if-eqz v3, :cond_3

    .line 1024
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1025
    .restart local v0       #displaymetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1026
    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1027
    .restart local v9       #total_width:I
    invoke-virtual {v3}, Lcom/htc/widget/HtcGridView;->getPaddingLeft()I

    move-result v6

    .line 1028
    .restart local v6       #paddingLeft:I
    invoke-virtual {v3}, Lcom/htc/widget/HtcGridView;->getPaddingRight()I

    move-result v7

    .line 1029
    .restart local v7       #paddingRight:I
    invoke-virtual {v3}, Lcom/htc/widget/HtcGridView;->getPaddingTop()I

    move-result v8

    .line 1030
    .restart local v8       #paddingTop:I
    invoke-virtual {v3}, Lcom/htc/widget/HtcGridView;->getPaddingBottom()I

    move-result v5

    .line 1031
    .restart local v5       #paddingBottom:I
    iget v10, p0, Lcom/htc/app/FilePickerCore;->gridItemSize:I

    mul-int/lit8 v10, v10, 0x3

    sub-int v1, v9, v10

    .line 1032
    .restart local v1       #left_width:I
    if-lez v1, :cond_2

    .line 1033
    div-int/lit8 v6, v1, 0x8

    .line 1034
    div-int/lit8 v7, v1, 0x8

    .line 1037
    :cond_2
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 1038
    .restart local v4       #orientation:I
    packed-switch v4, :pswitch_data_1

    .line 1057
    :goto_1
    invoke-virtual {v3, v6, v8, v7, v5}, Lcom/htc/widget/HtcGridView;->setPadding(IIII)V

    .line 1059
    .end local v0           #displaymetrics:Landroid/util/DisplayMetrics;
    .end local v1           #left_width:I
    .end local v4           #orientation:I
    .end local v5           #paddingBottom:I
    .end local v6           #paddingLeft:I
    .end local v7           #paddingRight:I
    .end local v8           #paddingTop:I
    .end local v9           #total_width:I
    :cond_3
    return-void

    .line 1003
    .end local v3           #onlineGridView:Lcom/htc/widget/HtcGridView;
    .restart local v0       #displaymetrics:Landroid/util/DisplayMetrics;
    .restart local v1       #left_width:I
    .restart local v4       #orientation:I
    .restart local v5       #paddingBottom:I
    .restart local v6       #paddingLeft:I
    .restart local v7       #paddingRight:I
    .restart local v8       #paddingTop:I
    .restart local v9       #total_width:I
    :pswitch_0
    iget v8, p0, Lcom/htc/app/FilePickerCore;->Default_PaddingTop:I

    .line 1004
    iget v5, p0, Lcom/htc/app/FilePickerCore;->Default_PaddingBottom:I

    .line 1005
    goto :goto_0

    .line 1007
    :pswitch_1
    const/4 v8, 0x0

    .line 1008
    const/4 v5, 0x0

    .line 1009
    goto :goto_0

    .line 1011
    :pswitch_2
    iget v8, p0, Lcom/htc/app/FilePickerCore;->Default_PaddingTop:I

    .line 1012
    iget v5, p0, Lcom/htc/app/FilePickerCore;->Default_PaddingBottom:I

    .line 1013
    goto :goto_0

    .line 1015
    :pswitch_3
    const/4 v8, 0x0

    .line 1016
    const/4 v5, 0x0

    goto :goto_0

    .line 1040
    .restart local v3       #onlineGridView:Lcom/htc/widget/HtcGridView;
    :pswitch_4
    iget v8, p0, Lcom/htc/app/FilePickerCore;->Default_PaddingTop:I

    .line 1041
    iget v5, p0, Lcom/htc/app/FilePickerCore;->Default_PaddingBottom:I

    .line 1042
    goto :goto_1

    .line 1044
    :pswitch_5
    const/4 v8, 0x0

    .line 1045
    const/4 v5, 0x0

    .line 1046
    goto :goto_1

    .line 1048
    :pswitch_6
    iget v8, p0, Lcom/htc/app/FilePickerCore;->Default_PaddingTop:I

    .line 1049
    iget v5, p0, Lcom/htc/app/FilePickerCore;->Default_PaddingBottom:I

    .line 1050
    goto :goto_1

    .line 1052
    :pswitch_7
    const/4 v8, 0x0

    .line 1053
    const/4 v5, 0x0

    goto :goto_1

    .line 1001
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1038
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method checkToShowLocalStorageAvailableView(Landroid/view/View;)V
    .locals 10
    .parameter "typeLayout"

    .prologue
    const v9, 0x20401f9

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 2080
    const v6, 0x20200cd

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2081
    .local v5, noStorageView:Landroid/widget/TextView;
    const v6, 0x20200aa

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2082
    .local v4, emptyView:Landroid/widget/TextView;
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageAvailable()Z

    move-result v2

    .line 2083
    .local v2, bInternalStorageAvailable:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageAvailable()Z

    move-result v0

    .line 2085
    .local v0, bExternalStorageAvailable:Z
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v6}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v3

    .line 2086
    .local v3, dataSourceType:I
    packed-switch v3, :pswitch_data_0

    .line 2110
    :goto_0
    return-void

    .line 2088
    :pswitch_0
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageShared()Z

    move-result v1

    .line 2089
    .local v1, bExternalStorageShared:Z
    if-eqz v1, :cond_0

    .line 2090
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 2093
    :goto_1
    if-eqz v0, :cond_1

    .line 2094
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2092
    :cond_0
    const v6, 0x20400a0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 2096
    :cond_1
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2097
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2101
    .end local v1           #bExternalStorageShared:Z
    :pswitch_1
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 2102
    if-eqz v2, :cond_2

    .line 2103
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2105
    :cond_2
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2106
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2086
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 3648
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerActionBarExtController;->isSearchBarVisibled()Z

    move-result v1

    .line 3649
    .local v1, isSearchBarVisibled:Z
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerActionBarExtController;->isActionBarContainerBackUpEnabled()Z

    move-result v0

    .line 3652
    .local v0, isActionBarContainerBackUpEnabled:Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 3656
    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    iget v4, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/app/FilePickerCore;->onResult([Ljava/lang/String;II)V

    .line 3657
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->finish()V

    .line 3659
    :cond_0
    return-void
.end method

.method dispatchSearchKey(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 3694
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setSearchString(Ljava/lang/String;)V

    .line 3695
    return-void
.end method

.method public doStart()V
    .locals 3

    .prologue
    .line 2743
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2745
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/htc/app/FilePickerCore;->mOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 2748
    :goto_0
    return-void

    .line 2747
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public doStop()V
    .locals 0

    .prologue
    .line 2751
    return-void
.end method

.method getActionBarExtCtrl()Lcom/htc/app/FilePickerActionBarExtController;
    .locals 1

    .prologue
    .line 4372
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    return-object v0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerAct:Landroid/app/Activity;

    return-object v0
.end method

.method getFavoritesAdapter()Lcom/htc/app/FilePickerListAdapter;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method public getFavoritesFragment()Lcom/htc/app/FilePickerFavoritesFragment;
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerFavoritesFragment:Lcom/htc/app/FilePickerFavoritesFragment;

    return-object v0
.end method

.method getFilePickerUtil()Lcom/htc/app/FilePickerUtil;
    .locals 1

    .prologue
    .line 4368
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method getFolderAdapterInstance(Landroid/view/ViewGroup;)Lcom/htc/app/FilePickerFolderAdapter;
    .locals 6
    .parameter "filePickerFolderView"

    .prologue
    .line 1548
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/FilePickerFolderAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;ILandroid/view/View;Lcom/htc/app/FilePickerUtil;)V

    .line 1551
    .local v0, moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->setFilePickerCloudHelper(Lcom/htc/app/FilePickerCloudHelper;)V

    .line 1552
    iget v1, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->setSortOrder(I)V

    .line 1553
    iget v1, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->setSortBy(I)V

    .line 1554
    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3776
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3777
    new-instance v0, Lcom/htc/app/FilePickerCore$23;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$23;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    .line 3784
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getMoreExpanedObjectInstance(Lcom/htc/app/FilePickerFolderAdapter;Landroid/view/ViewGroup;I)Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    .locals 6
    .parameter "filePickerFolderAdapter"
    .parameter "moreExpandableLayout"
    .parameter "dataSourceType"

    .prologue
    .line 1544
    new-instance v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;-><init>(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerFolderAdapter;Landroid/view/ViewGroup;ILcom/htc/app/FilePickerCore$1;)V

    return-object v0
.end method

.method getRecentAdapter()Lcom/htc/app/FilePickerListAdapter;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method public getRecentFragment()Lcom/htc/app/FilePickerRecentFragment;
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerRecentFragment:Lcom/htc/app/FilePickerRecentFragment;

    return-object v0
.end method

.method getTypeAdapter()Lcom/htc/app/FilePickerListAdapter;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method public final initStringDescription()V
    .locals 2

    .prologue
    .line 972
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2040138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/app/FilePickerCore;->RECENT_USED:Ljava/lang/String;

    .line 973
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2040237

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/app/FilePickerCore;->EMPTY_FOLDER:Ljava/lang/String;

    .line 974
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2040238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/app/FilePickerCore;->LOADING:Ljava/lang/String;

    .line 975
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20403dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeText:Ljava/lang/String;

    .line 976
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20403db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentText:Ljava/lang/String;

    .line 977
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20403dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesText:Ljava/lang/String;

    .line 978
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20403c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mDropboxText:Ljava/lang/String;

    .line 979
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20403c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mSkyDriveText:Ljava/lang/String;

    .line 981
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->checkHTCLandscapeEnabled(Z)V

    .line 982
    return-void
.end method

.method public final initialFilePicker(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 615
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 616
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerCore;->initialFilePicker(Landroid/os/Bundle;)V

    .line 617
    return-void
.end method

.method public final initialFilePicker(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->initialIntentValue(Landroid/os/Bundle;)V

    .line 419
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerActionBarExtController;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    .line 421
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mHintText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mHintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 429
    :cond_0
    :goto_0
    new-instance v0, Lcom/htc/app/FilePickerUtil;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/app/FilePickerUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 430
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->setActHandler(Landroid/os/Handler;)V

    .line 431
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->setFilter([Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsFolderPickerModeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->setFolderPickerModeEnabled(Z)V

    .line 433
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsFilePickerModeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->setFilePickerModeEnabled(Z)V

    .line 434
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsOnlyShowCanWriteFolder:Z

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->setOnlyShowCanWriteFolder(Z)V

    .line 437
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mInitThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 438
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mInitThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 446
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x204015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method initialUsbConnection(I)V
    .locals 3
    .parameter "usbConnectionMode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1098
    packed-switch p1, :pswitch_data_0

    .line 1110
    :goto_0
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    if-eqz v0, :cond_0

    .line 1111
    const-string v0, "Tab_NoneCarousel"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    .line 1112
    iput-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsActionModeChoiceEnabled:Z

    .line 1113
    iput-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    .line 1114
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    .line 1115
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z

    .line 1116
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsSortMenuItemVisabled:Z

    .line 1117
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->isReturnCloudShareLinkEnabled:Z

    .line 1118
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->setFolderPickerModeEnabled(Z)V

    .line 1119
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-static {}, Lcom/htc/app/FilePickerUtil;->getLocalDefaultDateSourceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 1122
    :cond_0
    return-void

    .line 1100
    :pswitch_0
    iput-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    .line 1101
    iput v1, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    .line 1102
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->setFilePickerModeEnabled(Z)V

    goto :goto_0

    .line 1105
    :pswitch_1
    iput-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    .line 1106
    iput v2, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    .line 1107
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v0, v2}, Lcom/htc/app/FilePickerUtil;->setFilePickerModeEnabled(Z)V

    goto :goto_0

    .line 1098
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isFavoriteStopScan()Z
    .locals 1

    .prologue
    .line 3164
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsFavoriteStopScan:Z

    return v0
.end method

.method isRecentStopScan()Z
    .locals 1

    .prologue
    .line 3160
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsRecentStopScan:Z

    return v0
.end method

.method isTypeStopScan()Z
    .locals 1

    .prologue
    .line 3152
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getMainView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 227
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialActionBarExtCtrl()V

    .line 229
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "FilePickerPreference"

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 231
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    .line 233
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 234
    .local v1, resource:Landroid/content/res/Resources;
    new-array v0, v6, [Landroid/graphics/drawable/Drawable;

    .line 235
    .local v0, layers:[Landroid/graphics/drawable/Drawable;
    const v3, 0x20801b6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v5

    .line 236
    const/4 v3, 0x1

    const v4, 0x20801b7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v3

    .line 237
    aget-object v3, v0, v5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/app/FilePickerCore;->gridItemSize:I

    .line 238
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->gridItemBkg:Landroid/graphics/drawable/LayerDrawable;

    .line 239
    const v3, 0x2050001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/app/FilePickerCore;->Default_PaddingTop:I

    .line 240
    const/high16 v3, 0x205

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/app/FilePickerCore;->Default_PaddingBottom:I

    .line 241
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    .line 243
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->initialCarouselFragment(Landroid/os/Bundle;)V

    .line 245
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "dialogId"

    .prologue
    const v0, 0x20403d5

    const v2, 0x104000a

    .line 3662
    packed-switch p1, :pswitch_data_0

    .line 3684
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3664
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->createNetworkSettingDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3666
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->createSortDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3668
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->createFolderPathReturnDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3670
    :pswitch_4
    const v0, 0x20400a2

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->createProgressDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3672
    :pswitch_5
    const v0, 0x20402cd

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->createBlockingProgressDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3674
    :pswitch_6
    const v0, 0x20403c8

    const v1, 0x20403c9

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/app/FilePickerCore;->createMakeSureDialog(III)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3677
    :pswitch_7
    invoke-direct {p0, v0, v0, v2}, Lcom/htc/app/FilePickerCore;->createMakeSureDialog(III)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3680
    :pswitch_8
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->createDownloadDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3682
    :pswitch_9
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->createDownloadFailDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3662
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_9
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 2487
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x204014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v5, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20800c2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2491
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x204021a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2493
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x204014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2495
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2499
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->doDestroy()V

    .line 2500
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->unregisterSdcardReceiver()V

    .line 2501
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissProcessingDialog()V

    .line 2502
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 2503
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    if-eqz v1, :cond_0

    .line 2504
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCloudHelper;->close()V

    .line 2508
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mInitThread:Ljava/lang/Thread;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2513
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mInitThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2514
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mInitThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 2518
    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 2519
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->clearHandler()V

    .line 2521
    :cond_2
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    if-eqz v1, :cond_3

    .line 2522
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerUtil;->close()V

    .line 2524
    :cond_3
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    if-eqz v1, :cond_4

    .line 2525
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerActionBarExtController;->cleanContainerEnvironment()V

    .line 2529
    :cond_4
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    .line 2530
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    .line 2531
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 2532
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    .line 2533
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 2534
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 2536
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mSdcardListener:Lcom/htc/app/FilePickerCore$SdcardListener;

    .line 2537
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 2538
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    .line 2539
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownLocalAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    if-eqz v1, :cond_5

    .line 2540
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownLocalAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerAppDropDownAdapter;->close()V

    .line 2542
    :cond_5
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownLocalAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    .line 2543
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownCloudAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    if-eqz v1, :cond_6

    .line 2544
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownCloudAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerAppDropDownAdapter;->close()V

    .line 2546
    :cond_6
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownCloudAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    .line 2548
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mHeaderOfTypeListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    .line 2549
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    .line 2550
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mHeaderOfFavoriteListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    .line 2552
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->recent_view:Lcom/htc/app/FilePickerListView;

    .line 2553
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->favorite_view:Lcom/htc/app/FilePickerListView;

    .line 2554
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 2555
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 2556
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    if-eqz v1, :cond_7

    .line 2557
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerDBHelper;->close()V

    .line 2558
    :cond_7
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    .line 2560
    return-void

    .line 2509
    :catch_0
    move-exception v0

    .line 2511
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3620
    const/4 v2, 0x0

    .line 3623
    .local v2, result:Z
    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    .line 3625
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v3}, Lcom/htc/app/FilePickerActionBarExtController;->isSearchBarVisibled()Z

    move-result v1

    .line 3626
    .local v1, isSearchBarVisibled:Z
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v3}, Lcom/htc/app/FilePickerActionBarExtController;->isActionBarContainerBackUpEnabled()Z

    move-result v0

    .line 3629
    .local v0, isActionBarContainerBackUpEnabled:Z
    if-eqz v1, :cond_1

    .line 3630
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->hideSearchBar()V

    .line 3631
    const/4 v2, 0x1

    .line 3639
    .end local v0           #isActionBarContainerBackUpEnabled:Z
    .end local v1           #isSearchBarVisibled:Z
    :cond_0
    :goto_0
    return v2

    .line 3633
    .restart local v0       #isActionBarContainerBackUpEnabled:Z
    .restart local v1       #isSearchBarVisibled:Z
    :cond_1
    if-eqz v0, :cond_0

    .line 3634
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showLandingPage()V

    .line 3635
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3596
    const/16 v2, 0x54

    if-ne p1, v2, :cond_1

    .line 3597
    const/4 v1, 0x0

    .line 3598
    .local v1, isSearchBarVisibled:Z
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    if-eqz v2, :cond_0

    .line 3599
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerActionBarExtController;->isSearchBarVisibled()Z

    move-result v1

    .line 3601
    :cond_0
    if-eqz v1, :cond_2

    .line 3602
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->hideSearchBar()V

    .line 3617
    .end local v1           #isSearchBarVisibled:Z
    :cond_1
    :goto_0
    return-void

    .line 3604
    .restart local v1       #isSearchBarVisibled:Z
    :cond_2
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v2

    invoke-static {v2}, Lcom/htc/app/FilePickerUtil;->isLocalDataSourceType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3606
    const-string v2, "Tab_Type"

    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3607
    const/4 v0, 0x0

    .line 3608
    .local v0, fileCount:I
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v2, :cond_3

    .line 3609
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v0

    .line 3610
    :cond_3
    iget-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    .line 3611
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showSearchBar()V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 2722
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2723
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v0, :cond_0

    .line 2724
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 2725
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    if-eqz v0, :cond_1

    .line 2726
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    invoke-interface {v0}, Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;->onFileScanEnd()V

    .line 2728
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v0, :cond_2

    .line 2729
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 2730
    :cond_2
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoriteDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    if-eqz v0, :cond_3

    .line 2731
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoriteDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    invoke-interface {v0}, Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;->onFileScanEnd()V

    .line 2733
    :cond_3
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v0, :cond_4

    .line 2734
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 2735
    :cond_4
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    if-eqz v0, :cond_5

    .line 2736
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    invoke-interface {v0}, Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;->onFileScanEnd()V

    .line 2740
    :cond_5
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)V
    .locals 6
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 2563
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 2564
    .local v1, id:I
    packed-switch v1, :pswitch_data_0

    .line 2605
    :goto_0
    return-void

    .line 2566
    :pswitch_0
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v0

    .line 2567
    .local v0, dataSourceType:I
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v4

    invoke-static {v4}, Lcom/htc/app/FilePickerUtil;->isLocalDataSourceType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2568
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v4, v0}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 2569
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchLocalPicker()V

    goto :goto_0

    .line 2571
    :cond_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/htc/app/FilePickerCloudHelper;->setServiceRefresh(IZ)V

    .line 2572
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v4, v0}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 2574
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v4, v0}, Lcom/htc/app/FilePickerCloudHelper;->hasAnyAccountSignIn(I)Z

    move-result v3

    .line 2575
    .local v3, isSingIn:Z
    if-eqz v3, :cond_1

    .line 2576
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z

    .line 2578
    iget-boolean v4, p0, Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z

    if-nez v4, :cond_1

    .line 2579
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 2583
    :cond_1
    iget-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    if-eqz v4, :cond_2

    .line 2584
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchCloudFolderPicker()V

    goto :goto_0

    .line 2586
    :cond_2
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchCloudFilePicker()V

    goto :goto_0

    .line 2592
    .end local v0           #dataSourceType:I
    .end local v3           #isSingIn:Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 2595
    :pswitch_2
    const/4 v2, 0x0

    .line 2596
    .local v2, isSearchBarVisibled:Z
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    if-eqz v4, :cond_3

    .line 2597
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerActionBarExtController;->isSearchBarVisibled()Z

    move-result v2

    .line 2598
    :cond_3
    if-eqz v2, :cond_4

    .line 2599
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->hideSearchBar()V

    goto :goto_0

    .line 2601
    :cond_4
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showSearchBar()V

    goto :goto_0

    .line 2564
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/high16 v5, 0x100

    .line 205
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 206
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 208
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 209
    .local v1, w:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "common_app_bkg"

    const v4, 0x2080001

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 211
    .local v0, bgId:I
    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 213
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Extra_Sense_Version:Ljava/lang/String;

    const-string v3, "4.0a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/view/Window;->setFlags(II)V

    .line 220
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public onPrepareDialog()V
    .locals 0

    .prologue
    .line 2608
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 23
    .parameter "menu"

    .prologue
    .line 2611
    const/4 v9, 0x0

    .line 2612
    .local v9, enableSortOptionMenu:Z
    const/4 v8, 0x0

    .line 2613
    .local v8, enableSearchOptionMenu:Z
    const/4 v7, 0x0

    .line 2615
    .local v7, enableRefreshOptionMenu:Z
    const/4 v10, 0x0

    .line 2616
    .local v10, fileCount:I
    const/16 v17, 0x0

    .line 2621
    .local v17, listCount:I
    const/4 v11, 0x0

    .line 2623
    .local v11, firstLevelFileCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v6

    .line 2624
    .local v6, dataSourceType:I
    invoke-static {v6}, Lcom/htc/app/FilePickerUtil;->isCloudDataSourceType(I)Z

    move-result v12

    .line 2625
    .local v12, isCloudDataSourceType:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const v22, 0x20200bf

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 2626
    .local v18, local_carousel_view:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_1

    .line 2627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 2628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v10

    .line 2629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/app/FilePickerListAdapter;->getCount()I

    move-result v17

    .line 2631
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    if-lez v17, :cond_8

    const/4 v9, 0x1

    .line 2632
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    if-lez v10, :cond_9

    const/4 v8, 0x1

    .line 2633
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    .line 2635
    :cond_1
    const/16 v20, 0x0

    .line 2636
    .local v20, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    if-eqz v12, :cond_b

    .line 2637
    const/4 v3, 0x0

    .line 2638
    .local v3, accounts:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 2639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v3

    .line 2640
    :cond_2
    if-eqz v3, :cond_a

    array-length v0, v3

    move/from16 v21, v0

    if-lez v21, :cond_a

    .line 2641
    const/16 v21, 0x0

    aget-object v21, v3, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v6, v1}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v20

    .line 2649
    .end local v3           #accounts:[Ljava/lang/String;
    :goto_2
    if-eqz v20, :cond_3

    .line 2650
    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getFolderAdapter()Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v19

    .line 2651
    .local v19, moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    if-eqz v19, :cond_3

    .line 2652
    invoke-virtual/range {v19 .. v19}, Lcom/htc/app/FilePickerFolderAdapter;->getFirstLevelFileCount()I

    move-result v11

    .line 2653
    invoke-virtual/range {v19 .. v19}, Lcom/htc/app/FilePickerFolderAdapter;->isCanSort()Z

    move-result v21

    if-eqz v21, :cond_c

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v11, v0, :cond_c

    const/4 v9, 0x1

    .line 2654
    :goto_3
    invoke-virtual/range {v19 .. v19}, Lcom/htc/app/FilePickerFolderAdapter;->isCanSort()Z

    move-result v7

    .line 2658
    .end local v19           #moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    :cond_3
    const/4 v14, 0x1

    .line 2659
    .local v14, isSearchMenuItemVisabled:Z
    const/4 v13, 0x1

    .line 2660
    .local v13, isRefreshMenuItemVisabled:Z
    const/16 v16, 0x1

    .line 2661
    .local v16, isSortMenuItemVisabled:Z
    invoke-static {v6}, Lcom/htc/app/FilePickerUtil;->isCloudDataSourceType(I)Z

    move-result v12

    .line 2662
    if-eqz v12, :cond_d

    .line 2663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/htc/app/FilePickerCloudHelper;->hasAnyAccountSignIn(I)Z

    move-result v15

    .line 2664
    .local v15, isSingIn:Z
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z

    .line 2665
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    .line 2666
    const/4 v7, 0x1

    .line 2667
    const/4 v8, 0x0

    .line 2669
    :cond_4
    if-nez v15, :cond_5

    .line 2670
    const/4 v7, 0x0

    .line 2671
    const/4 v8, 0x0

    .line 2672
    const/4 v14, 0x0

    .line 2673
    const/4 v13, 0x0

    .line 2674
    const/16 v16, 0x0

    .line 2693
    .end local v15           #isSingIn:Z
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 2694
    :cond_6
    const/4 v14, 0x0

    .line 2695
    const/4 v13, 0x0

    .line 2696
    const/16 v16, 0x0

    .line 2702
    :cond_7
    :goto_5
    const/16 v21, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1, v8}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2703
    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1, v7}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2704
    const/16 v21, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1, v9}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2706
    const/16 v22, 0x3

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    const/16 v21, 0x1

    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2707
    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1, v13}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2708
    const/16 v22, 0x2

    if-eqz v16, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerCore;->mIsSortMenuItemVisabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_12

    const/16 v21, 0x1

    :goto_7
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2709
    return-void

    .line 2631
    .end local v13           #isRefreshMenuItemVisabled:Z
    .end local v14           #isSearchMenuItemVisabled:Z
    .end local v16           #isSortMenuItemVisabled:Z
    .end local v20           #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2632
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 2643
    .restart local v3       #accounts:[Ljava/lang/String;
    .restart local v20       #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_a
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v6, v1}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v20

    goto/16 :goto_2

    .line 2646
    .end local v3           #accounts:[Ljava/lang/String;
    :cond_b
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v6, v1}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v20

    goto/16 :goto_2

    .line 2653
    .restart local v19       #moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 2677
    .end local v19           #moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    .restart local v13       #isRefreshMenuItemVisabled:Z
    .restart local v14       #isSearchMenuItemVisabled:Z
    .restart local v16       #isSortMenuItemVisabled:Z
    :cond_d
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageAvailable()Z

    move-result v5

    .line 2678
    .local v5, bInternalStorageAvailable:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageAvailable()Z

    move-result v4

    .line 2679
    .local v4, bExternalStorageAvailable:Z
    if-nez v5, :cond_e

    if-eqz v4, :cond_f

    .line 2680
    :cond_e
    const/4 v14, 0x1

    .line 2681
    const/4 v13, 0x1

    .line 2682
    const/16 v16, 0x1

    .line 2683
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/app/FilePickerCore;->setMenuItemVisibled(Landroid/view/Menu;Z)V

    goto/16 :goto_4

    .line 2685
    :cond_f
    const/4 v7, 0x0

    .line 2686
    const/4 v14, 0x0

    .line 2687
    const/4 v13, 0x0

    .line 2688
    const/16 v16, 0x0

    .line 2689
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/app/FilePickerCore;->setMenuItemVisibled(Landroid/view/Menu;Z)V

    goto/16 :goto_4

    .line 2697
    .end local v4           #bExternalStorageAvailable:Z
    .end local v5           #bInternalStorageAvailable:Z
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 2698
    const/4 v14, 0x0

    .line 2699
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 2706
    :cond_11
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 2708
    :cond_12
    const/16 v21, 0x0

    goto :goto_7
.end method

.method performListViewOnItemClickListenerItemClick(ILandroid/view/View;Lcom/htc/app/FilePickerListAdapter;)V
    .locals 6
    .parameter "position"
    .parameter "view"
    .parameter "adapter"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 767
    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/htc/app/FilePickerListAdapter;->getCount()I

    move-result v5

    if-le p1, v5, :cond_2

    .line 768
    :cond_0
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    const-string v4, "Click at out of index item"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_1
    :goto_0
    return-void

    .line 771
    :cond_2
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p3, v5}, Lcom/htc/app/FilePickerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/ItemInfo;

    .line 772
    .local v2, selectedItem:Lcom/htc/app/ItemInfo;
    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v5

    if-nez v5, :cond_1

    .line 775
    iget v5, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    if-nez v5, :cond_5

    .line 776
    new-array v1, v3, [Ljava/lang/String;

    .line 777
    .local v1, output:[Ljava/lang/String;
    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 783
    const-string v3, "Tab_Type"

    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 784
    invoke-virtual {p3}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 786
    :cond_3
    iget v3, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    iget v5, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-direct {p0, v1, v3, v5}, Lcom/htc/app/FilePickerCore;->onResult([Ljava/lang/String;II)V

    .line 787
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->finish()V

    .line 793
    .end local v1           #output:[Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v3, "Tab_Type"

    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 794
    invoke-virtual {p3, v4}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    goto :goto_0

    .line 788
    :cond_5
    iget v5, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    if-ne v5, v3, :cond_4

    .line 789
    const v5, 0x20200b3

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcCheckBox;

    .line 790
    .local v0, htcCheckBox:Lcom/htc/widget/HtcCheckBox;
    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->isChecked()Z

    move-result v5

    if-nez v5, :cond_6

    :goto_2
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_2
.end method

.method public setFavoritesFragment(Lcom/htc/app/FilePickerFavoritesFragment;)V
    .locals 0
    .parameter "fragement"

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerFavoritesFragment:Lcom/htc/app/FilePickerFavoritesFragment;

    .line 1446
    return-void
.end method

.method setListViewHeaderAnimationEnabled(IZ)V
    .locals 10
    .parameter "resId"
    .parameter "visibled"

    .prologue
    const/4 v9, 0x0

    .line 3125
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FilePickerListView;

    .line 3126
    .local v1, listView:Lcom/htc/app/FilePickerListView;
    if-eqz v1, :cond_0

    .line 3127
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3128
    .local v5, rocketImage:Landroid/widget/ImageView;
    const v6, 0x20a0004

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3129
    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    .line 3131
    .local v4, rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;
    const v6, 0x20200c6

    invoke-virtual {v1, v6}, Lcom/htc/app/FilePickerListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemSeparator;

    .line 3133
    .local v0, htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    if-nez v0, :cond_1

    .line 3147
    .end local v0           #htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    .end local v4           #rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;
    .end local v5           #rocketImage:Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 3135
    .restart local v0       #htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    .restart local v4       #rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;
    .restart local v5       #rocketImage:Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v0, v9, v4}, Lcom/htc/widget/HtcListItemSeparator;->setIcon(ILandroid/graphics/drawable/Drawable;)V

    .line 3136
    if-eqz p2, :cond_2

    .line 3137
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20400a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3139
    .local v2, loadingStr:Ljava/lang/String;
    invoke-virtual {v0, v9, v2}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 3140
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 3142
    .end local v2           #loadingStr:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/htc/app/FilePickerUtil;->getFormatedTime(J)Ljava/lang/String;

    move-result-object v3

    .line 3143
    .local v3, refreshTime:Ljava/lang/String;
    invoke-virtual {v0, v9, v3}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 3144
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method setNoFileFoundTextOfTypeView()V
    .locals 8

    .prologue
    const v7, 0x2040159

    const v6, 0x2040149

    .line 3072
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x20200cb

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3073
    .local v3, typeViewLayout:Landroid/view/View;
    if-nez v3, :cond_1

    .line 3100
    :cond_0
    :goto_0
    return-void

    .line 3075
    :cond_1
    const v4, 0x20200aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3076
    .local v1, emptyView:Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 3077
    .local v2, noFileFoundText:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v0

    .line 3079
    .local v0, dataSourceType:I
    sparse-switch v0, :sswitch_data_0

    .line 3094
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3097
    :goto_1
    if-eqz v1, :cond_0

    .line 3098
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3081
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3082
    goto :goto_1

    .line 3084
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3085
    goto :goto_1

    .line 3087
    :sswitch_2
    sget-boolean v4, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v4, :cond_2

    .line 3088
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3090
    :cond_2
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3092
    goto :goto_1

    .line 3079
    nop

    :sswitch_data_0
    .sparse-switch
        -0x9 -> :sswitch_2
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method setNoFileViewEmptyTextOfTypeView()V
    .locals 4

    .prologue
    .line 3103
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x20200cb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3104
    .local v1, typeViewLayout:Landroid/view/View;
    if-nez v1, :cond_1

    .line 3110
    :cond_0
    :goto_0
    return-void

    .line 3106
    :cond_1
    const v2, 0x20200aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3107
    .local v0, emptyView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 3108
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setRecentFragment(Lcom/htc/app/FilePickerRecentFragment;)V
    .locals 0
    .parameter "fragement"

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerRecentFragment:Lcom/htc/app/FilePickerRecentFragment;

    .line 1457
    return-void
.end method

.method setTypeAdapter(Lcom/htc/app/FilePickerListAdapter;)V
    .locals 0
    .parameter "typeAdapter"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 117
    return-void
.end method
