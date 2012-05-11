.class public Lcom/htc/fragment/widget/CarouselFragment;
.super Landroid/app/Fragment;
.source "CarouselFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;,
        Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;
    }
.end annotation


# static fields
.field static final CHECK_TASK_EXISTENCE:I = 0x386

.field private static final DEFAULT_FEATURES:I = 0x2

.field static final DELETE_ONE_TAB:I = 0x4b0

.field public static final FEATURE_CUSTOM_TITLE:I = 0x4

.field private static final FEATURE_EMPTY_CONTENT:I = 0x1

.field public static final FEATURE_NO_EDITOR:I = 0x8

.field public static final FEATURE_NO_TITLE:I = 0x2

.field static final INSERT_POOL_TASK:I = 0x44d

.field static final INSERT_WIDGET_TASK:I = 0x44c

.field static final LOCAL_LOGV:Z = true

.field static final MODE_ACTIVITY:I = 0x3e9

.field static final MODE_EDITOR:I = 0x3ea

.field public static final NO_UPDATE_REQUIRED:I = 0x3f0

.field static final TOKEN_BIN:I = 0x384

.field static final TOKEN_GALLERY:I = 0x385

.field static final TOKEN_REORD_GALLERY:I = 0x3e8

.field static final TOKEN_UPDATE_BIN:I = 0x3e9

.field static final TOKEN_UPDATE_GALLERY:I = 0x3ea

.field public static final UPDATE_COUNT_TEXT:I = 0x3eb

.field public static final UPDATE_COUNT_TEXT_VISIBLE:I = 0x3ec

.field static final UPDATE_TASK_INFO_POOL:I = 0x3ed

.field static final UPDATE_TASK_INFO_WIDGET:I = 0x3ee

.field public static final UPDATE_TASK_NAME:I = 0x3ef

.field static final disableLandscape:Z

.field private static tabViewId:I


# instance fields
.field private final animDuration:I

.field private display:Landroid/view/Display;

.field private editModeListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;

.field eresources:Landroid/content/res/Resources;

.field private isPortrait:Z

.field private final mAuthority:Ljava/lang/String;

.field private mBinGridView:Lcom/htc/fragment/widget/BinGridView;

.field private mBundleKeyPrefix:Ljava/lang/String;

.field private mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

.field mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

.field mContentRoot:Lcom/htc/fragment/widget/CarouselContentGallery;

.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

.field private mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

.field private mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

.field private mFeatures:I

.field private mGID:Ljava/lang/String;

.field mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

.field private mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

.field mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

.field private mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

.field private mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field mIsDestroy:Z

.field private mIsProviderAp:Z

.field private mIsStartQueryCalled:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

.field private mMemoryMode:Z

.field private final mModel:Lcom/htc/fragment/widget/CarouselModel;

.field private mRestoring:Z

.field private mRootView:Landroid/view/View;

.field private mStateMode:I

.field private mTaskUri:Landroid/net/Uri;

.field private mTransactionCounter:I

