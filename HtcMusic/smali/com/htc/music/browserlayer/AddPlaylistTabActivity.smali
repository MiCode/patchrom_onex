.class public Lcom/htc/music/browserlayer/AddPlaylistTabActivity;
.super Landroid/app/ActivityGroup;
.source "AddPlaylistTabActivity.java"

# interfaces
.implements Lcom/htc/music/widget/IDismissBubbleInterface;
.implements Lcom/htc/music/widget/IMusicTabActivityInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/AddPlaylistTabActivity$MyIdleHandler;
    }
.end annotation


# static fields
.field private static final FIRST_CONTENT_INDEX:I = 0x0

.field private static final INITIAL_TITLE:I = 0xc351

.field public static final LAUNCH_PARAMETER_NOT_SAVE_HISTORY:I = 0x3

.field private static final MAX_CONTENT_FRAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[AddPlaylistTabActivity]"


# instance fields
.field mActionBar:Lcom/htc/widget/ActionBarExt;

.field private mArtistId:Ljava/lang/String;

.field private mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

.field private mComposer:Ljava/lang/String;

.field protected mContentView:Landroid/widget/FrameLayout;

.field mCustomContainer:Lcom/htc/widget/ActionBarContainer;

.field private mFirstCreate:Z

.field protected mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

.field private mGenreId:Ljava/lang/String;

.field private mHandlingCreateOptionsMenu:Z

.field private mHandlingOptionsItemSelected:Z

.field private mHandlingPrepareOptionsMenu:Z

.field private mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

.field mLastTag:Ljava/lang/String;

.field private mMenu:Landroid/view/Menu;

.field private mPlaylistUri:Ljava/lang/String;

.field private mUIHandler:Landroid/os/Handler;

.field private mUnlockReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 63
    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 65
    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 66
    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 69
    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 76
    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 80
    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mPlaylistUri:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mGenreId:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mComposer:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mArtistId:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mLastTag:Ljava/lang/String;

    .line 243
    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 305
    new-instance v0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$3;-><init>(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mUIHandler:Landroid/os/Handler;

    .line 329
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingCreateOptionsMenu:Z

    .line 330
    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mMenu:Landroid/view/Menu;

    .line 371
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingPrepareOptionsMenu:Z

    .line 390
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingOptionsItemSelected:Z

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mFirstCreate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)Lcom/htc/music/widget/CategorySwitcherAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    return-object v0
.end method

.method private resetBackgroundAsset()V
    .locals 5

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 461
    .local v0, res:Landroid/content/res/Resources;
    const-string v2, "common_app_bkg"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 462
    .local v1, resId:I
    const-string v2, "common_app_bkg"

    invoke-static {p0, v2, v1}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 464
    if-lez v1, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 467
    :cond_0
    return-void
.end method

.method private setHeaderRightButton(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 138
    return-void
.end method


# virtual methods
.method protected changeContentView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, -0x1

    .line 276
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 278
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mContentView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    :cond_0
    return-void
.end method

.method public disableCategoryDropDown()V
    .locals 0

    .prologue
    .line 532
    return-void
.end method

.method public dismissPopupBubble()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    .line 560
    :cond_0
    return-void
.end method

.method public enableFooterButtonPanel(Z)Lcom/htc/widget/HtcFooter;
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 565
    const v2, 0x7f080007

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 566
    .local v0, btnViewStub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 567
    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 570
    :cond_0
    const v2, 0x7f080008

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooter;

    .line 571
    .local v1, footer:Lcom/htc/widget/HtcFooter;
    if-eqz v1, :cond_1

    .line 572
    if-eqz p1, :cond_3

    .line 573
    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 579
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v2, :cond_2

    .line 580
    iget-object v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v2, p1}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 583
    :cond_2
    return-object v1

    .line 575
    :cond_3
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    goto :goto_0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 265
    invoke-super {p0}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 266
    .local v2, currentActivity:Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 272
    .end local v2           #currentActivity:Landroid/app/Activity;
    :goto_0
    return-object v2

    .line 268
    .restart local v2       #currentActivity:Landroid/app/Activity;
    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mContentView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 269
    .local v1, childView:Landroid/view/View;
    if-nez v1, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 271
    .local v0, childContext:Landroid/content/Context;
    if-eqz v0, :cond_2

    if-ne v0, p0, :cond_3

    :cond_2
    move-object v2, v3

    goto :goto_0

    .line 272
    :cond_3
    check-cast v0, Landroid/app/Activity;

    .end local v0           #childContext:Landroid/content/Context;
    move-object v2, v0

    goto :goto_0
.end method

