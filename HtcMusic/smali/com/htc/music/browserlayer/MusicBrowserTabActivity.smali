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

    .line 66
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 83
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 84
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 86
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    .line 87
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 89
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 90
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 95
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 107
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    .line 109
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 111
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    .line 117
    iput v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    .line 119
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mPlaylistUri:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mGenreId:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mComposer:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mArtistId:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    .line 125
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActivityResumed:Z

    .line 345
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;

    .line 550
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    .line 583
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    .line 585
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    .line 648
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    .line 691
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    .line 986
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mDestroyed:Z

    .line 1200
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 1725
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$3;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    .line 1734
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$4;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    .line 1768
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryRightClickAction:Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;

    .line 1803
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$5;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSearchAction:Landroid/view/View$OnClickListener;

    .line 1809
    new-instance v0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$6;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOnlineSearchAction:Landroid/view/View$OnClickListener;

    .line 1881
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 1883
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Lcom/htc/music/widget/SourceSwitcherAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Lcom/htc/music/widget/CategorySwitcherAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startOnlineSearchPage()V

    return-void
.end method

.method private initTitle()V
    .locals 6

    .prologue
    .line 414
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v1, :cond_0

    .line 453
    :goto_0
    return-void

    .line 416
    :cond_0
    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 417
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$2;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$2;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 430
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isLandingPageEnable()Z

    move-result v0

    .line 436
    .local v0, enableHtcListen:Z
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v1, v0}, Lcom/htc/music/util/HistoryManager;->enableHtcListen(Z)V

    .line 438
    new-instance v1, Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-direct {v1, p0}, Lcom/htc/music/widget/CategorySwitcherAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 439
    new-instance v1, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v2, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;-><init>(Landroid/content/Context;Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/util/HistoryManager;)V

    invoke-direct {v1, p0, v2}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 446
    new-instance v1, Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-direct {v1, p0, v0}, Lcom/htc/music/widget/SourceSwitcherAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    .line 447
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
    .locals 5

    .prologue
    .line 1760
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1761
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "showEmptyQueue"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1762
    const-string v1, "from-lockscreen"

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from-lockscreen"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1764
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1765
    return-void
.end method

.method private resetMiniPlayer(Z)V
    .locals 3
    .parameter "isHorizontal"

    .prologue
    const v2, 0x7f080019

    .line 500
    if-eqz p1, :cond_2

    .line 501
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_1

    .line 502
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 504
    .local v0, container:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 535
    .end local v0           #container:Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    invoke-static {p0}, Lcom/htc/music/MiniPlayer$MiniPlayerCreator;->createMiniPlayer(Landroid/app/Activity;)Lcom/htc/music/MiniPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

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

    .line 519
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-nez v1, :cond_3

    .line 520
    invoke-static {p0}, Lcom/htc/music/MiniPlayer$MiniPlayerCreator;->createMiniPlayer(Landroid/app/Activity;)Lcom/htc/music/MiniPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 522
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 523
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->inflateView()V

    .line 526
    :cond_4
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 528
    .restart local v0       #container:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 530
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->isActivityResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1, p0}, Lcom/htc/music/MiniPlayer;->addLoadSuccessListener(Lcom/htc/music/MiniPlayer$ILoadSuccessListener;)V

    .line 532
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

    .line 760
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 771
    :goto_0
    return-void

    .line 764
    :cond_0
    if-eqz p1, :cond_1

    .line 765
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarDropDown;->setClickable(Z)V

    .line 766
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    goto :goto_0

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setClickable(Z)V

    .line 769
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
    .line 781
    and-int/lit16 v0, p1, 0xfe

    .line 782
    .local v0, iType:I
    and-int/lit8 v2, p1, 0x1

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 783
    .local v1, manualMainTitle:Z
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 810
    :goto_1
    :pswitch_0
    return-void

    .line 782
    .end local v1           #manualMainTitle:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 786
    .restart local v1       #manualMainTitle:Z
    :pswitch_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategorySwitcherStyleTitle(ZLjava/lang/String;Z)V

    goto :goto_1

    .line 790
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setSourceSwitcherStyleTitle(Z)V

    goto :goto_1

    .line 794
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDLNASourceSwitcherStyleTitle(Z)V

    goto :goto_1

    .line 798
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDLNASwitchStyleTitle(Z)V

    goto :goto_1

    .line 802
    :pswitch_5
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setStoreSwitchStyleTitle(Z)V

    goto :goto_1

    .line 783
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
    .line 553
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 555
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v2, 0x7f030051

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    .line 562
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    const v3, 0x7f080092

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 563
    .local v0, errorMessage:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 564
    const v2, 0x7f07004a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 568
    .end local v0           #errorMessage:Landroid/widget/TextView;
    .end local v1           #inflator:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->changeContentView(Landroid/view/View;)V

    .line 569
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 571
    return-void