.field private tabContentViewIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    sput-boolean v0, Lcom/htc/fragment/widget/CarouselFragment;->disableLandscape:Z

    .line 1385
    const/high16 v0, 0x4000

    sput v0, Lcom/htc/fragment/widget/CarouselFragment;->tabViewId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "authority"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 261
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 144
    new-instance v0, Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-direct {v0, p0}, Lcom/htc/fragment/app/LocalFragmentManager;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    .line 145
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    .line 147
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    .line 150
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTab:Ljava/lang/String;

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTabIndex:I

    .line 153
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRestoring:Z

    .line 158
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGID:Ljava/lang/String;

    .line 162
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    .line 204
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    .line 205
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    .line 206
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    .line 207
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    .line 211
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 213
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 217
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    .line 223
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mStateMode:I

    .line 237
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    .line 248
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsDestroy:Z

    .line 251
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentRoot:Lcom/htc/fragment/widget/CarouselContentGallery;

    .line 253
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    .line 1118
    iput v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    .line 1229
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    .line 1230
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->display:Landroid/view/Display;

    .line 1242
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->animDuration:I

    .line 1378
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->editModeListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;

    .line 1392
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->tabContentViewIds:Ljava/util/Map;

    .line 262
    new-instance v0, Lcom/htc/fragment/widget/CarouselModel;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselModel;-><init>(Lcom/htc/fragment/widget/CarouselFragment;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    .line 263
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mAuthority:Ljava/lang/String;

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tasks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    .line 265
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    .line 266
    new-instance v0, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;-><init>(Lcom/htc/fragment/widget/CarouselFragment;Lcom/htc/fragment/widget/CarouselFragment$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    .line 267
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsStartQueryCalled:Z

    .line 268
    return-void
.end method

.method static synthetic access$100(Lcom/htc/fragment/widget/CarouselFragment;)Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->editModeListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;

    return-object v0
.end method

.method private addSlidingDrawer()V
    .locals 7

    .prologue
    .line 272
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselHost;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 275
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3, v1}, Lcom/htc/fragment/widget/CarouselHost;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 276
    .local v0, child:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselHost;->removeView(Landroid/view/View;)V

    .line 277
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    instance-of v3, v0, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v3, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 280
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x2090024

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 284
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 285
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 286
    .restart local v0       #child:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselHost;->addView(Landroid/view/View;)V

    .line 284
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 274
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 288
    .end local v0           #child:Landroid/view/View;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 289
    return-void
.end method

.method private createTabContentViewId()I
    .locals 2

    .prologue
    .line 1387
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1388
    .local v0, activity:Landroid/app/Activity;
    :cond_0
    sget v1, Lcom/htc/fragment/widget/CarouselFragment;->tabViewId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/htc/fragment/widget/CarouselFragment;->tabViewId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1390
    sget v1, Lcom/htc/fragment/widget/CarouselFragment;->tabViewId:I

    return v1
.end method

.method private ensureCarouselHost(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureCarouselHost() mTaskUri: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-nez v0, :cond_2

    .line 727
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const v0, 0x2090018

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fragment/widget/CarouselFragment;->super_setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    .line 733
    const v0, 0x1020012

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    .line 734
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView(Z)V

    .line 739
    :goto_2
    return-void

    .line 727
    :cond_0
    const v0, 0x2090025

    goto :goto_0

    :cond_1
    move v0, v2

    .line 734
    goto :goto_1

    .line 736
    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->initLayout()V

    .line 737
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView(Z)V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method private final findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private hideCarouselWithDialog()V
    .locals 3

    .prologue
    .line 1316
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->hideCarousel()V

    .line 1317
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x20400bf

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20400c0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040151

    new-instance v2, Lcom/htc/fragment/widget/CarouselFragment$1;

    invoke-direct {v2, p0}, Lcom/htc/fragment/widget/CarouselFragment$1;-><init>(Lcom/htc/fragment/widget/CarouselFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1326
    return-void
.end method

.method private initalPoolNWidget()V
    .locals 11

    .prologue
    const v2, 0x2090022

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 301
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    .line 302
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 304
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->addSlidingDrawer()V

    .line 306
    const v0, 0x1020012

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    .line 309
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    .line 314
    :cond_0
    const v0, 0x2020064

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinGridView;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    .line 315
    const v0, 0x1020013

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselWidget;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    .line 316
    const v0, 0x2020063

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    .line 318
    const v0, 0x1020011

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselContentGallery;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentRoot:Lcom/htc/fragment/widget/CarouselContentGallery;

    .line 321
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iput-object p0, v0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->carousel:Lcom/htc/fragment/widget/CarouselFragment;

    .line 324
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->actionBar:Landroid/app/ActionBar;

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselModel;->getHandler(Landroid/content/Context;)Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    .line 328
    new-instance v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-direct/range {v0 .. v7}, Lcom/htc/fragment/widget/BinAdapter;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/fragment/content/NotifyingAsyncQueryHandler;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 332
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/fragment/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/BinGridView;->setDragger(Lcom/htc/fragment/widget/DragController;)V

    .line 339
    new-instance v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-direct/range {v0 .. v9}, Lcom/htc/fragment/widget/BinAdapter;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/fragment/content/NotifyingAsyncQueryHandler;Lcom/htc/fragment/widget/CarouselModel;I)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 343
    new-instance v1, Lcom/htc/fragment/widget/CarouselContentAdapter;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x2090023

    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-direct/range {v1 .. v7}, Lcom/htc/fragment/widget/CarouselContentAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/fragment/widget/CarouselModel;)V

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    .line 346
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/fragment/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    .line 350
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/fragment/widget/CarouselContentAdapter;->eresources:Landroid/content/res/Resources;

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setDragger(Lcom/htc/fragment/widget/DragController;)V

    .line 355
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setDrawer(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)V

    .line 356
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/CarouselWidget;->setFragment(Lcom/htc/fragment/widget/CarouselFragment;)V

    .line 358
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/BinGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 359
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 361
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentRoot:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setContentGallery(Lcom/htc/fragment/widget/CarouselContentGallery;)V

    .line 362
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentRoot:Lcom/htc/fragment/widget/CarouselContentGallery;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 365
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setOnDrawerOpenListener(Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerOpenListener;)V

    .line 366
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setOnDrawerCloseListener(Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerCloseListener;)V

    .line 367
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setOnDrawerScrollListener(Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerScrollListener;)V

    .line 368
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setOnEditModeDrawerStateListener(Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;)V

    .line 370
    const v0, 0x20401d2

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->setDrawerTitle(I)V

    .line 372
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->initLayout()V

    .line 378
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 379
    invoke-virtual {p0, v9}, Lcom/htc/fragment/widget/CarouselFragment;->setMemoryMode(Z)V

    .line 380
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v9}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->setNoEditorMode(Z)V

    .line 385
    :goto_0
    return-void

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->setEditorMode(Z)V

    .line 383
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v10}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->setNoEditorMode(Z)V

    goto :goto_0
