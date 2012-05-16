.class public Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
.super Landroid/app/ActivityGroup;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Lcom/htc/music/widget/IDismissBubbleInterface;
.implements Lcom/htc/music/widget/IMusicTabActivityInterface;
.implements Lcom/htc/music/MiniPlayer$ILoadSuccessListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;,
        Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;,
        Lcom/htc/music/browserlayer/MusicBrowserTabActivity$MyIdleHandler;
    }
.end annotation


# static fields
.field private static final FIRST_CONTENT_INDEX:I = 0x0

.field public static final LAUNCH_PARAMETER_NOT_SAVE_HISTORY:I = 0x3

.field public static final LAUNCH_PARAMETER_REMOVE_PREVIOUS:I = 0x0

.field public static final LAUNCH_PARAMETER_SAVE_HISTORY_INTENT:I = 0x1

.field public static final LAUNCH_PARAMETER_SAVE_HISTORY_VIEW:I = 0x2

.field private static final LOAD_UI:I = 0x2ee1

.field private static final LOCKSCREEN_START_ACTIVITY:Ljava/lang/String; = "com.htc.music.lockscreen_start"

.field private static final MAX_CONTENT_FRAME:I = 0x1

.field private static final MENU_CATEGORY_SWITCH:I = 0x2712

.field private static final MENU_PLAYER:I = 0x2711

.field private static final MENU_SEARCH:I = 0x2710

.field private static final REMOVE_FIRST_VIEW:I = 0x2ee2

.field private static final TAG:Ljava/lang/String; = "[MusicBrowserTabActivity]"


# instance fields
.field protected mActionBar:Lcom/htc/widget/ActionBarExt;

.field protected mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

.field private mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

.field private mActivityResumed:Z

.field private mArtistId:Ljava/lang/String;

.field private mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field public mCategoryRightClickAction:Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

.field private mComposer:Ljava/lang/String;

.field protected mContentView:Landroid/widget/FrameLayout;

.field private mDestroyed:Z

.field private mErrorView:Landroid/view/View;

.field private mEventReceiver:Landroid/content/BroadcastReceiver;

.field protected mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

.field private mGenreId:Ljava/lang/String;

.field private mHandlingCreateOptionsMenu:Z

.field private mHandlingOptionsItemSelected:Z

.field private mHandlingPrepareOptionsMenu:Z

.field private mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

.field protected mHistoryManager:Lcom/htc/music/util/HistoryManager;

.field private mInternalEnough:Z

.field private mMenu:Landroid/view/Menu;

.field private mMimeType:Ljava/lang/String;

.field protected mMiniPlayer:Lcom/htc/music/MiniPlayer;

.field public mOnlineSearchAction:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field private mPlaylistUri:Ljava/lang/String;

.field public mSearchAction:Landroid/view/View$OnClickListener;

.field private mSourceItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 83
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 85
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    .line 86
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 88
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 89
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 94
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 106
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    .line 108
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 110
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    .line 116
    iput v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    .line 118
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mPlaylistUri:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mGenreId:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mComposer:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mArtistId:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    .line 124
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActivityResumed:Z

    .line 334
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;

    .line 533
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    .line 566
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    .line 568
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    .line 631
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    .line 674
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    .line 966
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mDestroyed:Z

    .line 1180
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 1705
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$3;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    .line 1714
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$4;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    .line 1746
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryRightClickAction:Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;

    .line 1781
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$5;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSearchAction:Landroid/view/View$OnClickListener;

    .line 1787
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$6;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOnlineSearchAction:Landroid/view/View$OnClickListener;

    .line 1850
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 1852
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Lcom/htc/music/widget/SourceSwitcherAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Lcom/htc/music/widget/CategorySwitcherAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startOnlineSearchPage()V

    return-void
.end method

.method private initTitle()V
    .locals 6

    .prologue
    .line 397
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v1, :cond_0

    .line 436
    :goto_0
    return-void

    .line 399
    :cond_0
    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 400
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$2;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$2;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 413
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isLandingPageEnable()Z

    move-result v0

    .line 419
    .local v0, enableHtcListen:Z
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v1, v0}, Lcom/htc/music/util/HistoryManager;->enableHtcListen(Z)V

    .line 421
    new-instance v1, Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-direct {v1, p0}, Lcom/htc/music/widget/CategorySwitcherAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 422
    new-instance v1, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v2, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;-><init>(Landroid/content/Context;Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/util/HistoryManager;)V

    invoke-direct {v1, p0, v2}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 429
    new-instance v1, Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-direct {v1, p0, v0}, Lcom/htc/music/widget/SourceSwitcherAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    .line 430
    new-instance v1, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v2, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;-><init>(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/util/HistoryManager;)V

    invoke-direct {v1, p0, v2}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    goto :goto_0
.end method

.method private launchGlancePage()V
    .locals 3

    .prologue
    .line 1740
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1741
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "showEmptyQueue"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1742
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1743
    return-void
.end method