.end method

.method private startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .parameter "mimeType"
    .parameter "intent"

    .prologue
    .line 1531
    if-nez p1, :cond_1

    .line 1562
    :cond_0
    :goto_0
    return-void

    .line 1532
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    if-eqz v1, :cond_0

    .line 1534
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isLandingPageEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1535
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v1}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v1

    if-nez v1, :cond_2

    .line 1536
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    const-string v2, "ListenBrowseTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/SourceSwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v6

    .line 1537
    .local v6, item:Lcom/htc/music/util/SourceItem;
    new-instance v0, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    iget-object v1, v6, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v2, v6, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/HistoryManager$ActivityHistory;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 1540
    .local v0, history:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v1, v0}, Lcom/htc/music/util/HistoryManager;->addHistory(Lcom/htc/music/util/HistoryManager$ActivityHistory;)V

    .line 1544
    .end local v0           #history:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .end local v6           #item:Lcom/htc/music/util/SourceItem;
    :cond_2
    const-string v1, "com.htc.media/dlna"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1545
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    const-string v2, "DlnaBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/SourceSwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v6

    .line 1546
    .restart local v6       #item:Lcom/htc/music/util/SourceItem;
    iget-object v1, v6, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v2, v6, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 1548
    .end local v6           #item:Lcom/htc/music/util/SourceItem;
    :cond_3
    const/4 v6, 0x0

    .line 1549
    .restart local v6       #item:Lcom/htc/music/util/SourceItem;
    const-string v1, "com.htc.media/album"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1550
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    const-string v2, "AlbumBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v6

    .line 1557
    :goto_1
    iget-object v1, v6, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v2, "LaunchFromSwitcher"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1558
    iget-object v1, v6, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v2, v6, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 1551
    :cond_4
    const-string v1, "com.htc.media/track"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1552
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    const-string v2, "TrackBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v6

    goto :goto_1

    .line 1554
    :cond_5
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    const-string v2, "AlbumBrowserTabPlugin"

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v6

    goto :goto_1
.end method

.method private startListenStore()V
    .locals 4

    .prologue
    .line 1713
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.online.strorefont"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1714
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "InnerActivityType"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1717
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1722
    :goto_0
    return-void

    .line 1718
    :catch_0
    move-exception v0

    .line 1719
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "Opps, we can\'t launch store activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startOnlineSearchPage()V
    .locals 2

    .prologue
    .line 1816
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.ONLINESEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1817
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1818
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1819
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

    .line 1474
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 1476
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mErrorView:Landroid/view/View;

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 1477
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1478
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1479
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1485
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1486
    const-string v1, "[MusicBrowserTabActivity]"

    const-string v3, "changeContentView with view parent is not null!!"

    invoke-static {v1, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1490
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 1491
    .local v0, removeFirst:Z
    :goto_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1495
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1497
    if-eqz v0, :cond_0

    .line 1498
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 1499
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x2ee2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .end local v0           #removeFirst:Z
    :cond_4
    move v0, v2

    .line 1490
    goto :goto_1

    .line 1501
    .restart local v0       #removeFirst:Z
    :cond_5
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    goto :goto_0
.end method

.method public disableCategoryDropDown()V
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1268
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 1270
    :cond_0
    return-void
.end method

.method public dismissPopupBubble()V
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    .line 1681
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1840
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v2, :cond_0

    .line 1841
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v2, p1}, Lcom/htc/music/MiniPlayer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1842
    .local v1, result:Z
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1849
    .end local v1           #result:Z
    :goto_0
    return v2

    .line 1845
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1846
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 1847
    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1849
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1460
    invoke-super {p0}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1461
    .local v2, currentActivity:Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 1470
    .end local v2           #currentActivity:Landroid/app/Activity;
    :goto_0
    return-object v2

    .line 1463
    .restart local v2       #currentActivity:Landroid/app/Activity;
    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 1464
    iget-object v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1465
    .local v1, childView:Landroid/view/View;
    if-nez v1, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 1466
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1467
    .local v0, childContext:Landroid/content/Context;
    if-eqz v0, :cond_2

    if-ne v0, p0, :cond_3

    :cond_2
    move-object v2, v3

    goto :goto_0

    .line 1468
    :cond_3
    check-cast v0, Landroid/app/Activity;

    .end local v0           #childContext:Landroid/content/Context;
    move-object v2, v0

    goto :goto_0

    .end local v1           #childView:Landroid/view/View;
    :cond_4
    move-object v2, v3

    .line 1470
    goto :goto_0
