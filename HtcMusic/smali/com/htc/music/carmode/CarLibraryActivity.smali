.class public Lcom/htc/music/carmode/CarLibraryActivity;
.super Landroid/app/ActivityGroup;
.source "CarLibraryActivity.java"

# interfaces
.implements Lcom/htc/music/widget/IDismissBubbleInterface;
.implements Lcom/htc/music/carmode/IMusicTabActivityInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarLibraryActivity$MyIdleHandler;
    }
.end annotation


# static fields
.field private static final EFFECTIVE_GESTURE_RATIO:D = 0.2

.field public static final EXTRA_ACTIVITY_CALLER:Ljava/lang/String; = "caller"

.field private static final FIRST_CONTENT_INDEX:I = 0x0

.field private static final INIT:I = 0x3039

.field private static final INIT_3D_DELAY_TIME:I = 0x190

.field private static final START_ACTIVITY:I = 0x303a

.field private static final TAG:Ljava/lang/String; = "[CarLibraryActivity]"


# instance fields
.field private firstLaunch:Z

.field protected mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

.field private mActionBarSearchItemView:Lcom/htc/widget/ActionBarItemView;

.field private mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

.field private mActivityResumed:Z

.field private mCarDockListener:Landroid/content/BroadcastReceiver;

.field private mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

.field protected mContentView:Landroid/widget/FrameLayout;

.field private mErrorView:Landroid/view/View;

.field protected mForResultCaller:Lcom/htc/music/carmode/MusicMaActivity;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureHeight:D

.field private mInternalEnough:Z

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMimeType:Ljava/lang/String;

.field private mPreferences:Landroid/content/SharedPreferences;