.method private resetMiniPlayer(Z)V
    .locals 3
    .parameter "isHorizontal"

    .prologue
    const v2, 0x7f080019

    .line 483
    if-eqz p1, :cond_2

    .line 484
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_1

    .line 485
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 487
    .local v0, container:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 518
    .end local v0           #container:Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    invoke-static {p0}, Lcom/htc/music/MiniPlayer$MiniPlayerCreator;->createMiniPlayer(Landroid/app/Activity;)Lcom/htc/music/MiniPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 496
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->isActivityResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1, p0}, Lcom/htc/music/MiniPlayer;->addLoadSuccessListener(Lcom/htc/music/MiniPlayer$ILoadSuccessListener;)V

    .line 498
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    goto :goto_0

    .line 502
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-nez v1, :cond_3

    .line 503
    invoke-static {p0}, Lcom/htc/music/MiniPlayer$MiniPlayerCreator;->createMiniPlayer(Landroid/app/Activity;)Lcom/htc/music/MiniPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 505
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 506
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->inflateView()V

    .line 509
    :cond_4
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 511
    .restart local v0       #container:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 513
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->isActivityResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1, p0}, Lcom/htc/music/MiniPlayer;->addLoadSuccessListener(Lcom/htc/music/MiniPlayer$ILoadSuccessListener;)V

    .line 515
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    goto :goto_0
.end method

.method private setDropDownEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 740
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 751
    :goto_0
    return-void

    .line 744
    :cond_0
    if-eqz p1, :cond_1

    .line 745
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarDropDown;->setClickable(Z)V

    .line 746
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    goto :goto_0

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setClickable(Z)V

    .line 749
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    goto :goto_0
.end method

.method private setTitleStyle(ILjava/lang/String;Z)V
    .locals 3
    .parameter "type"
    .parameter "tag"
    .parameter "forceDisableDropDown"

    .prologue
    .line 761
    and-int/lit16 v0, p1, 0xfe

    .line 762
    .local v0, iType:I
    and-int/lit8 v2, p1, 0x1

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 763
    .local v1, manualMainTitle:Z
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 790
    :goto_1
    :pswitch_0
    return-void

    .line 762
    .end local v1           #manualMainTitle:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 766
    .restart local v1       #manualMainTitle:Z
    :pswitch_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategorySwitcherStyleTitle(ZLjava/lang/String;Z)V

    goto :goto_1

    .line 770
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setSourceSwitcherStyleTitle(Z)V

    goto :goto_1

    .line 774
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDLNASourceSwitcherStyleTitle(Z)V

    goto :goto_1

    .line 778
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDLNASwitchStyleTitle(Z)V

    goto :goto_1

    .line 782
    :pswitch_5
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setStoreSwitchStyleTitle(Z)V

    goto :goto_1

    .line 763
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private showInternalStorageErrorMode()V
    .locals 4

    .prologue
    .line 536
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 538
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v2, 0x7f030051

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    .line 545
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    const v3, 0x7f080091

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 546
    .local v0, errorMessage:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 547
    const v2, 0x7f07004a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 551
    .end local v0           #errorMessage:Landroid/widget/TextView;
    .end local v1           #inflator:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->changeContentView(Landroid/view/View;)V

    .line 552
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 554
    return-void
.end method

.method private startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4
    .parameter "mimeType"
    .parameter "intent"

    .prologue
    .line 1511
    if-nez p1, :cond_1

    .line 1542
    :cond_0
    :goto_0
    return-void

    .line 1512
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    if-eqz v1, :cond_0

    .line 1514
    const-string v1, "com.htc.media/dlna"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1515
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    const-string v2, "DlnaBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/SourceSwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    .line 1516
    .local v0, item:Lcom/htc/music/util/SourceItem;
    iget-object v1, v0, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v2, v0, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 1528
    .end local v0           #item:Lcom/htc/music/util/SourceItem;
    :cond_2
    const/4 v0, 0x0

    .line 1529
    .restart local v0       #item:Lcom/htc/music/util/SourceItem;
    const-string v1, "com.htc.media/album"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1530
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    const-string v2, "AlbumBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    .line 1537
    :goto_1
    iget-object v1, v0, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v2, "LaunchFromSwitcher"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1538
    iget-object v1, v0, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v2, v0, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 1531
    :cond_3
    const-string v1, "com.htc.media/track"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1532
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    const-string v2, "TrackBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    goto :goto_1

    .line 1534
    :cond_4
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    const-string v2, "AlbumBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    goto :goto_1
.end method

.method private startListenStore()V
    .locals 4

    .prologue
    .line 1693
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.online.strorefont"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1694
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "InnerActivityType"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1697
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1702
    :goto_0
    return-void

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "Opps, we can\'t launch store activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startOnlineSearchPage()V
    .locals 2

    .prologue
    .line 1794
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.ONLINESEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1795
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1796
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1797
    return-void
.end method