.end method

.method public getLastCategoryIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1863
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    if-eqz v1, :cond_0

    .line 1864
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v1, p0, v2}, Lcom/htc/music/util/HistoryManager;->getLastCategoryItem(Landroid/content/Context;Lcom/htc/music/widget/CategorySwitcherAdapter;)Lcom/htc/music/util/SourceItem;

    move-result-object v0

    .line 1865
    .local v0, selectedCategoryItem:Lcom/htc/music/util/SourceItem;
    iget-object v1, v0, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    .line 1869
    .end local v0           #selectedCategoryItem:Lcom/htc/music/util/SourceItem;
    :goto_0
    return-object v1

    .line 1868
    :cond_0
    const-string v1, "[MusicBrowserTabActivity]"

    const-string v2, "can\'t get last category item!! should never happen!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method protected inflateTitle()V
    .locals 4

    .prologue
    .line 456
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-nez v2, :cond_0

    .line 457
    new-instance v2, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v2, :cond_1

    .line 460
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 463
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarDropDown;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 464
    .local v1, parent:Landroid/view/ViewParent;
    if-nez v1, :cond_3

    .line 466
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_2
    :goto_0
    return-void

    .line 467
    .restart local v1       #parent:Landroid/view/ViewParent;
    :catch_0
    move-exception v0

    .line 468
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 470
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eq v2, v1, :cond_2

    .line 471
    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "mActionBarCustomContainer already has a parent and its not actionBar!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #parent:Landroid/view/ViewParent;
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 474
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 475
    :catch_1
    move-exception v0

    .line 476
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected initMiniPlayer()V
    .locals 2

    .prologue
    .line 483
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->resetMiniPlayer(Z)V

    .line 484
    return-void

    .line 483
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isActivityResumed()Z
    .locals 1

    .prologue
    .line 1854
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActivityResumed:Z

    return v0
.end method