.method protected initTitle()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 144
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 145
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 147
    new-instance v0, Lcom/htc/music/widget/CategorySwitcherAdapter;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/CategorySwitcherAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 148
    new-instance v0, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v1, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;-><init>(Landroid/content/Context;Lcom/htc/music/widget/CategorySwitcherAdapter;)V

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 153
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 154
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCategoryItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    new-instance v1, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$2;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$2;-><init>(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/widget/MusicMaActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 258
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 259
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 452
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 454
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 91
    const-string v1, "[AddPlaylistTabActivity]"

    const-string v2, "edit tab oncreate"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->setVolumeControlStream(I)V

    .line 95
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$1;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$1;-><init>(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.htc.music.lockscreen_start"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->requestWindowFeature(I)Z

    .line 110
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->requestWindowFeature(I)Z

    .line 111
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x2080001

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 113
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 115
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 124
    :goto_0
    const-string v1, "[AddPlaylistTabActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlaylistUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->setContentView(I)V

    .line 128
    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 130
    const v1, 0x1020011

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 133
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->setTabActivityResult(Landroid/content/Context;I)V

    .line 134
    return-void

    .line 118
    :cond_2
    const-string v1, "playlisturi"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mPlaylistUri:Ljava/lang/String;

    .line 119
    const-string v1, "genreid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mGenreId:Ljava/lang/String;

    .line 120
    const-string v1, "composer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mComposer:Ljava/lang/String;

    .line 121
    const-string v1, "artistid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mArtistId:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 333
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mMenu:Landroid/view/Menu;

    if-eq v0, p1, :cond_1

    .line 334
    const-string v0, "[AddPlaylistTabActivity]"

    const-string v1, "activity create another panel!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    :goto_0
    return v2

    .line 337
    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingCreateOptionsMenu:Z

    if-eq v2, v0, :cond_0

    .line 338
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingCreateOptionsMenu:Z

    .line 340
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 341
    iput-object p1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mMenu:Landroid/view/Menu;

    .line 346
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->onPrepareInnerOptionsMenu(Landroid/view/Menu;)Z

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingCreateOptionsMenu:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 432
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 446
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[AddPlaylistTabActivity]"

    const-string v2, "onDestroy, fail to unregisterReceiver(mUnlockReceiver)"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 394
    iget-boolean v4, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingOptionsItemSelected:Z

    if-ne v5, v4, :cond_0

    move v2, v3

    .line 408
    :goto_0
    return v2

    .line 396
    :cond_0
    iput-boolean v5, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingOptionsItemSelected:Z

    .line 397
    const/4 v2, 0x0

    .line 398
    .local v2, result:Z
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 399
    .local v0, currentActivity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 400
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 407
    :cond_1
    :goto_1
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingOptionsItemSelected:Z

    goto :goto_0

    .line 402
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mLastTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 403
    .local v1, fragment:Landroid/app/Fragment;
    if-eqz v1, :cond_1

    .line 404
    invoke-virtual {v1, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_1
.end method

.method public onPrepareInnerOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 353
    if-nez p1, :cond_0

    .line 354
    const-string v1, "[AddPlaylistTabActivity]"

    const-string v2, "menu is null!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_0
    return v3

    .line 357
    :cond_0
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingCreateOptionsMenu:Z

    .line 358
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeGroup(I)V

    .line 362
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 363
    .local v0, currentActivity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 365
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 367
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingCreateOptionsMenu:Z

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 374
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingPrepareOptionsMenu:Z

    if-ne v2, v1, :cond_0

    .line 386
    :goto_0
    return v2

    .line 376
    :cond_0
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingPrepareOptionsMenu:Z

    .line 378
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 379
    .local v0, currentActivity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 382
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingPrepareOptionsMenu:Z

    goto :goto_0

    .line 385
    :cond_1
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHandlingPrepareOptionsMenu:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 417
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 420
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mFirstCreate:Z

    if-eqz v0, :cond_0

    .line 421
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$MyIdleHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$MyIdleHandler;-><init>(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;Lcom/htc/music/browserlayer/AddPlaylistTabActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mFirstCreate:Z

    .line 424
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 428
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 429
    return-void
.end method

.method public setCategoryLeftBtnEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 546
    return-void
.end method

.method public setCategoryLeftBtnImage(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 548
    return-void
.end method

.method public setCategoryLeftBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 549
    return-void
.end method

.method public setCategoryLeftBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 550
    return-void
.end method

.method public setCategoryLeftBtnVisible(Z)V
    .locals 0
    .parameter "setVisibile"

    .prologue
    .line 547
    return-void
.end method

.method public setCategoryProgressVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 522
    if-eqz p1, :cond_1

    .line 523
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method public setCategoryRightBtn2Enable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 540
    return-void
.end method

.method public setCategoryRightBtn2Image(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 542
    return-void
.end method

.method public setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 543
    return-void
.end method

.method public setCategoryRightBtn2OnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 544
    return-void
.end method

.method public setCategoryRightBtn2Visible(Z)V
    .locals 0
    .parameter "setVisibile"

    .prologue
    .line 541
    return-void
.end method

.method public setCategoryRightBtnEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 534
    return-void
.end method

.method public setCategoryRightBtnImage(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 536
    return-void
.end method

.method public setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 537
    return-void
.end method

.method public setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 538
    return-void
.end method

.method public setCategoryRightBtnVisible(Z)V
    .locals 0
    .parameter "setVisibile"

    .prologue
    .line 535
    return-void
.end method

.method public setMainTitle(I)V
    .locals 1
    .parameter "mainTitleRes"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 476
    :cond_0
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "mainTitle"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    .line 482
    :cond_0
    return-void
.end method

.method public setSecondaryTitle(I)V
    .locals 2
    .parameter "secondaryTitleRes"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 487
    if-lez p1, :cond_1

    .line 488
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(I)V

    .line 489
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "secondaryTitle"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 499
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitleVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 510
    if-eqz p1, :cond_1

    .line 511
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mHeaderDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 175
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 176
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 2
    .parameter "tag"
    .parameter "intent"
    .parameter "saveHistory"

    .prologue
    .line 179
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;IZ)V

    .line 180
    return-void
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;IZ)V
    .locals 10
    .parameter "tag"
    .parameter "launchIntent"
    .parameter "saveHistory"
    .parameter "clearPreviousHistory"

    .prologue
    const v9, 0x1020011

    const/4 v8, 0x0

    .line 184
    if-nez p2, :cond_1

    .line 185
    const-string v7, "[AddPlaylistTabActivity]"

    const-string v8, "shouldn\'t call startActivity without intent!!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mLastTag:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mLastTag:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 191
    :cond_2
    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->enableFooterButtonPanel(Z)Lcom/htc/widget/HtcFooter;

    .line 193
    const-string v7, "IsFragment"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 194
    .local v5, isFragment:Z
    if-eqz v5, :cond_4

    .line 198
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-direct {v0, p2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;-><init>(Landroid/content/Intent;)V

    .line 199
    .local v0, details:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    invoke-virtual {v0, p2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setIntent(Landroid/content/Intent;)V

    .line 200
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 201
    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 202
    .local v4, group:Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 203
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v9, v0, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 220
    .end local v0           #details:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    .end local v4           #group:Landroid/view/ViewGroup;
    :goto_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->onPrepareInnerOptionsMenu(Landroid/view/Menu;)Z

    .line 222
    iget-object v7, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mLastTag:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 223
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 224
    .local v2, fragManager:Landroid/app/FragmentManager;
    iget-object v7, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mLastTag:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 225
    .local v3, fragment:Landroid/app/Fragment;
    if-eqz v3, :cond_5

    .line 226
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 231
    .end local v2           #fragManager:Landroid/app/FragmentManager;
    .end local v3           #fragment:Landroid/app/Fragment;
    :cond_3
    :goto_2
    if-eqz v5, :cond_6

    .line 232
    iput-object p1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mLastTag:Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_4
    const/4 v6, 0x0

    .line 211
    .local v6, window:Landroid/view/Window;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 217
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->changeContentView(Landroid/view/View;)V

    goto :goto_1

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, ex:Ljava/lang/Exception;
    const-string v7, "[AddPlaylistTabActivity]"

    const-string v8, "can\'t launch indicate activity!!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 228
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v6           #window:Landroid/view/Window;
    .restart local v2       #fragManager:Landroid/app/FragmentManager;
    .restart local v3       #fragment:Landroid/app/Fragment;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mLastTag:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    goto :goto_2

    .line 234
    .end local v2           #fragManager:Landroid/app/FragmentManager;
    .end local v3           #fragment:Landroid/app/Fragment;
    :cond_6
    iput-object p1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mLastTag:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public startMaActivityForResult(Landroid/content/Intent;ILcom/htc/music/widget/MusicMaActivity;)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"
    .parameter "caller"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "[AddPlaylistTabActivity]"

    const-string v1, "startMaActivityForResult called but mForResultCaller is not null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    iput-object p3, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->mForResultCaller:Lcom/htc/music/widget/MusicMaActivity;

    .line 250
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 251
    return-void
.end method