# virtual methods
.method protected changeContentView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 1454
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 1456
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 1457
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1485
    :cond_0
    :goto_0
    return-void

    .line 1458
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1459
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1465
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1466
    const-string v1, "[MusicBrowserTabActivity]"

    const-string v3, "changeContentView with view parent is not null!!"

    invoke-static {v1, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1470
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 1471
    .local v0, removeFirst:Z
    :goto_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1475
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1477
    if-eqz v0, :cond_0

    .line 1478
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 1479
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x2ee2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .end local v0           #removeFirst:Z
    :cond_4
    move v0, v2

    .line 1470
    goto :goto_1

    .line 1481
    .restart local v0       #removeFirst:Z
    :cond_5
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    goto :goto_0
.end method

.method public disableCategoryDropDown()V
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 1250
    :cond_0
    return-void
.end method

.method public dismissPopupBubble()V
    .locals 1

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    .line 1661
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1818
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v2, :cond_0

    .line 1819
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v2, p1}, Lcom/htc/music/MiniPlayer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1820
    .local v1, result:Z
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1827
    .end local v1           #result:Z
    :goto_0
    return v2

    .line 1823
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1824
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 1825
    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1827
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1440
    invoke-super {p0}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1441
    .local v2, currentActivity:Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 1450
    .end local v2           #currentActivity:Landroid/app/Activity;
    :goto_0
    return-object v2

    .line 1443
    .restart local v2       #currentActivity:Landroid/app/Activity;
    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 1444
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1445
    .local v1, childView:Landroid/view/View;
    if-nez v1, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 1446
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1447
    .local v0, childContext:Landroid/content/Context;
    if-eqz v0, :cond_2

    if-ne v0, p0, :cond_3

    :cond_2
    move-object v2, v3

    goto :goto_0

    .line 1448
    :cond_3
    check-cast v0, Landroid/app/Activity;

    .end local v0           #childContext:Landroid/content/Context;
    move-object v2, v0

    goto :goto_0

    .end local v1           #childView:Landroid/view/View;
    :cond_4
    move-object v2, v3

    .line 1450
    goto :goto_0
.end method