.method public loadSuccessChange(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 489
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    const/16 v2, 0x2711

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 491
    .local v0, player:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 492
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 497
    .end local v0           #player:Landroid/view/MenuItem;
    :cond_0
    :goto_0
    return-void

    .line 494
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
    .line 1212
    const v0, 0xc351

    if-ne p1, v0, :cond_0

    .line 1213
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startListenStore()V

    .line 1221
    :goto_0
    return-void

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v0, :cond_1

    .line 1218
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/widget/MusicMaActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1220
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    .line 1227
    const/4 v1, 0x0

    .line 1228
    .local v1, childhandled:Z
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1229
    .local v0, child:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/app/ActivityGroup;

    if-eqz v3, :cond_0

    .line 1230
    check-cast v0, Landroid/app/ActivityGroup;

    .end local v0           #child:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1233
    .restart local v0       #child:Landroid/app/Activity;
    :cond_0
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v3, :cond_1

    .line 1234
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    .end local v0           #child:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/htc/music/widget/MusicMaActivity;->onMaBackPressed()Z

    move-result v1

    .line 1237
    :cond_1
    if-eqz v1, :cond_2

    .line 1255
    :goto_0
    return-void

    .line 1239
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 1240
    iget-object v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v3}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v2

    .line 1246
    .local v2, lastActivityHisory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousIntent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    .line 1247
    iget-object v3, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousTag:Ljava/lang/String;

    iget-object v4, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->previousIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0

    .line 1249
    :cond_3
    const-string v3, "[MusicBrowserTabActivity]"

    const-string v4, "intent and cached view are null!! should never happen!! "

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1253
    .end local v2           #lastActivityHisory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_4
    invoke-super {p0}, Landroid/app/ActivityGroup;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 1053
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1054
    iget v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    .line 1058
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->inflateTitle()V

    .line 1060
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_2

    .line 1061
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1064
    :cond_2
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->resetMiniPlayer(Z)V

    .line 1067
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1068
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 1064
    .end local v0           #activity:Landroid/app/Activity;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 230
    const-string v7, "[MusicBrowserTabActivity]"

    const-string v8, "tab oncreate"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 232
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setVolumeControlStream(I)V

    .line 233
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 236
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 237
    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v7, :cond_0

    .line 238
    new-instance v7, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$EventReceiver;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;)V

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 239
    new-instance v1, Landroid/content/IntentFilter;

    const-string v7, "com.htc.music.lockscreen_start"

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 240
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    const-string v7, "from-lockscreen"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 245
    .local v3, isFromLockscreen:Z
    const-string v7, "[MusicBrowserTabActivity]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onCreate] bp. value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    if-eqz v3, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 248
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->disableKeyguard(Landroid/app/Activity;)V

    .line 262
    .end local v3           #isFromLockscreen:Z
    :cond_1
    :goto_0
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->requestWindowFeature(I)Z

    .line 269
    const-string v7, "SaveRender"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 270
    .local v4, nSaveDMR:I
    const-string v7, "Render"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, szDMR:Ljava/lang/String;
    const-string v7, "Server"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, szDMS:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 275
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "DLNA"

    const/4 v9, 0x7

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    .local v0, Preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "Render"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "server"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 282
    .end local v0           #Preferences:Landroid/content/SharedPreferences;
    :cond_2
    if-eqz p1, :cond_4

    .line 292
    :goto_1
    const v7, 0x7f030003

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setContentView(I)V

    .line 297
    const v7, 0x7f08001a

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 299
    new-instance v7, Lcom/htc/music/util/HistoryManager;

    invoke-direct {v7, p0}, Lcom/htc/music/util/HistoryManager;-><init>(Landroid/app/ActivityGroup;)V

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    .line 301
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    iput v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    .line 303
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->initTitle()V

    .line 304
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->initMiniPlayer()V

    .line 308
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    .line 331
    return-void

    .line 250
    .end local v4           #nSaveDMR:I
    .end local v5           #szDMR:Ljava/lang/String;
    .end local v6           #szDMS:Ljava/lang/String;
    .restart local v3       #isFromLockscreen:Z
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto :goto_0

    .line 285
    .end local v3           #isFromLockscreen:Z
    .restart local v4       #nSaveDMR:I
    .restart local v5       #szDMR:Ljava/lang/String;
    .restart local v6       #szDMS:Ljava/lang/String;
    :cond_4
    const-string v7, "playlisturi"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mPlaylistUri:Ljava/lang/String;

    .line 286
    const-string v7, "genreid"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mGenreId:Ljava/lang/String;

    .line 287
    const-string v7, "composer"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mComposer:Ljava/lang/String;

    .line 288
    const-string v7, "artistid"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mArtistId:Ljava/lang/String;

    .line 289
    invoke-virtual {v2, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "params"

    .prologue
    .line 747
    packed-switch p1, :pswitch_data_0

    .line 752
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 749
    :pswitch_0
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 747
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

    .line 588
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    if-eqz v0, :cond_0

    .line 628
    :goto_0
    return v2

    .line 589
    :cond_0
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    .line 592
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eq v0, p1, :cond_1

    .line 593
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "not same menu panel!! return directly"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 599
    iput-object p1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    .line 604
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

    .line 610
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    const v1, 0xc350

    invoke-interface {v0, v2, v1, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 626
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->onPrepareInnerOptionsMenu(Landroid/view/Menu;)Z

    .line 627
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mDestroyed:Z

    .line 991
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 999
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 1000
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0, p0}, Lcom/htc/music/util/HistoryManager;->saveHistoryInstanceState(Landroid/content/Context;)V

    .line 1001
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->clearHistory()V

    .line 1003
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->release()V

    .line 1005
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v0}, Lcom/htc/music/widget/SourceSwitcherAdapter;->releaseAdapter()V

    .line 1010
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    .line 1013
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    if-eqz v0, :cond_2

    .line 1014
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0}, Lcom/htc/music/widget/CategorySwitcherAdapter;->releaseAdapter()V

    .line 1015
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 1018
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 1019
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1023
    :cond_3
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1024
    invoke-static {p0}, Lcom/htc/music/util/ScreenStatus;->unRegisterReceiver(Landroid/app/Activity;)V

    .line 1025
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 1026
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1027
    iput-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 1030
    :cond_4
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v13, 0x0

    .line 131
    const-string v10, "[MusicBrowserTabActivity]"

    const-string v11, "tab receive new intent"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 135
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 136
    const-string v10, "from-lockscreen"

    invoke-virtual {p1, v10, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 138
    .local v3, isFromLockscreen:Z
    const-string v10, "[MusicBrowserTabActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[onNewIntent] bp. value="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-eqz v3, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 142
    .local v1, current:Landroid/app/Activity;
    if-eqz v1, :cond_6

    instance-of v10, v1, Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v10, :cond_6

    move-object v5, v1

    .line 143
    check-cast v5, Lcom/htc/music/widget/MusicMaActivity;

    .line 144
    .local v5, maActivity:Lcom/htc/music/widget/MusicMaActivity;
    invoke-virtual {v5}, Lcom/htc/music/widget/MusicMaActivity;->isByPass()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 146
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->disableKeyguard(Landroid/app/Activity;)V

    .line 157
    .end local v1           #current:Landroid/app/Activity;
    .end local v3           #isFromLockscreen:Z
    .end local v5           #maActivity:Lcom/htc/music/widget/MusicMaActivity;
    :cond_0
    :goto_0
    const-string v10, "SaveRender"

    invoke-virtual {p1, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 158
    .local v6, nSaveDMR:I
    const-string v10, "Render"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, szDMR:Ljava/lang/String;
    const-string v10, "Server"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, szDMS:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "DLNA"

    const/4 v12, 0x7

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    .local v0, Preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Render"

    invoke-interface {v10, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "server"

    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    .end local v0           #Preferences:Landroid/content/SharedPreferences;
    :cond_1
    const-string v10, "playlisturi"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mPlaylistUri:Ljava/lang/String;

    .line 173
    const-string v10, "genreid"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mGenreId:Ljava/lang/String;

    .line 174
    const-string v10, "composer"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mComposer:Ljava/lang/String;

    .line 175
    const-string v10, "artistid"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mArtistId:Ljava/lang/String;

    .line 176
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    .line 178
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    .line 184
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->inflateTitle()V

    .line 185
    iget-object v10, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v10, :cond_2

    .line 186
    iget-object v10, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v10}, Lcom/htc/music/MiniPlayer;->inflateView()V

    .line 189
    :cond_2
    iget-object v10, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    if-eqz v10, :cond_3

    const-string v10, ""

    iget-object v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 195
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 196
    .local v2, currentActivity:Landroid/app/Activity;
    if-nez v2, :cond_8

    .line 197
    iget-object v10, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v10}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v4

    .line 198
    .local v4, item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    if-eqz v4, :cond_7

    .line 199
    iget-object v10, v4, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    iget-object v11, v4, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    const/4 v12, 0x3

    invoke-virtual {p0, v10, v11, v12}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 226
    .end local v2           #currentActivity:Landroid/app/Activity;
    .end local v4           #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_4
    :goto_1
    return-void

    .line 148
    .end local v6           #nSaveDMR:I
    .end local v8           #szDMR:Ljava/lang/String;
    .end local v9           #szDMS:Ljava/lang/String;
    .restart local v1       #current:Landroid/app/Activity;
    .restart local v3       #isFromLockscreen:Z
    .restart local v5       #maActivity:Lcom/htc/music/widget/MusicMaActivity;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 151
    .end local v5           #maActivity:Lcom/htc/music/widget/MusicMaActivity;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 201
    .end local v1           #current:Landroid/app/Activity;
    .end local v3           #isFromLockscreen:Z
    .restart local v2       #currentActivity:Landroid/app/Activity;
    .restart local v4       #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .restart local v6       #nSaveDMR:I
    .restart local v8       #szDMR:Ljava/lang/String;
    .restart local v9       #szDMS:Ljava/lang/String;
    :cond_7
    iget-object v10, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v11, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    invoke-virtual {v10, p0, v11}, Lcom/htc/music/util/HistoryManager;->getLastSourceItem(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;)Lcom/htc/music/util/SourceItem;

    move-result-object v7

    .line 202
    .local v7, selectedSourceItem:Lcom/htc/music/util/SourceItem;
    iget-object v10, v7, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v11, v7, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v10, v11}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    .line 208
    .end local v4           #item:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .end local v7           #selectedSourceItem:Lcom/htc/music/util/SourceItem;
    :cond_8
    iget-boolean v10, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    if-nez v10, :cond_4

    .line 209
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->showInternalStorageErrorMode()V

    goto :goto_1

    .line 222
    .end local v2           #currentActivity:Landroid/app/Activity;
    :cond_9
    iget-object v10, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v10}, Lcom/htc/music/util/HistoryManager;->clearHistory()V

    .line 224
    iget-object v10, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v10, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 694
    if-nez p1, :cond_0

    move v3, v4

    .line 739
    :goto_0
    return v3

    .line 695
    :cond_0
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    if-ne v3, v5, :cond_1

    move v3, v4

    goto :goto_0

    .line 697
    :cond_1
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    .line 698
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 699
    .local v2, itemId:I
    const/16 v5, 0x2711

    if-eq v2, v5, :cond_2

    .line 700
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->enableKeyguard(Landroid/app/Activity;)V

    .line 702
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 733
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 734
    .local v1, currentActivity:Landroid/app/Activity;
    const/4 v3, 0x0

    .line 735
    .local v3, result:Z
    if-eqz v1, :cond_3

    .line 736
    invoke-virtual {v1, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 738
    :cond_3
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    goto :goto_0

    .line 704
    .end local v1           #currentActivity:Landroid/app/Activity;
    .end local v3           #result:Z
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 705
    .local v0, currectActivity:Landroid/app/Activity;
    if-eqz v0, :cond_4

    .line 706
    const-string v5, ""

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v4, v6, v4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 708
    :cond_4
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    goto :goto_0

    .line 712
    .end local v0           #currectActivity:Landroid/app/Activity;
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->launchGlancePage()V

    .line 713
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingOptionsItemSelected:Z

    goto :goto_0

    .line 702
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 1640
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 1641
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActivityResumed:Z

    .line 1643
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1644
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1645
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x400001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1646
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

    .line 1647
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1648
    return-void
.end method

.method protected onPrepareInnerOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 633
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    .line 634
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeGroup(I)V

    .line 636
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 637
    .local v0, currentActivity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 638
    const v1, 0xc350

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 640
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 641
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 643
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    .line 645
    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x2

    const/16 v3, 0x2711

    const/4 v4, 0x1

    .line 651
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    if-ne v4, v2, :cond_1

    .line 688
    :cond_0
    :goto_0
    return v4

    .line 652
    :cond_1
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingCreateOptionsMenu:Z

    if-eq v4, v2, :cond_0

    .line 654
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    .line 658
    iget v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mOrientation:I

    if-ne v5, v2, :cond_4

    .line 659
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 661
    const v2, 0x7f07011c

    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02002a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 663
    .local v1, player:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v2, :cond_3

    .line 664
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v2}, Lcom/htc/music/MiniPlayer;->isLoadTrackSuccess()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 682
    .end local v1           #player:Landroid/view/MenuItem;
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 683
    .local v0, currentActivity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 685
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 687
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHandlingPrepareOptionsMenu:Z

    goto :goto_0

    .line 666
    .end local v0           #currentActivity:Landroid/app/Activity;
    .restart local v1       #player:Landroid/view/MenuItem;
    :cond_3
    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "mini player is null when reset menu at rotate to landscape mode!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 670
    .end local v1           #player:Landroid/view/MenuItem;
    :cond_4
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1832
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "tab onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1834
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 1568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActivityResumed:Z

    .line 1571
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 1573
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_1

    .line 1578
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0, p0}, Lcom/htc/music/MiniPlayer;->addLoadSuccessListener(Lcom/htc/music/MiniPlayer$ILoadSuccessListener;)V

    .line 1579
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    .line 1583
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1584
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$MyIdleHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$MyIdleHandler;-><init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1587
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1825
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "tab onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1827
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0, p0}, Lcom/htc/music/util/HistoryManager;->saveHistoryInstanceState(Landroid/content/Context;)V

    .line 1828
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 335
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    .line 337
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-static {p0}, Lcom/htc/music/util/ScreenStatus;->registerReceiver(Landroid/app/Activity;)V

    .line 340
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1653
    :try_start_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1660
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_0

    .line 1661
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->removeLoadSuccessListener()V

    .line 1662
    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    .line 1667
    :cond_0
    return-void

    .line 1654
    :catch_0
    move-exception v0

    .line 1655
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCategoryLeftBtnEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 1341
    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnImage(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 1358
    return-void
.end method

.method public setCategoryLeftBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 1365
    return-void
.end method

.method public setCategoryLeftBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 1371
    return-void
.end method

.method public setCategoryLeftBtnVisible(Z)V
    .locals 1
    .parameter "setVisibile"

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 1345
    if-eqz p1, :cond_1

    .line 1346
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 1351
    :cond_0
    :goto_0
    return-void

    .line 1348
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    goto :goto_0
.end method

.method public setCategoryProgressVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 1327
    if-eqz p1, :cond_1

    .line 1328
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    .line 1333
    :cond_0
    :goto_0
    return-void

    .line 1330
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
    .line 1424
    return-void
.end method

.method public setCategoryRightBtn2Image(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 1441
    return-void
.end method

.method public setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 1448
    return-void
.end method

.method public setCategoryRightBtn2OnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 1454
    return-void
.end method

.method public setCategoryRightBtn2Visible(Z)V
    .locals 0
    .parameter "setVisibile"

    .prologue
    .line 1434
    return-void
.end method

.method public setCategoryRightBtnEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1392
    return-void
.end method

.method public setCategoryRightBtnImage(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 1403
    return-void
.end method

.method public setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 1410
    return-void
.end method

.method public setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 1416
    return-void
.end method

.method public setCategoryRightBtnVisible(Z)V
    .locals 0
    .parameter "setVisibile"

    .prologue
    .line 1396
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

    .line 872
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setCategorySwitcherStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 882
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isLandingPageEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 883
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 884
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 924
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 925
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v0

    if-le v0, v3, :cond_7

    .line 927
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 928
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 934
    :cond_1
    :goto_1
    return-void

    .line 886
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 887
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 888
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 889
    if-eqz p3, :cond_3

    .line 890
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0

    .line 892
    :cond_3
    invoke-direct {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0

    .line 896
    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v0}, Lcom/htc/music/util/HistoryManager;->getHistorySize()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 897
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0

    .line 899
    :cond_5
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 900
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 901
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 902
    if-eqz p3, :cond_6

    .line 903
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0

    .line 905
    :cond_6
    invoke-direct {p0, v3}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0

    .line 930
    :cond_7
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    goto :goto_1
.end method

.method public setDLNASourceSwitcherStyleTitle(Z)V
    .locals 2
    .parameter "manualMainTitle"

    .prologue
    .line 815
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setSourceSwitcherStyleTitle(Z)V

    .line 817
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 818
    if-nez p1, :cond_0

    .line 819
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 824
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 825
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 828
    :cond_1
    return-void
.end method

.method public setDLNASwitchStyleTitle(Z)V
    .locals 2
    .parameter "manualMainTitle"

    .prologue
    .line 961
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setDLNASwitchStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 969
    if-nez p1, :cond_0

    .line 970
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 972
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    .line 977
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 978
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 981
    :cond_2
    return-void
.end method

.method public setMainTitle(I)V
    .locals 1
    .parameter "mainTitleRes"

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 1278
    :cond_0
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "mainTitle"

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 1282
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1283
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

    .line 1289
    :cond_1
    :goto_0
    return-void

    .line 1286
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnlineSearchRightBtn()V
    .locals 0

    .prologue
    .line 1381
    return-void
.end method

.method public setSearchRightBtn()V
    .locals 0

    .prologue
    .line 1377
    return-void
.end method

.method public setSecondaryTitle(I)V
    .locals 2
    .parameter "secondaryTitleRes"

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1293
    if-lez p1, :cond_1

    .line 1294
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(I)V

    .line 1295
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1297
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
    .line 1303
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1304
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1305
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(Ljava/lang/String;)V

    .line 1306
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 1311
    :cond_0
    :goto_0
    return-void

    .line 1308
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
    .line 1314
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 1315
    if-eqz p1, :cond_1

    .line 1316
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1318
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

    .line 833
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setSourceSwitcherStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isLandingPageEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 836
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 838
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 839
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 840
    if-nez p1, :cond_0

    .line 841
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 842
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 844
    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 864
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    .line 866
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 869
    :cond_2
    return-void

    .line 847
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 849
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 850
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 851
    if-nez p1, :cond_4

    .line 852
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f070104

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 854
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    goto :goto_0
.end method

.method public setStoreRightBtn()V
    .locals 0

    .prologue
    .line 1385
    return-void
.end method

.method public setStoreSwitchStyleTitle(Z)V
    .locals 2
    .parameter "manualMainTitle"

    .prologue
    .line 937
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "setStoreSwitchStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 946
    if-nez p1, :cond_0

    .line 947
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f0700ff

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 951
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setDropDownEnable(Z)V

    .line 954
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    .line 955
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 956
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 958
    :cond_2
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 1087
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 1088
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 1
    .parameter "tag"
    .parameter "intent"
    .parameter "saveHistory"

    .prologue
    .line 1092
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;IZ)V

    .line 1093
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;IZ)V
    .locals 15
    .parameter "tag"
    .parameter "launchIntent"
    .parameter "saveHistory"
    .parameter "clearPreviousHistory"

    .prologue
    .line 1096
    if-nez p2, :cond_1

    .line 1097
    const-string v2, "[MusicBrowserTabActivity]"

    const-string v14, "shouldn\'t call startActivity without intent!!"

    invoke-static {v2, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1101
    :cond_1
    if-eqz p4, :cond_2

    .line 1103
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2}, Lcom/htc/music/util/HistoryManager;->clearHistory()V

    .line 1106
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1110
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v14, 0x400

    and-int/2addr v2, v14

    if-lez v2, :cond_8

    const/4 v7, 0x1

    .line 1111
    .local v7, clearTop:Z
    :goto_1
    if-eqz v7, :cond_3

    .line 1112
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/htc/music/util/HistoryManager;->clearTop(Ljava/lang/String;)Lcom/htc/music/util/HistoryManager$ActivityHistory;

    .line 1113
    const/16 p3, 0x3

    .line 1116
    :cond_3
    const-string v2, "LaunchFromSwitcher"

    const/4 v14, 0x0

    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 1117
    .local v10, launchFromSwitcher:Z
    const-string v2, "InnerActivityType"

    const/4 v14, 0x6

    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1118
    .local v6, innerType:I
    const/4 v2, 0x6

    if-ne v2, v6, :cond_4

    .line 1120
    if-eqz v10, :cond_4

    .line 1121
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2}, Lcom/htc/music/util/HistoryManager;->clearCategoryHistory()V

    .line 1126
    :cond_4
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v14, 0x2000

    or-int/2addr v2, v14

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1130
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryProgressVisible(Z)V

    .line 1131
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mInternalEnough:Z

    if-nez v2, :cond_9

    const/4 v2, 0x4

    if-eq v2, v6, :cond_9

    const/16 v2, 0xc

    if-eq v2, v6, :cond_9

    .line 1135
    invoke-direct {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->showInternalStorageErrorMode()V

    .line 1149
    :goto_2
    const-string v2, "LaunchFromSwitcher"

    const/4 v14, 0x0

    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1151
    const/4 v4, 0x0

    .line 1152
    .local v4, lastActivityTag:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1153
    .local v5, lastActivityIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v9

    .line 1154
    .local v9, lastHistory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    if-eqz v9, :cond_5

    .line 1155
    iget-object v4, v9, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    .line 1156
    iget-object v5, v9, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    .line 1159
    :cond_5
    const/4 v11, 0x0

    .line 1160
    .local v11, onlyDestroyLastActivity:Z
    const/4 v12, 0x0

    .line 1161
    .local v12, removeFromHistory:Z
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v2, v0, :cond_a

    .line 1167
    new-instance v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/util/HistoryManager$ActivityHistory;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 1169
    .local v1, previousActivity:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2, v1}, Lcom/htc/music/util/HistoryManager;->addHistory(Lcom/htc/music/util/HistoryManager$ActivityHistory;)V

    .line 1184
    .end local v1           #previousActivity:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_6
    :goto_3
    if-eqz v11, :cond_c

    if-eqz v4, :cond_c

    .line 1185
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    const/4 v14, 0x1

    invoke-virtual {v2, v4, v14}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 1190
    :cond_7
    :goto_4
    const-string v2, "ForceDisableDropDown"

    const/4 v14, 0x0

    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1191
    .local v8, forceDisableDropDown:Z
    move-object/from16 v0, p1

    invoke-direct {p0, v6, v0, v8}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setTitleStyle(ILjava/lang/String;Z)V

    .line 1194
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_0

    .line 1195
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->onPrepareInnerOptionsMenu(Landroid/view/Menu;)Z

    goto/16 :goto_0

    .line 1110
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

    .line 1137
    .restart local v6       #innerType:I
    .restart local v7       #clearTop:Z
    .restart local v10       #launchFromSwitcher:Z
    :cond_9
    const/4 v13, 0x0

    .line 1139
    .local v13, window:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v13

    .line 1146
    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->changeContentView(Landroid/view/View;)V

    goto :goto_2

    .line 1170
    .end local v13           #window:Landroid/view/Window;
    .restart local v4       #lastActivityTag:Ljava/lang/String;
    .restart local v5       #lastActivityIntent:Landroid/content/Intent;
    .restart local v9       #lastHistory:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .restart local v11       #onlyDestroyLastActivity:Z
    .restart local v12       #removeFromHistory:Z
    :cond_a
    if-nez p3, :cond_b

    .line 1172
    const/4 v12, 0x1

    goto :goto_3

    .line 1175
    :cond_b
    const/4 v2, 0x3

    move/from16 v0, p3

    if-eq v2, v0, :cond_6

    .line 1177
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v2, v0, :cond_6

    .line 1178
    new-instance v1, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/util/HistoryManager$ActivityHistory;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 1180
    .restart local v1       #previousActivity:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v2, v1}, Lcom/htc/music/util/HistoryManager;->addHistory(Lcom/htc/music/util/HistoryManager$ActivityHistory;)V

    .line 1181
    const/4 v11, 0x1

    goto :goto_3

    .line 1186
    .end local v1           #previousActivity:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_c
    if-eqz v12, :cond_7

    if-eqz v4, :cond_7

    .line 1187
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
    .line 1202
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v0, :cond_0

    .line 1203
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "startMaActivityForResult called but mForResultCaller is not null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :cond_0
    iput-object p3, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 1207
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1208
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1512
    const-string v0, "[MusicBrowserTabActivity]"

    const-string v1, "tab startSearch...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ActivityGroup;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1526
    return-void
.end method