.end method

.method private onCarouselCheck()V
    .locals 2

    .prologue
    .line 686
    const v0, 0x1020012

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    .line 688
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-nez v0, :cond_2

    .line 699
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/fragment/widget/CarouselFragment;->printViewTree(Landroid/view/ViewGroup;I)V

    .line 701
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a CarouselHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setup(Lcom/htc/fragment/app/LocalFragmentManager;)V

    .line 707
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsProviderAp:Z

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setIsProviderAp(Z)V

    .line 708
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/CarouselHost;->setCarousel(Lcom/htc/fragment/widget/CarouselFragment;)V

    .line 711
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsProviderAp:Z

    if-nez v0, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->requestCarouselFeature(I)Z

    .line 714
    :cond_3
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->initalPoolNWidget()V

    .line 715
    return-void
.end method

.method private onContentChanged()V
    .locals 2

    .prologue
    .line 665
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    .line 666
    .local v0, features:I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    .line 667
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onCarouselCheck()V

    .line 669
    :cond_0
    return-void
.end method

.method private printViewTree(Landroid/view/ViewGroup;I)V
    .locals 5
    .parameter "container"
    .parameter "level"

    .prologue
    .line 672
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 674
    .local v1, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CarouselTraceView] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 675
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 676
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 677
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 678
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v0, v3}, Lcom/htc/fragment/widget/CarouselFragment;->printViewTree(Landroid/view/ViewGroup;I)V

    .line 675
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 680
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CarouselTraceView] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 683
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private final setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "layoutResID"

    .prologue
    .line 1050
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    .line 1051
    .local v0, features:I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    .line 1052
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselFragment;->super_setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    .line 1064
    :goto_0
    return-void

    .line 1054
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->requestCarouselFeature(I)Z

    .line 1055
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->ensureCarouselHost(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 1056
    const v2, 0x2020069

    invoke-direct {p0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1057
    .local v1, root:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    .line 1058
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1059
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onCarouselCheck()V

    goto :goto_0

    .line 1061
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "something wrong in the layout!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 1067
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/fragment/widget/CarouselFragment;->setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1068
    return-void
.end method

.method private setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "view"
    .parameter "params"

    .prologue
    .line 1071
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    .line 1072
    .local v0, features:I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    .line 1073
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/CarouselFragment;->super_setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1086
    :goto_0
    return-void

    .line 1075
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->requestCarouselFeature(I)Z

    .line 1076
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->ensureCarouselHost(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 1077
    const v2, 0x2020069

    invoke-direct {p0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1078
    .local v1, root:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    .line 1079
    invoke-virtual {v1, p3, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1080
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onCarouselCheck()V

    goto :goto_0

    .line 1082
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "something wrong in the layout!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setDrawerTitle(I)V
    .locals 2
    .parameter "titleId"

    .prologue
    .line 856
    const v1, 0x2020065

    invoke-direct {p0, v1}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 857
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 858
    return-void
.end method

.method private setOrientation()V
    .locals 2

    .prologue
    .line 1233
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1240
    :goto_0
    return-void

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->display:Landroid/view/Display;

    if-nez v0, :cond_1

    .line 1236
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->display:Landroid/view/Display;

    .line 1237
    :cond_1
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselFragment;->disableLandscape:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setTipInDB()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 829
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 830
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tips"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 831
    .local v1, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 833
    .local v8, toShow:Z
    const/4 v6, 0x0

    .line 835
    .local v6, c:Landroid/database/Cursor;
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 836
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 837
    const/4 v8, 0x1

    .line 838
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 839
    .local v9, values:Landroid/content/ContentValues;
    const-string v2, "first_time"

    const-string v3, "1"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 842
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v2, v8

    .line 848
    :goto_0
    return v2

    .line 843
    :catch_0
    move-exception v7

    .line 844
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v2, v10

    .line 845
    goto :goto_0
.end method

.method private final super_setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "layoutResID"

    .prologue
    .line 1090
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    .line 1091
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onContentChanged()V

    .line 1092
    return-void
.end method

.method private final super_setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "view"
    .parameter "params"

    .prologue
    .line 1095
    iput-object p3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    .line 1096
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onContentChanged()V

    .line 1098
    return-void
.end method


# virtual methods
.method addAndSyncTask(Lcom/htc/fragment/widget/TaskInfo;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 790
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/htc/fragment/widget/CarouselModel;->addTaskToDatabase(Landroid/content/Context;Lcom/htc/fragment/widget/TaskInfo;)V

    .line 791
    return-void
.end method

.method public beginTransaction()V
    .locals 2

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->setToQueueMode(Z)V

    .line 1125
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    .line 1126
    return-void
.end method

.method public dispatchRestart()V
    .locals 2

    .prologue
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dispatchRestart()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchRestart()V

    .line 430
    return-void
.end method

.method public endTransaction()V
    .locals 2

    .prologue
    .line 1134
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    .line 1135
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselModel;->startProcessingOperations(Landroid/content/Context;)V

    .line 1137
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->startQuery()V

    .line 1139
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    .line 1140
    :cond_1
    return-void
.end method

.method protected enterEditMode()V
    .locals 1

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->switchPanelToPositive()V

    .line 1335
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->openDrawer()V

    .line 1336
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->showCarousel()V

    .line 1338
    :cond_0
    return-void
.end method

.method protected exitEditMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1342
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1344
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setDragDropAnimationInitState()V

    .line 1345
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->close()V

    .line 1347
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1353
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->hideCarousel()V

    .line 1358
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->showCarousel()V

    goto :goto_0
.end method

.method getBinAdapterCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 966
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-nez v0, :cond_1

    .line 762
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarouselFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreateView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    return-object v0
.end method

.method public getCarouselWidget()Lcom/htc/fragment/widget/CarouselWidget;
    .locals 3

    .prologue
    .line 782
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->getCarouselWidget()Lcom/htc/fragment/widget/CarouselWidget;

    move-result-object v0

    if-nez v0, :cond_1

    .line 783
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarouselFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreateView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->getCarouselWidget()Lcom/htc/fragment/widget/CarouselWidget;

    move-result-object v0

    return-object v0
.end method

.method getGId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGID:Ljava/lang/String;

    return-object v0
.end method

.method getLocalFragmentManager()Lcom/htc/fragment/app/LocalFragmentManager;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    return-object v0
.end method

.method getModel()Lcom/htc/fragment/widget/CarouselModel;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    return-object v0
.end method

.method getStateMode()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mStateMode:I

    return v0
.end method

.method getTabContentViewId(Ljava/lang/String;)I
    .locals 5
    .parameter "tag"

    .prologue
    .line 1396
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1397
    .local v1, f:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 1398
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->getContainerId(Landroid/app/Fragment;)I

    move-result v0

    .line 1399
    .local v0, containerId:I
    if-lez v0, :cond_0

    .line 1400
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->tabContentViewIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    .end local v0           #containerId:I
    :goto_0
    return v0

    .line 1404
    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->tabContentViewIds:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1405
    .local v2, id:Ljava/lang/Integer;
    if-nez v2, :cond_1

    .line 1406
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->tabContentViewIds:Ljava/util/Map;

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->createTabContentViewId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method getWidgetAdapterCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 971
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method hideCarousel()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v3, 0x3f80

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1282
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 1284
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setOrientation()V

    .line 1285
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/htc/fragment/widget/CarouselWidget;->setVisibility(I)V

    .line 1288
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1291
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ActionBarImpl;

    .line 1293
    .local v9, actionBarImpl:Lcom/android/internal/app/ActionBarImpl;
    invoke-virtual {v9}, Lcom/android/internal/app/ActionBarImpl;->isEnableHTCActionBar()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1294
    invoke-virtual {v9, v12}, Lcom/android/internal/app/ActionBarImpl;->enableHTCLandscape(Z)V

    .line 1299
    .end local v9           #actionBarImpl:Lcom/android/internal/app/ActionBarImpl;
    :cond_0
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1300
    .local v10, animation1:Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    if-eqz v4, :cond_2

    move v4, v2

    :goto_0
    iget-boolean v5, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    if-eqz v5, :cond_3

    move v8, v3

    :goto_1
    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1306
    .local v0, animation2:Landroid/view/animation/Animation;
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1307
    .local v11, animationset:Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1308
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1309
    const-wide/16 v1, 0x12c

    invoke-virtual {v11, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1310
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1, v11}, Lcom/htc/fragment/widget/CarouselWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1312
    .end local v0           #animation2:Landroid/view/animation/Animation;
    .end local v10           #animation1:Landroid/view/animation/Animation;
    .end local v11           #animationset:Landroid/view/animation/AnimationSet;
    :cond_1
    return-void

    .restart local v10       #animation1:Landroid/view/animation/Animation;
    :cond_2
    move v4, v3

    .line 1300
    goto :goto_0

    :cond_3
    move v8, v2

    goto :goto_1
.end method

.method isDestroy()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsDestroy:Z

    return v0
.end method

.method protected isInEditMode()Z
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    .line 1369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMemoryMode()Z
    .locals 1

    .prologue
    .line 815
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1107
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1108
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setDragDropAnimationInitState()V

    .line 1109
    return-void
.end method

.method onContentCursorBuildComplete(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselContentAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 297
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsDestroy:Z

    .line 395
    const-string v0, "CarouselFragment onCreate"

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    .line 396
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 397
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 399
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    .line 401
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselModel;->setUri(Landroid/net/Uri;)V

    .line 403
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselModel;->isProviderAP(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsProviderAp:Z

    .line 404
    if-eqz p1, :cond_0

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRestoring:Z

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->beginTransaction()V

    .line 411
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "saved"

    .prologue
    .line 573
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->ensureCarouselHost(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dispatchCreateView()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 576
    if-nez p3, :cond_2

    const/4 v0, 0x0

    .line 577
    .local v0, cur:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 578
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselHost;->setBackupCurrentTag(Ljava/lang/String;)V

    .line 579
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->setCurrentId(Ljava/lang/String;)V

    .line 582
    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v3, :cond_1

    if-eqz p3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "drawerOpened"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 583
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setVisibility(I)V

    .line 584
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->open()V

    .line 587
    :cond_1
    const-string v1, ""

    .line 588
    .local v1, globalId:Ljava/lang/String;
    if-nez p3, :cond_4

    .line 589
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, tag:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 595
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 599
    .end local v2           #tag:Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->setGlobalId(Ljava/lang/String;)V

    .line 601
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, p3}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchCreateView(Landroid/os/Bundle;)V

    .line 603
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    return-object v3

    .line 576
    .end local v0           #cur:Ljava/lang/String;
    .end local v1           #globalId:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "currentTab"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 593
    .restart local v0       #cur:Ljava/lang/String;
    .restart local v1       #globalId:Ljava/lang/String;
    .restart local v2       #tag:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->hashCode()I

    move-result v4

    const/16 v5, 0x24

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 597
    .end local v2           #tag:Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "globalId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public onCurrentTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "currentTab"

    .prologue
    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCurrentTabChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 531
    const-string v0, "CarouselFragment onDestroy"

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " dispatchDestroy("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 535
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchDestroy(Z)V

    .line 536
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 539
    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRestoring:Z

    .line 540
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    .line 543
    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsDestroy:Z

    .line 544
    return-void

    :cond_2
    move v0, v1

    .line 534
    goto :goto_0

    :cond_3
    move v0, v1

    .line 535
    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dispatchDestroyView()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchDestroyView()V

    .line 517
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 519
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselModel;->cleanTasks()V

    .line 523
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/fragment/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/fragment/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/fragment/widget/CarouselContentAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 527
    :cond_2
    return-void
.end method

.method onEditDrawerAboutToOpen()V
    .locals 0

    .prologue
    .line 1145
    return-void
.end method

.method onEditDrawerClosed()V
    .locals 5

    .prologue
    const/16 v2, 0x3e9

    .line 899
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->clearFocus()V

    .line 901
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->removeTipBubble()V

    .line 902
    iput v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mStateMode:I

    .line 903
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setStateMode(I)V

    .line 904
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselWidget;->onDrawerClosed(I)V

    .line 907
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v1, :cond_0

    .line 908
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 909
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "system_server"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "activity_tabCount"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "tab_count"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/BinAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 912
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 913
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 915
    .end local v0           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_0
    return-void
.end method

.method onEditDrawerCompleteClose()V
    .locals 0

    .prologue
    .line 1148
    return-void
.end method

.method onEditDrawerOpened()V
    .locals 9

    .prologue
    const/16 v8, 0x3ea

    const/4 v2, 0x0

    .line 881
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x384

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    const-string v5, "is_host=0"

    const-string v7, "task_order"

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :cond_0
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setTipInDB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 888
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->createTipBubble()V

    .line 889
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->showTipBubble()V

    .line 892
    :cond_1
    iput v8, p0, Lcom/htc/fragment/widget/CarouselFragment;->mStateMode:I

    .line 893
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v8}, Lcom/htc/fragment/widget/CarouselWidget;->setStateMode(I)V

    .line 894
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->onDrawerOpened()V

    .line 895
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->requestFocus()Z

    .line 896
    return-void
.end method

.method onEditScrollEnded()V
    .locals 0

    .prologue
    .line 918
    return-void
.end method

.method onEditScrollStarted()V
    .locals 1

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setDragDropAnimationInitState()V

    .line 922
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->removeTipBubble()V

    .line 923
    return-void
.end method

.method onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "type"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "datebase error: dismiss window type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " values "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selectionArgs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p7, :cond_1

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 978
    return-void

    .line 976
    :cond_0
    const-string v0, " null "

    goto :goto_0

    :cond_1
    const-string v0, " null"

    goto :goto_1
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .parameter "hidden"

    .prologue
    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dispatchHiddenChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchHiddenChanged(Z)V

    .line 511
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 472
    const-string v0, "CarouselFragment onPause"

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " dispatchPause()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 475
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchPause(Z)V

    .line 476
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 478
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 479
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v3, 0x384

    invoke-virtual {v0, v3}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_2

    .line 481
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsStartQueryCalled:Z

    .line 482
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 485
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setDragDropAnimationInitState()V

    .line 488
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 490
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->close()V

    .line 491
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 492
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 493
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->hideCarousel()V

    .line 500
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v0, v1

    .line 475
    goto :goto_0

    .line 495
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->showCarousel()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarouselFragment onResume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRestoring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    .line 462
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 464
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->startQuery()V

    .line 466
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dispatchResume()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchResume()V

    .line 468
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 608
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, currentTabTag:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 614
    :cond_0
    if-eqz v0, :cond_1

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "currentTab"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_1
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v1, :cond_2

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "drawerOpened"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 622
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "globalId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v2}, Lcom/htc/fragment/app/LocalFragmentManager;->getGlobalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v1, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 625
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 434
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 438
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v1, :cond_1

    .line 439
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->getBackUpCurrentTag()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 441
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 445
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 453
    .end local v0           #cur:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->endTransaction()V

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dispatchStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v1}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchStart()V

    .line 457
    return-void

    .line 446
    .restart local v0       #cur:Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    .line 447
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0
.end method

.method public onTabEndSliding(Ljava/lang/String;)V
    .locals 0
    .parameter "endTag"

    .prologue
    .line 941
    return-void
.end method

.method public onTabStartSliding(Ljava/lang/String;)V
    .locals 0
    .parameter "startTag"

    .prologue
    .line 932
    return-void
.end method

.method onTaskSync()V
    .locals 3

    .prologue
    .line 810
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 811
    .local v0, adapter:Landroid/widget/BaseAdapter;
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/htc/fragment/widget/CarouselModel;->syncTasks(Landroid/content/Context;Landroid/widget/BaseAdapter;)V

    .line 812
    return-void
.end method

.method removeTagFromDB(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 794
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/htc/fragment/widget/CarouselModel;->removeTagFromDB(Landroid/content/Context;Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method public final requestCarouselFeature(I)Z
    .locals 1
    .parameter "featureId"

    .prologue
    .line 1003
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 1004
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    .line 1006
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    .line 1007
    const/4 v0, 0x1

    return v0
.end method

.method setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 806
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/fragment/widget/CarouselModel;->setAlternativeTabName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 807
    return-void
.end method

.method setBinAdapterCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 953
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 954
    return-void
.end method

.method public final setCarouselFeatureInt(II)V
    .locals 4
    .parameter "featureId"
    .parameter "value"

    .prologue
    .line 1026
    move v1, p1

    .line 1029
    .local v1, featureMask:I
    iget v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 1036
    const v2, 0x202006a

    invoke-direct {p0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1038
    .local v0, customContainer:Landroid/widget/FrameLayout;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customViewContainer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselLog;->i(Ljava/lang/String;)V

    .line 1040
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_0

    .line 1042
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1043
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)I
    .locals 2
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/fragment/widget/CarouselModel;->setCountText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method setCountVisibility(Ljava/lang/String;Z)I
    .locals 2
    .parameter "tag"
    .parameter "enable"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/fragment/widget/CarouselModel;->setCountTextVisible(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public setDefaultTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTab:Ljava/lang/String;

    .line 568
    iput p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTabIndex:I

    .line 569
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 557
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTab:Ljava/lang/String;

    .line 558
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTabIndex:I

    .line 559
    return-void
.end method

.method setDragDropAnimationInitState()V
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->cancelDrag()V

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinGridView;->initFlags()V

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_2

    .line 871
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->forceStopPartialFling()V

    .line 873
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->cancelAnimation()V

    .line 875
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    .line 876
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->requestLayout()V

    .line 878
    :cond_2
    return-void
.end method

.method public setEditModeListener(Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->editModeListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;

    .line 1382
    return-void
.end method

.method public setGId(I)V
    .locals 1
    .parameter "gId"

    .prologue
    .line 634
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->setGId(Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method public setGId(Ljava/lang/String;)V
    .locals 3
    .parameter "gId"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    const-string v1, "gId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 646
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please invoke setGID() before onCreate(). Invoking in constructor is recommended."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_0
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGID:Ljava/lang/String;

    .line 650
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->setGlobalId(Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method setMemoryMode(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 819
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    .line 820
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->close()V

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->setMemoryMode(Z)V

    .line 825
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setEditorMode(Z)V

    .line 826
    return-void

    .line 825
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-nez v0, :cond_0

    .line 1222
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    .line 1226
    :goto_0
    return-void

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselHost;->setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V

    goto :goto_0
.end method

.method setWidgetAdapterCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 957
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 959
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 960
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->hideCarousel()V

    .line 962
    :cond_0
    return-void
.end method

.method showCarousel()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v3, 0x3f80

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1247
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_1

    .line 1249
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setOrientation()V

    .line 1250
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2, v12}, Lcom/htc/fragment/widget/CarouselWidget;->setVisibility(I)V

    .line 1253
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1256
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ActionBarImpl;

    .line 1258
    .local v9, actionBarImpl:Lcom/android/internal/app/ActionBarImpl;
    invoke-virtual {v9}, Lcom/android/internal/app/ActionBarImpl;->isEnableHTCActionBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1259
    invoke-virtual {v9, v1}, Lcom/android/internal/app/ActionBarImpl;->enableHTCLandscape(Z)V

    .line 1264
    .end local v9           #actionBarImpl:Lcom/android/internal/app/ActionBarImpl;
    :cond_0
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1265
    .local v10, animation1:Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    if-eqz v2, :cond_2

    move v2, v4

    :goto_0
    iget-boolean v5, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    if-eqz v5, :cond_3

    move v6, v3

    :goto_1
    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1271
    .local v0, animation2:Landroid/view/animation/Animation;
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1272
    .local v11, animationset:Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1273
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1274
    const-wide/16 v1, 0x12c

    invoke-virtual {v11, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1275
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1, v11}, Lcom/htc/fragment/widget/CarouselWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1277
    .end local v0           #animation2:Landroid/view/animation/Animation;
    .end local v10           #animation1:Landroid/view/animation/Animation;
    .end local v11           #animationset:Landroid/view/animation/AnimationSet;
    :cond_1
    return-void

    .restart local v10       #animation1:Landroid/view/animation/Animation;
    :cond_2
    move v2, v3

    .line 1265
    goto :goto_0

    :cond_3
    move v6, v4

    goto :goto_1
.end method

.method startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 415
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsStartQueryCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x385

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    const-string v5, "is_host=1"

    const-string v7, "task_order"

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsStartQueryCalled:Z

    .line 424
    :cond_1
    return-void
.end method

.method updateWidget(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 981
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setSelection(I)V

    .line 982
    return-void
.end method