.method public getLastCategoryIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1841
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    if-eqz v1, :cond_0

    .line 1842
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v1, p0, v2}, Lcom/htc/music/util/HistoryManager;->getLastCategoryItem(Landroid/content/Context;Lcom/htc/music/widget/CategorySwitcherAdapter;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    .line 1843
    .local v0, selectedCategoryItem:Lcom/htc/music/util/SourceItem;
    iget-object v1, v0, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    .line 1847
    .end local v0           #selectedCategoryItem:Lcom/htc/music/util/SourceItem;
    :goto_0
    return-object v1

    .line 1846
    :cond_0
    const-string v1, "[MusicBrowserTabActivity]"

    const-string v2, "can\'t get last category item!! should never happen!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method protected inflateTitle()V
    .locals 4

    .prologue
    .line 439
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-nez v2, :cond_0

    .line 440
    new-instance v2, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v2, :cond_1

    .line 443
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 446
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarDropDown;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 447
    .local v1, parent:Landroid/view/ViewParent;
    if-nez v1, :cond_3

    .line 449
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_2
    :goto_0
    return-void

    .line 450
    .restart local v1       #parent:Landroid/view/ViewParent;
    :catch_0
    move-exception v0

    .line 451
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 453
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eq v2, v1, :cond_2

    .line 454
    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "mActionBarCustomContainer already has a parent and its not actionBar!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #parent:Landroid/view/ViewParent;
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 457
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 458
    :catch_1
    move-exception v0

    .line 459
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected initMiniPlayer()V
    .locals 2

    .prologue
    .line 466
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->resetMiniPlayer(Z)V

    .line 467
    return-void

    .line 466
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isActivityResumed()Z
    .locals 1

    .prologue
    .line 1832
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActivityResumed:Z

    return v0
.end method

.method public loadSuccessChange(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 472
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    const/16 v2, 0x2711

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 474
    .local v0, player:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 475
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 480
    .end local v0           #player:Landroid/view/MenuItem;
    :cond_0
    :goto_0
    return-void

    .line 477
    .restart local v0       #player:Landroid/view/MenuItem;
    :cond_1
    const-string v1, "[MusicBrowserTabActivity]"

    const-string v2, "mini player is null when reset menu at rotate to landscape mode!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1192
    const v0, 0xc351

    if-ne p1, v0, :cond_0

    .line 1193
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startListenStore()V

    .line 1201
    :goto_0
    return-void

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v0, :cond_1

    .line 1198
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/widget/MusicMaActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1200
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    .line 1207
    const/4 v1, 0x0

    .line 1208
    .local v1, childhandled:Z
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1209
    .local v0, child:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/app/ActivityGroup;

    if-eqz v3, :cond_0

    .line 1210
    check-cast v0, Landroid/app/ActivityGroup;

    .end local v0           #child:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1213
    .restart local v0       #child:Landroid/app/Activity;
    :cond_0
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v3, :cond_1

    .line 1214
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    .end local v0           #child:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/htc/music/widget/MusicMaActivity;->onMaBackPressed()Z

    move-result v1

    .line 1217
    :cond_1
    if-eqz v1, :cond_2

    .line 1235
    :goto_0
    return-void

    .line 1219
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 1220
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v2

    .line 1226
    .local v2, lastActivityHisory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousIntent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    .line 1227
    iget-object v3, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousTag:Ljava/lang/String;

    iget-object v4, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0

    .line 1229
    :cond_3
    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "intent and cached view are null!! should never happen!! "

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1233
    .end local v2           #lastActivityHisory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_4
    invoke-super {p0}, Landroid/app/ActivityGroup;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 1033
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1034
    iget v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1035
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    .line 1038
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->inflateTitle()V

    .line 1040
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_2

    .line 1041
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1044
    :cond_2
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->resetMiniPlayer(Z)V

    .line 1047
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1048
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1049
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 1044
    .end local v0           #activity:Landroid/app/Activity;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    .line 225
    const-string v8, "[MusicBrowserTabActivity]"

    const-string v9, "tab oncreate"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 229
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 232
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 233
    iget-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v8, :cond_0

    .line 234
    new-instance v8, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;)V

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 235
    new-instance v1, Landroid/content/IntentFilter;

    const-string v8, "com.htc.music.lockscreen_start"

    invoke-direct {v1, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 236
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    const-string v8, "from-lockscreen"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 240
    .local v3, isFromLockscreen:Z
    const-string v8, "inner-transition"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 241
    .local v4, isInnerTransition:Z
    const-string v8, "[MusicBrowserTabActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[onCreate] from-lockscreen="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    if-nez v4, :cond_1

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 243
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->disableKeyguard(Landroid/app/Activity;)V

    .line 249
    .end local v3           #isFromLockscreen:Z
    .end local v4           #isInnerTransition:Z
    :cond_2
    :goto_0
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->requestWindowFeature(I)Z

    .line 258
    const-string v8, "SaveRender"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 259
    .local v5, nSaveDMR:I
    const-string v8, "Render"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 260
    .local v6, szDMR:Ljava/lang/String;
    const-string v8, "Server"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, szDMS:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 264
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "DLNA"

    const/4 v10, 0x7

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 266
    .local v0, Preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "Render"

    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "server"

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 271
    .end local v0           #Preferences:Landroid/content/SharedPreferences;
    :cond_3
    if-eqz p1, :cond_5

    .line 281
    :goto_1
    const v8, 0x7f030003

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setContentView(I)V

    .line 286
    const v8, 0x7f08001a

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 288
    new-instance v8, Lcom/htc/music/util/HistoryManager;

    invoke-direct {v8, p0}, Lcom/htc/music/util/HistoryManager;-><init>(Landroid/app/ActivityGroup;)V

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    .line 290
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    .line 292
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->initTitle()V

    .line 293
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->initMiniPlayer()V

    .line 297
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    .line 320
    return-void

    .line 245
    .end local v5           #nSaveDMR:I
    .end local v6           #szDMR:Ljava/lang/String;
    .end local v7           #szDMS:Ljava/lang/String;
    .restart local v3       #isFromLockscreen:Z
    .restart local v4       #isInnerTransition:Z
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto :goto_0

    .line 274
    .end local v3           #isFromLockscreen:Z
    .end local v4           #isInnerTransition:Z
    .restart local v5       #nSaveDMR:I
    .restart local v6       #szDMR:Ljava/lang/String;
    .restart local v7       #szDMS:Ljava/lang/String;
    :cond_5
    const-string v8, "playlisturi"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mPlaylistUri:Ljava/lang/String;

    .line 275
    const-string v8, "genreid"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mGenreId:Ljava/lang/String;

    .line 276
    const-string v8, "composer"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mComposer:Ljava/lang/String;

    .line 277
    const-string v8, "artistid"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mArtistId:Ljava/lang/String;

    .line 278
    invoke-virtual {v2, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "params"

    .prologue
    .line 727
    packed-switch p1, :pswitch_data_0

    .line 732
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 729
    :pswitch_0
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 727
    nop

    :pswitch_data_0
    .packed-switch 0xaae61
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x204026d

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 571
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    if-eqz v0, :cond_0

    .line 611
    :goto_0
    return v2

    .line 572
    :cond_0
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    .line 575
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eq v0, p1, :cond_1

    .line 576
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "not same menu panel!! return directly"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 582
    iput-object p1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    .line 587
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    const/16 v1, 0x2710

    invoke-interface {v0, v2, v1, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20800c2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 593
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    const v1, 0xc350

    invoke-interface {v0, v2, v1, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 609
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->onPrepareInnerOptionsMenu(Landroid/view/Menu;)Z

    .line 610
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 970
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mDestroyed:Z

    .line 971
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 973
    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/view/SSurfaceView;

    .line 974
    .local v0, view:Lcom/htc/sunny2/view/SSurfaceView;
    if-eqz v0, :cond_0

    .line 975
    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->destroy()V

    .line 976
    const/4 v0, 0x0

    .line 979
    :cond_0
    iput-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 980
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v1, p0}, Lcom/htc/music/util/HistoryManager;->saveHistoryInstanceState(Landroid/content/Context;)V

    .line 981
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v1}, Lcom/htc/music/util/HistoryManager;->clearHistory()V

    .line 983
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_1

    .line 984
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->release()V

    .line 985
    iput-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 988
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    if-eqz v1, :cond_2

    .line 989
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v1}, Lcom/htc/music/widget/SourceSwitcherAdapter;->releaseAdapter()V

    .line 990
    iput-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    .line 993
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    if-eqz v1, :cond_3

    .line 994
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v1}, Lcom/htc/music/widget/CategorySwitcherAdapter;->releaseAdapter()V

    .line 995
    iput-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 998
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 999
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1003
    :cond_4
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1004
    invoke-static {p0}, Lcom/htc/music/util/ScreenStatus;->unRegisterReceiver(Landroid/app/Activity;)V

    .line 1005
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_5

    .line 1006
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1007
    iput-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 1010
    :cond_5
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    .line 128
    const-string v11, "[MusicBrowserTabActivity]"

    const-string v12, "tab receive new intent"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 131
    const-string v11, "from-lockscreen"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 132
    .local v3, isFromLockscreen:Z
    const-string v11, "inner-transition"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 133
    .local v4, isInnerTransition:Z
    const-string v11, "[MusicBrowserTabActivity]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[onNewIntent] from-lockscreen="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 138
    .local v1, current:Landroid/app/Activity;
    if-eqz v1, :cond_7

    instance-of v11, v1, Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v11, :cond_7

    move-object v6, v1

    .line 139
    check-cast v6, Lcom/htc/music/widget/MusicMaActivity;

    .line 140
    .local v6, maActivity:Lcom/htc/music/widget/MusicMaActivity;
    invoke-virtual {v6}, Lcom/htc/music/widget/MusicMaActivity;->isByPass()Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v4, :cond_0

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/music/util/MusicUtils;->isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 142
    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->disableKeyguard(Landroid/app/Activity;)V

    .line 152
    .end local v1           #current:Landroid/app/Activity;
    .end local v6           #maActivity:Lcom/htc/music/widget/MusicMaActivity;
    :cond_1
    :goto_0
    const-string v11, "SaveRender"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 153
    .local v7, nSaveDMR:I
    const-string v11, "Render"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 154
    .local v9, szDMR:Ljava/lang/String;
    const-string v11, "Server"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 155
    .local v10, szDMS:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "DLNA"

    const/4 v13, 0x7

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 161
    .local v0, Preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "Render"

    invoke-interface {v11, v12, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "server"

    invoke-interface {v11, v12, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    .end local v0           #Preferences:Landroid/content/SharedPreferences;
    :cond_2
    const-string v11, "playlisturi"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mPlaylistUri:Ljava/lang/String;

    .line 168
    const-string v11, "genreid"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mGenreId:Ljava/lang/String;

    .line 169
    const-string v11, "composer"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mComposer:Ljava/lang/String;

    .line 170
    const-string v11, "artistid"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mArtistId:Ljava/lang/String;

    .line 171
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    .line 173
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    .line 179
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->inflateTitle()V

    .line 180
    iget-object v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v11, :cond_3

    .line 181
    iget-object v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v11}, Lcom/htc/music/MiniPlayer;->inflateView()V

    .line 184
    :cond_3
    iget-object v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    if-eqz v11, :cond_4

    const-string v11, ""

    iget-object v12, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 190
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 191
    .local v2, currentActivity:Landroid/app/Activity;
    if-nez v2, :cond_9

    .line 192
    iget-object v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v11}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v5

    .line 193
    .local v5, item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    if-eqz v5, :cond_8

    .line 194
    iget-object v11, v5, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    iget-object v12, v5, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    const/4 v13, 0x3

    invoke-virtual {p0, v11, v12, v13}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 221
    .end local v2           #currentActivity:Landroid/app/Activity;
    .end local v5           #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_5
    :goto_1
    return-void

    .line 144
    .end local v7           #nSaveDMR:I
    .end local v9           #szDMR:Ljava/lang/String;
    .end local v10           #szDMS:Ljava/lang/String;
    .restart local v1       #current:Landroid/app/Activity;
    .restart local v6       #maActivity:Lcom/htc/music/widget/MusicMaActivity;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 147
    .end local v6           #maActivity:Lcom/htc/music/widget/MusicMaActivity;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 196
    .end local v1           #current:Landroid/app/Activity;
    .restart local v2       #currentActivity:Landroid/app/Activity;
    .restart local v5       #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .restart local v7       #nSaveDMR:I
    .restart local v9       #szDMR:Ljava/lang/String;
    .restart local v10       #szDMS:Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v12, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v11, p0, v12}, Lcom/htc/music/util/HistoryManager;->getLastSourceItem(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;)Lcom/htc/music/util/SourceItem;

    move-result-object v8

    .line 197
    .local v8, selectedSourceItem:Lcom/htc/music/util/SourceItem;
    iget-object v11, v8, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v12, v8, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v11, v12}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    .line 203
    .end local v5           #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .end local v8           #selectedSourceItem:Lcom/htc/music/util/SourceItem;
    :cond_9
    iget-boolean v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    if-nez v11, :cond_5

    .line 204
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->showInternalStorageErrorMode()V

    goto :goto_1

    .line 217
    .end local v2           #currentActivity:Landroid/app/Activity;
    :cond_a
    iget-object v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v11}, Lcom/htc/music/util/HistoryManager;->clearHistory()V

    .line 219
    iget-object v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v11, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 677
    if-nez p1, :cond_0

    move v2, v3

    .line 719
    :goto_0
    return v2

    .line 678
    :cond_0
    iget-boolean v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    if-ne v2, v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 680
    :cond_1
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    .line 681
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->enableKeyguard(Landroid/app/Activity;)V

    .line 682
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 713
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 714
    .local v1, currentActivity:Landroid/app/Activity;
    const/4 v2, 0x0

    .line 715
    .local v2, result:Z
    if-eqz v1, :cond_2

    .line 716
    invoke-virtual {v1, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 718
    :cond_2
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    goto :goto_0

    .line 684
    .end local v1           #currentActivity:Landroid/app/Activity;
    .end local v2           #result:Z
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 685
    .local v0, currectActivity:Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 686
    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5, v3}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 688
    :cond_3
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    goto :goto_0

    .line 692
    .end local v0           #currectActivity:Landroid/app/Activity;
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->launchGlancePage()V

    .line 693
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    goto :goto_0

    .line 682
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 1620
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 1621
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActivityResumed:Z

    .line 1623
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1624
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1625
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x400001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1626
    const-string v2, "[MusicBrowserTabActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Bypass][onPause] Set winParams.flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1628
    return-void