.field protected mPreviousSI:Lcom/htc/music/util/SourceItem;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 62
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 63
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 64
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarSearchItemView:Lcom/htc/widget/ActionBarItemView;

    .line 66
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    .line 67
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 69
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mPreviousSI:Lcom/htc/music/util/SourceItem;

    .line 71
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 73
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mInternalEnough:Z

    .line 75
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActivityResumed:Z

    .line 79
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mGestureHeight:D

    .line 87
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->firstLaunch:Z

    .line 184
    new-instance v0, Lcom/htc/music/carmode/CarLibraryActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarLibraryActivity$1;-><init>(Lcom/htc/music/carmode/CarLibraryActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mUIHandler:Landroid/os/Handler;

    .line 216
    new-instance v0, Lcom/htc/music/carmode/CarLibraryActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarLibraryActivity$2;-><init>(Lcom/htc/music/carmode/CarLibraryActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    .line 312
    new-instance v0, Lcom/htc/music/carmode/CarLibraryActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarLibraryActivity$6;-><init>(Lcom/htc/music/carmode/CarLibraryActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 325
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mErrorView:Landroid/view/View;

    .line 571
    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mForResultCaller:Lcom/htc/music/carmode/MusicMaActivity;

    .line 812
    new-instance v0, Lcom/htc/music/carmode/CarLibraryActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarLibraryActivity$8;-><init>(Lcom/htc/music/carmode/CarLibraryActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/carmode/CarLibraryActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarLibraryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarLibraryActivity;->startIndicateActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/CarLibraryActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mGestureHeight:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/htc/music/carmode/CarLibraryActivity;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/carmode/CarLibraryActivity;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/carmode/CarLibraryActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initKeypadGestureDetector()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "[CarLibraryActivity]"

    const-string v1, "Gesture initKeypadGestureDetector"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/htc/music/carmode/CarLibraryActivity$3;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarLibraryActivity$3;-><init>(Lcom/htc/music/carmode/CarLibraryActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 255
    return-void
.end method

.method private initTitle()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 258
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 261
    :cond_0
    new-instance v0, Lcom/htc/music/carmode/CategorySwitcherAdapter;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CategorySwitcherAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    .line 262
    new-instance v0, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v1, Lcom/htc/music/carmode/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;

    iget-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/carmode/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;-><init>(Lcom/htc/music/carmode/IMusicTabActivityInterface;Lcom/htc/music/carmode/CategorySwitcherAdapter;)V

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 267
    new-instance v0, Lcom/htc/widget/ActionBarContainer;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 268
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarContainer;->setSupportMode(I)V

    .line 269
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 270
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v1, Lcom/htc/music/carmode/CarLibraryActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarLibraryActivity$4;-><init>(Lcom/htc/music/carmode/CarLibraryActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 278
    new-instance v0, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v0, p0, v3}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 280
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 284
    new-instance v0, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarSearchItemView:Lcom/htc/widget/ActionBarItemView;

    .line 285
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarSearchItemView:Lcom/htc/widget/ActionBarItemView;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 286
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarSearchItemView:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarItemView;->setSupportMode(I)V

    .line 287
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarSearchItemView:Lcom/htc/widget/ActionBarItemView;

    new-instance v1, Lcom/htc/music/carmode/CarLibraryActivity$5;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarLibraryActivity$5;-><init>(Lcom/htc/music/carmode/CarLibraryActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarSearchItemView:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 298
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/music/carmode/CarLibraryActivity;->startIndicateActivity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private launchGlancePage()V
    .locals 2

    .prologue
    .line 836
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.carmode.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarLibraryActivity;->startActivity(Landroid/content/Intent;)V

    .line 837
    return-void
.end method

.method private setDropDownEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 425
    :cond_0
    if-eqz p1, :cond_1

    .line 426
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarDropDown;->setClickable(Z)V

    .line 427
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setClickable(Z)V

    .line 430
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    goto :goto_0
.end method

.method private setTitleStyle(ILjava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "tag"

    .prologue
    .line 435
    and-int/lit16 v0, p1, 0xfe

    .line 436
    .local v0, iType:I
    and-int/lit8 v2, p1, 0x1

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 437
    .local v1, manualMainTitle:Z
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 448
    :goto_1
    return-void

    .line 436
    .end local v1           #manualMainTitle:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 440
    .restart local v1       #manualMainTitle:Z
    :pswitch_0
    invoke-virtual {p0, v1, p2}, Lcom/htc/music/carmode/CarLibraryActivity;->setCategorySwitcherStyleTitle(ZLjava/lang/String;)V

    goto :goto_1

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private showInternalStorageErrorMode()V
    .locals 4

    .prologue
    .line 328
    iget-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mErrorView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 330
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v2, 0x7f030051

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mErrorView:Landroid/view/View;

    .line 332
    iget-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mErrorView:Landroid/view/View;

    const v3, 0x7f080091

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 333
    .local v0, errorMessage:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 334
    const v2, 0x203007f

    invoke-virtual {v0, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 335
    const v2, 0x7f07004a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 339
    .end local v0           #errorMessage:Landroid/widget/TextView;
    .end local v1           #inflator:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mErrorView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarLibraryActivity;->changeContentView(Landroid/view/View;)V

    .line 340
    iget-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mErrorView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 341
    return-void
.end method

.method private startIndicateActivity(Ljava/lang/String;)V
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 704
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v1, "artistid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/htc/music/carmode/CarLibraryActivity;->startIndicateActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-void

    .line 704
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startIndicateActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "mimeType"
    .parameter "artistId"

    .prologue
    const/4 v3, 0x0

    .line 708
    const/4 v1, 0x0

    .line 709
    .local v1, item:Lcom/htc/music/util/SourceItem;
    const/4 v0, 0x0

    .line 711
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 713
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/htc/music/carmode/CarLibraryActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 739
    :goto_0
    return-void

    .line 715
    :cond_1
    const-string v2, "com.htc.media/album"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 716
    iget-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    const-string v3, "AlbumBrowserTabPlugin"

    invoke-virtual {v2, v3}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v1

    .line 736
    :cond_2
    :goto_1
    iget-object v2, v1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v3, "LaunchFromSwitcher"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 737
    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v2, v1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    :goto_2
    invoke-virtual {p0, v3, v2}, Lcom/htc/music/carmode/CarLibraryActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 718
    :cond_3
    const-string v2, "com.htc.media/artistalbum"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 719
    iget-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    const-string v3, "AlbumBrowserTabPlugin"

    invoke-virtual {v2, v3}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v1

    .line 721
    if-eqz p2, :cond_2

    .line 722
    iget-object v2, v1, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #intent:Landroid/content/Intent;
    check-cast v0, Landroid/content/Intent;

    .line 723
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "artistid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 725
    :cond_4
    const-string v2, "com.htc.media/track"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 726
    iget-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    const-string v3, "TrackBrowserTabPlugin"

    invoke-virtual {v2, v3}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v1

    goto :goto_1

    .line 728
    :cond_5
    const-string v2, "com.htc.media/playlist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 729
    iget-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    const-string v3, "PlaylistBrowserTabPlugin"

    invoke-virtual {v2, v3}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v1

    goto :goto_1

    .line 732
    :cond_6
    iget-object v2, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    const-string v3, "ArtistBrowserTabPlugin"

    invoke-virtual {v2, v3}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v1

    goto :goto_1

    :cond_7
    move-object v2, v0

    .line 737
    goto :goto_2
.end method


# virtual methods
.method protected changeContentView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 682
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 684
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 686
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 688
    :cond_0
    return-void
.end method

.method public disableCategoryDropDown()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 602
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/carmode/CarLibraryActivity;->setDropDownEnable(Z)V

    .line 604
    :cond_0
    return-void
.end method

.method public dismissPopupBubble()V
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    .line 808
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 860
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 863
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 668
    invoke-super {p0}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 669
    .local v2, currentActivity:Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 678
    .end local v2           #currentActivity:Landroid/app/Activity;
    :goto_0
    return-object v2

    .line 672
    .restart local v2       #currentActivity:Landroid/app/Activity;
    :cond_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mContentView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 673
    .local v1, childView:Landroid/view/View;
    if-nez v1, :cond_1

    move-object v2, v3

    .line 674
    goto :goto_0

    .line 675
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 676
    .local v0, childContext:Landroid/content/Context;
    if-eqz v0, :cond_2

    if-ne v0, p0, :cond_3

    :cond_2
    move-object v2, v3

    .line 677
    goto :goto_0

    .line 678
    :cond_3
    check-cast v0, Landroid/app/Activity;

    .end local v0           #childContext:Landroid/content/Context;
    move-object v2, v0

    goto :goto_0
.end method

.method protected inflateTitle()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method protected isActivityResumed()Z
    .locals 1

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActivityResumed:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mForResultCaller:Lcom/htc/music/carmode/MusicMaActivity;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mForResultCaller:Lcom/htc/music/carmode/MusicMaActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/carmode/MusicMaActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 587
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mForResultCaller:Lcom/htc/music/carmode/MusicMaActivity;

    .line 588
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x400

    .line 133
    const-string v7, "[CarLibraryActivity]"

    const-string v8, "tab oncreate"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/htc/music/carmode/CarLibraryActivity;->requestWindowFeature(I)Z

    .line 138
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 139
    .local v4, win:Landroid/view/Window;
    invoke-virtual {v4, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 141
    const/high16 v7, 0x40

    invoke-virtual {v4, v7}, Landroid/view/Window;->addFlags(I)V

    .line 142
    const/high16 v7, 0x20

    invoke-virtual {v4, v7}, Landroid/view/Window;->addFlags(I)V

    .line 145
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 146
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "caller"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, caller:Ljava/lang/String;
    const-class v7, Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 148
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 149
    .local v5, windowLp:Landroid/view/WindowManager$LayoutParams;
    const v7, 0x7f0c000e

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 153
    .end local v5           #windowLp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "Music"

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 157
    invoke-virtual {v3, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    .line 159
    iget-object v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    if-nez v7, :cond_1

    if-eqz p1, :cond_1

    .line 160
    const-string v7, "last_mimetype"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    .line 163
    :cond_1
    const v7, 0x7f030013

    invoke-virtual {p0, v7}, Lcom/htc/music/carmode/CarLibraryActivity;->setContentView(I)V

    .line 165
    const v7, 0x7f080019

    invoke-virtual {p0, v7}, Lcom/htc/music/carmode/CarLibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 166
    const v7, 0x7f08001a

    invoke-virtual {p0, v7}, Lcom/htc/music/carmode/CarLibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 167
    iget-object v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mContentView:Landroid/widget/FrameLayout;

    const/high16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 169
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 170
    .local v1, display:Landroid/view/Display;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 171
    .local v6, windowSize:Landroid/graphics/Point;
    invoke-virtual {v1, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 172
    iget v7, v6, Landroid/graphics/Point;->y:I

    int-to-double v7, v7

    const-wide v9, 0x3fc999999999999aL

    mul-double/2addr v7, v9

    iput-wide v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mGestureHeight:D

    .line 173
    const-string v7, "[CarLibraryActivity]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mGestureHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mGestureHeight:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->initKeypadGestureDetector()V

    .line 176
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->initTitle()V

    .line 178
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mInternalEnough:Z

    .line 180
    new-instance v2, Landroid/content/IntentFilter;

    sget-object v7, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 181
    .local v2, f:Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v2}, Lcom/htc/music/carmode/CarLibraryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 469
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarLibraryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    iput-object v4, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mForResultCaller:Lcom/htc/music/carmode/MusicMaActivity;

    .line 479
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->removeAllActivities()V

    .line 481
    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    invoke-virtual {v1}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->releaseAdapter()V

    .line 483
    iput-object v4, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    .line 485
    :cond_0
    return-void

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[CarLibraryActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy, fail to unregisterReceiver(mCarDockListener), ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 94
    const-string v3, "[CarLibraryActivity]"

    const-string v4, "tab receive new intent"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 97
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    .line 99
    const-string v3, "caller"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, caller:Ljava/lang/String;
    const-class v3, Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 102
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 103
    .local v2, windowLp:Landroid/view/WindowManager$LayoutParams;
    const v3, 0x7f0c000e

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 106
    .end local v1           #win:Landroid/view/Window;
    .end local v2           #windowLp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mInternalEnough:Z

    .line 108
    iget-object v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v3, ""

    iget-object v4, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-object v3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    const-string v4, "artistid"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/htc/music/carmode/CarLibraryActivity;->startIndicateActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 786
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActivityResumed:Z

    .line 788
    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .prologue
    .line 765
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPostResume()V

    .line 770
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 851
    const-string v0, "[CarLibraryActivity]"

    const-string v1, "tab onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 853
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActivityResumed:Z

    .line 748
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 758
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 843
    const-string v0, "[CarLibraryActivity]"

    const-string v1, "tab onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 846
    const-string v0, "last_mimetype"

    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    .line 210
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 793
    :try_start_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 799
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->firstLaunch:Z

    .line 800
    return-void

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public setCategoryLeftBtnEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 935
    return-void
.end method

.method public setCategoryLeftBtnImage(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 947
    return-void
.end method

.method public setCategoryLeftBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 953
    return-void
.end method

.method public setCategoryLeftBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 959
    return-void
.end method

.method public setCategoryLeftBtnVisible(Z)V
    .locals 0
    .parameter "setVisibile"

    .prologue
    .line 941
    return-void
.end method

.method public setCategoryProgressVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 656
    if-eqz p1, :cond_1

    .line 657
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method public setCategoryRightBtn2Enable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 905
    return-void
.end method

.method public setCategoryRightBtn2Image(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 917
    return-void
.end method

.method public setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 923
    return-void
.end method

.method public setCategoryRightBtn2OnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 929
    return-void
.end method

.method public setCategoryRightBtn2Visible(Z)V
    .locals 0
    .parameter "setVisibile"

    .prologue
    .line 911
    return-void
.end method

.method public setCategoryRightBtnEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 875
    return-void
.end method

.method public setCategoryRightBtnImage(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 887
    return-void
.end method

.method public setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 893
    return-void
.end method

.method public setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 899
    return-void
.end method

.method public setCategoryRightBtnVisible(Z)V
    .locals 0
    .parameter "setVisibile"

    .prologue
    .line 881
    return-void
.end method

.method public setCategorySwitcherStyleTitle(ZLjava/lang/String;)V
    .locals 2
    .parameter "manualMainTitle"
    .parameter "tag"

    .prologue
    .line 451
    const-string v0, "[CarLibraryActivity]"

    const-string v1, "setCategorySwitcherStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 454
    if-nez p1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f0700ec

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 459
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 460
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/carmode/CarLibraryActivity;->setDropDownEnable(Z)V

    .line 463
    :cond_1
    return-void
.end method

.method public setMainTitle(I)V
    .locals 1
    .parameter "mainTitleRes"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 612
    :cond_0
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "mainTitle"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    .line 618
    :cond_0
    return-void
.end method

.method public setSecondaryTitle(I)V
    .locals 2
    .parameter "secondaryTitleRes"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 622
    if-lez p1, :cond_1

    .line 623
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(I)V

    .line 624
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "secondaryTitle"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 633
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitleVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 644
    if-eqz p1, :cond_1

    .line 645
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mActionbarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 10
    .parameter "tag"
    .parameter "launchIntent"

    .prologue
    const/4 v9, 0x0

    .line 492
    const/4 v5, -0x1

    .line 493
    .local v5, titleRes:I
    if-nez p1, :cond_1

    .line 495
    iget-object v6, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "carmode-last-browser"

    const-string v8, "ArtistBrowserTabPlugin"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 496
    const-string v6, "[CarLibraryActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read car mode last browse page: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v6, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    invoke-virtual {v6, p1}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v4

    .line 498
    .local v4, sourceItem:Lcom/htc/music/util/SourceItem;
    if-eqz v4, :cond_0

    .line 499
    iget-object p2, v4, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    .line 500
    iget v5, v4, Lcom/htc/music/util/SourceItem;->mTitleRes:I

    .line 510
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    .line 511
    const-string v6, "[CarLibraryActivity]"

    const-string v7, "shouldn\'t call startActivity without intent!!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :goto_1
    return-void

    .line 503
    .end local v4           #sourceItem:Lcom/htc/music/util/SourceItem;
    :cond_1
    iget-object v6, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "carmode-last-browser"

    invoke-interface {v6, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 504
    .local v1, bRes:Z
    const-string v6, "[CarLibraryActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Write car mode last browse page: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v6, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mCategorySwitcherAdapter:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    invoke-virtual {v6, p1}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;

    move-result-object v4

    .line 507
    .restart local v4       #sourceItem:Lcom/htc/music/util/SourceItem;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/htc/music/util/SourceItem;->mTitleRes:I

    goto :goto_0

    .line 515
    .end local v1           #bRes:Z
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 518
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x2000

    or-int/2addr v6, v7

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 522
    invoke-virtual {p0, v9}, Lcom/htc/music/carmode/CarLibraryActivity;->setCategoryProgressVisible(Z)V

    .line 523
    iget-boolean v6, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mInternalEnough:Z

    if-nez v6, :cond_3

    .line 526
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLibraryActivity;->showInternalStorageErrorMode()V

    .line 560
    :goto_2
    const/4 v6, 0x1

    invoke-virtual {p0, v6, p1}, Lcom/htc/music/carmode/CarLibraryActivity;->setCategorySwitcherStyleTitle(ZLjava/lang/String;)V

    .line 568
    iput-boolean v9, p0, Lcom/htc/music/carmode/CarLibraryActivity;->firstLaunch:Z

    goto :goto_1

    .line 528
    :cond_3
    iget-object v6, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v7, 0x303a

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 529
    .local v3, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 530
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "tag"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v6, "intent"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 532
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 536
    iget-boolean v6, p0, Lcom/htc/music/carmode/CarLibraryActivity;->firstLaunch:Z

    if-eqz v6, :cond_4

    const-string v6, "TrackBrowserTabPlugin"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 538
    :cond_4
    iget-object v6, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 557
    :goto_3
    invoke-virtual {p0, v5}, Lcom/htc/music/carmode/CarLibraryActivity;->setMainTitle(I)V

    goto :goto_2

    .line 544
    :cond_5
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v6

    new-instance v7, Lcom/htc/music/carmode/CarLibraryActivity$7;

    invoke-direct {v7, p0, v3}, Lcom/htc/music/carmode/CarLibraryActivity$7;-><init>(Lcom/htc/music/carmode/CarLibraryActivity;Landroid/os/Message;)V

    invoke-virtual {v6, v7}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_3
.end method

.method public startMaActivityForResult(Landroid/content/Intent;ILcom/htc/music/carmode/MusicMaActivity;)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"
    .parameter "caller"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mForResultCaller:Lcom/htc/music/carmode/MusicMaActivity;

    if-eqz v0, :cond_0

    .line 575
    const-string v0, "[CarLibraryActivity]"

    const-string v1, "startMaActivityForResult called but mForResultCaller is not null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_0
    iput-object p3, p0, Lcom/htc/music/carmode/CarLibraryActivity;->mForResultCaller:Lcom/htc/music/carmode/MusicMaActivity;

    .line 579
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/carmode/CarLibraryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 580
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 695
    const-string v0, "[CarLibraryActivity]"

    const-string v1, "tab startSearch...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ActivityGroup;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 698
    return-void
.end method