.end method

.method protected onPrepareInnerOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 616
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    .line 617
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeGroup(I)V

    .line 619
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 620
    .local v0, currentActivity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 621
    const v1, 0xc350

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 623
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 624
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 626
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    .line 628
    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x2

    const/16 v3, 0x2711

    const/4 v4, 0x1

    .line 634
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    if-ne v4, v2, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v4

    .line 635
    :cond_1
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    if-eq v4, v2, :cond_0

    .line 637
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    .line 641
    iget v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    if-ne v5, v2, :cond_4

    .line 642
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 644
    const v2, 0x7f07011b

    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02002a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 646
    .local v1, player:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v2, :cond_3

    .line 647
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MiniPlayer;->isLoadTrackSuccess()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 665
    .end local v1           #player:Landroid/view/MenuItem;
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 666
    .local v0, currentActivity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 668
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 670
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    goto :goto_0

    .line 649
    .end local v0           #currentActivity:Landroid/app/Activity;
    .restart local v1       #player:Landroid/view/MenuItem;
    :cond_3
    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "mini player is null when reset menu at rotate to landscape mode!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 653
    .end local v1           #player:Landroid/view/MenuItem;
    :cond_4
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1810
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "tab onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1812
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 1548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActivityResumed:Z

    .line 1551
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 1553
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1557
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_1

    .line 1558
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0, p0}, Lcom/htc/music/MiniPlayer;->addLoadSuccessListener(Lcom/htc/music/MiniPlayer$ILoadSuccessListener;)V

    .line 1559
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    .line 1563
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1564
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$MyIdleHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$MyIdleHandler;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1567
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1803
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "tab onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1805
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0, p0}, Lcom/htc/music/util/HistoryManager;->saveHistoryInstanceState(Landroid/content/Context;)V

    .line 1806
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    .line 326
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {p0}, Lcom/htc/music/util/ScreenStatus;->registerReceiver(Landroid/app/Activity;)V

    .line 329
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1633
    :try_start_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1640
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_0

    .line 1641
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->removeLoadSuccessListener()V

    .line 1642
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    .line 1647
    :cond_0
    return-void

    .line 1634
    :catch_0
    move-exception v0

    .line 1635
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCategoryLeftBtnEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 1321
    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnImage(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 1338
    return-void
.end method

.method public setCategoryLeftBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 1345
    return-void
.end method

.method public setCategoryLeftBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 1351
    return-void
.end method

.method public setCategoryLeftBtnVisible(Z)V
    .locals 1
    .parameter "setVisibile"

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 1325
    if-eqz p1, :cond_1

    .line 1326
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 1331
    :cond_0
    :goto_0
    return-void

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    goto :goto_0
.end method

.method public setCategoryProgressVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 1307
    if-eqz p1, :cond_1

    .line 1308
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method public setCategoryRightBtn2Enable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1404
    return-void
.end method

.method public setCategoryRightBtn2Image(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 1421
    return-void
.end method

.method public setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 1428
    return-void
.end method

.method public setCategoryRightBtn2OnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 1434
    return-void
.end method

.method public setCategoryRightBtn2Visible(Z)V
    .locals 0
    .parameter "setVisibile"

    .prologue
    .line 1414
    return-void
.end method

.method public setCategoryRightBtnEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1372
    return-void
.end method

.method public setCategoryRightBtnImage(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 1383
    return-void
.end method

.method public setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 1390
    return-void
.end method

.method public setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 1396
    return-void
.end method

.method public setCategoryRightBtnVisible(Z)V
    .locals 0
    .parameter "setVisibile"

    .prologue
    .line 1376
    return-void
.end method

.method public setCategorySwitcherStyleTitle(ZLjava/lang/String;Z)V
    .locals 4
    .parameter "manualMainTitle"
    .parameter "tag"
    .parameter "forceDisableDropDown"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 852
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setCategorySwitcherStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 862
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isLandingPageEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 863
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 864
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 904
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v0

    if-le v0, v3, :cond_7

    .line 907
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 908
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    :cond_1
    :goto_1
    return-void

    .line 866
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 867
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 868
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 869
    if-eqz p3, :cond_3

    .line 870
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0

    .line 872
    :cond_3
    invoke-direct {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0

    .line 876
    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 877
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0

    .line 879
    :cond_5
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 880
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 881
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 882
    if-eqz p3, :cond_6

    .line 883
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0

    .line 885
    :cond_6
    invoke-direct {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0

    .line 910
    :cond_7
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    goto :goto_1
.end method

.method public setDLNASourceSwitcherStyleTitle(Z)V
    .locals 2
    .parameter "manualMainTitle"

    .prologue
    .line 795
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setSourceSwitcherStyleTitle(Z)V

    .line 797
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 798
    if-nez p1, :cond_0

    .line 799
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 805
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    :cond_1
    return-void
.end method

.method public setDLNASwitchStyleTitle(Z)V
    .locals 2
    .parameter "manualMainTitle"

    .prologue
    .line 941
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setDLNASwitchStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 949
    if-nez p1, :cond_0

    .line 950
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 952
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 956
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    .line 957
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 958
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 961
    :cond_2
    return-void
.end method

.method public setMainTitle(I)V
    .locals 1
    .parameter "mainTitleRes"

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 1258
    :cond_0
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "mainTitle"

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 1262
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1263
    :cond_0
    const-string v0, "[MusicBrowserTabActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "we\'ll keep otiginal title sue to somebody set main title to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    :cond_1
    :goto_0
    return-void

    .line 1266
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnlineSearchRightBtn()V
    .locals 0

    .prologue
    .line 1361
    return-void
.end method

.method public setSearchRightBtn()V
    .locals 0

    .prologue
    .line 1357
    return-void
.end method

.method public setSecondaryTitle(I)V
    .locals 2
    .parameter "secondaryTitleRes"

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1273
    if-lez p1, :cond_1

    .line 1274
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(I)V

    .line 1275
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 1280
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "secondaryTitle"

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1284
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 1291
    :cond_0
    :goto_0
    return-void

    .line 1288
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitleVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1295
    if-eqz p1, :cond_1

    .line 1296
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 1301
    :cond_0
    :goto_0
    return-void

    .line 1298
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSourceSwitcherStyleTitle(Z)V
    .locals 3
    .parameter "manualMainTitle"

    .prologue
    const/4 v2, 0x0

    .line 813
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setSourceSwitcherStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isLandingPageEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 816
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 818
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 819
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 820
    if-nez p1, :cond_0

    .line 821
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 822
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 824
    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 844
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    .line 846
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 849
    :cond_2
    return-void

    .line 827
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 829
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 830
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    if-nez p1, :cond_4

    .line 832
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f070103

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 834
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0
.end method

.method public setStoreRightBtn()V
    .locals 0

    .prologue
    .line 1365
    return-void
.end method

.method public setStoreSwitchStyleTitle(Z)V
    .locals 2
    .parameter "manualMainTitle"

    .prologue
    .line 917
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setStoreSwitchStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 926
    if-nez p1, :cond_0

    .line 927
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f0700fe

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 931
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    .line 935
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 936
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 938
    :cond_2
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 1067
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 1068
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 1
    .parameter "tag"
    .parameter "intent"
    .parameter "saveHistory"

    .prologue
    .line 1072
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;IZ)V

    .line 1073
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;IZ)V
    .locals 15
    .parameter "tag"
    .parameter "launchIntent"
    .parameter "saveHistory"
    .parameter "clearPreviousHistory"

    .prologue
    .line 1076
    if-nez p2, :cond_1

    .line 1077
    const-string v2, "[MusicBrowserTabActivity]"

    const-string v14, "shouldn\'t call startActivity without intent!!"

    invoke-static {v2, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    if-eqz p4, :cond_2

    .line 1083
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2}, Lcom/htc/music/util/HistoryManager;->clearHistory()V

    .line 1086
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1090
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v14, 0x400

    and-int/2addr v2, v14

    if-lez v2, :cond_8

    const/4 v7, 0x1

    .line 1091
    .local v7, clearTop:Z
    :goto_1
    if-eqz v7, :cond_3

    .line 1092
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/htc/music/util/HistoryManager;->clearTop(Ljava/lang/String;)Lcom/htc/music/util/HistoryManager$ActivityHistory;

    .line 1093
    const/16 p3, 0x3

    .line 1096
    :cond_3
    const-string v2, "LaunchFromSwitcher"

    const/4 v14, 0x0

    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 1097
    .local v10, launchFromSwitcher:Z
    const-string v2, "InnerActivityType"

    const/4 v14, 0x6

    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1098
    .local v6, innerType:I
    const/4 v2, 0x6

    if-ne v2, v6, :cond_4

    .line 1100
    if-eqz v10, :cond_4

    .line 1101
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2}, Lcom/htc/music/util/HistoryManager;->clearCategoryHistory()V

    .line 1106
    :cond_4
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v14, 0x2000

    or-int/2addr v2, v14

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1110
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryProgressVisible(Z)V

    .line 1111
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    if-nez v2, :cond_9

    const/4 v2, 0x4

    if-eq v2, v6, :cond_9

    const/16 v2, 0xc

    if-eq v2, v6, :cond_9

    .line 1115
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->showInternalStorageErrorMode()V

    .line 1129
    :goto_2
    const-string v2, "LaunchFromSwitcher"

    const/4 v14, 0x0

    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1131
    const/4 v4, 0x0

    .line 1132
    .local v4, lastActivityTag:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1133
    .local v5, lastActivityIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v9

    .line 1134
    .local v9, lastHistory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    if-eqz v9, :cond_5

    .line 1135
    iget-object v4, v9, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    .line 1136
    iget-object v5, v9, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    .line 1139
    :cond_5
    const/4 v11, 0x0

    .line 1140
    .local v11, onlyDestroyLastActivity:Z
    const/4 v12, 0x0

    .line 1141
    .local v12, removeFromHistory:Z
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v2, v0, :cond_a

    .line 1147
    new-instance v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/util/HistoryManager$ActivityHistory;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 1149
    .local v1, previousActivity:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2, v1}, Lcom/htc/music/util/HistoryManager;->addHistory(Lcom/htc/music/util/HistoryManager$ActivityHistory;)V

    .line 1164
    .end local v1           #previousActivity:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_6
    :goto_3
    if-eqz v11, :cond_c

    if-eqz v4, :cond_c

    .line 1165
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    const/4 v14, 0x1

    invoke-virtual {v2, v4, v14}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 1170
    :cond_7
    :goto_4
    const-string v2, "ForceDisableDropDown"

    const/4 v14, 0x0

    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1171
    .local v8, forceDisableDropDown:Z
    move-object/from16 v0, p1

    invoke-direct {p0, v6, v0, v8}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setTitleStyle(ILjava/lang/String;Z)V

    .line 1174
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_0

    .line 1175
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->onPrepareInnerOptionsMenu(Landroid/view/Menu;)Z

    goto/16 :goto_0

    .line 1090
    .end local v4           #lastActivityTag:Ljava/lang/String;
    .end local v5           #lastActivityIntent:Landroid/content/Intent;
    .end local v6           #innerType:I
    .end local v7           #clearTop:Z
    .end local v8           #forceDisableDropDown:Z
    .end local v9           #lastHistory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .end local v10           #launchFromSwitcher:Z
    .end local v11           #onlyDestroyLastActivity:Z
    .end local v12           #removeFromHistory:Z
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1117
    .restart local v6       #innerType:I
    .restart local v7       #clearTop:Z
    .restart local v10       #launchFromSwitcher:Z
    :cond_9
    const/4 v13, 0x0

    .line 1119
    .local v13, window:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v13

    .line 1126
    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->changeContentView(Landroid/view/View;)V

    goto :goto_2

    .line 1150
    .end local v13           #window:Landroid/view/Window;
    .restart local v4       #lastActivityTag:Ljava/lang/String;
    .restart local v5       #lastActivityIntent:Landroid/content/Intent;
    .restart local v9       #lastHistory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .restart local v11       #onlyDestroyLastActivity:Z
    .restart local v12       #removeFromHistory:Z
    :cond_a
    if-nez p3, :cond_b

    .line 1152
    const/4 v12, 0x1

    goto :goto_3

    .line 1155
    :cond_b
    const/4 v2, 0x3

    move/from16 v0, p3

    if-eq v2, v0, :cond_6

    .line 1157
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v2, v0, :cond_6

    .line 1158
    new-instance v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/util/HistoryManager$ActivityHistory;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 1160
    .restart local v1       #previousActivity:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2, v1}, Lcom/htc/music/util/HistoryManager;->addHistory(Lcom/htc/music/util/HistoryManager$ActivityHistory;)V

    .line 1161
    const/4 v11, 0x1

    goto :goto_3

    .line 1166
    .end local v1           #previousActivity:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_c
    if-eqz v12, :cond_7

    if-eqz v4, :cond_7

    .line 1167
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2, v4}, Lcom/htc/music/util/HistoryManager;->removeHistory(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public startMaActivityForResult(Landroid/content/Intent;ILcom/htc/music/widget/MusicMaActivity;)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"
    .parameter "caller"

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v0, :cond_0

    .line 1183
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "startMaActivityForResult called but mForResultCaller is not null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    :cond_0
    iput-object p3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 1187
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1188
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1492
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "tab startSearch...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ActivityGroup;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1506
    return-void
.end method
