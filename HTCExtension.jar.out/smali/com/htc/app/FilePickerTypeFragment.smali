.class public Lcom/htc/app/FilePickerTypeFragment;
.super Landroid/app/Fragment;
.source "FilePickerTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;,
        Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

.field private mEditor:Landroid/widget/AutoCompleteTextView;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFilePickerCore:Lcom/htc/app/FilePickerCore;

.field private final mFilePickerLayout_TypeView:I

.field private final mFilePickerLayout_ViewHeader:I

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderOfTypeListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLaunchIMEReceiver:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

.field private mListViewOfTypeOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mRocketAnimationRunning:Ljava/lang/Boolean;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTypeListView:Lcom/htc/app/FilePickerListView;

.field private typeViewLayout:Landroid/view/View;

.field private updateUiRunnable:Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 30
    iput-boolean v2, p0, Lcom/htc/app/FilePickerTypeFragment;->DEBUG:Z

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->TAG:Ljava/lang/String;

    .line 32
    const v0, 0x2090035

    iput v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerLayout_TypeView:I

    .line 33
    const v0, 0x2090032

    iput v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerLayout_ViewHeader:I

    .line 38
    iput-object v1, p0, Lcom/htc/app/FilePickerTypeFragment;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    .line 40
    iput-object v1, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 41
    iput-object v1, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    .line 42
    iput-object v1, p0, Lcom/htc/app/FilePickerTypeFragment;->mTypeListView:Lcom/htc/app/FilePickerListView;

    .line 43
    new-instance v0, Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;-><init>(Lcom/htc/app/FilePickerTypeFragment;Lcom/htc/app/FilePickerTypeFragment$1;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->updateUiRunnable:Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mHandler:Landroid/os/Handler;

    .line 46
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mRocketAnimationRunning:Ljava/lang/Boolean;

    .line 222
    new-instance v0, Lcom/htc/app/FilePickerTypeFragment$4;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerTypeFragment$4;-><init>(Lcom/htc/app/FilePickerTypeFragment;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mListViewOfTypeOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 233
    new-instance v0, Lcom/htc/app/FilePickerTypeFragment$5;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerTypeFragment$5;-><init>(Lcom/htc/app/FilePickerTypeFragment;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mTextWatcher:Landroid/text/TextWatcher;

    .line 294
    return-void
.end method

.method static synthetic access$100(Lcom/htc/app/FilePickerTypeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/app/FilePickerTypeFragment;->updateCountOfTypeListViewHeader()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/app/FilePickerTypeFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/app/FilePickerTypeFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/app/FilePickerTypeFragment;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/app/FilePickerTypeFragment;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/app/FilePickerTypeFragment;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mEditor:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/FilePickerTypeFragment;)Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mLaunchIMEReceiver:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/app/FilePickerTypeFragment;Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;)Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/app/FilePickerTypeFragment;->mLaunchIMEReceiver:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/app/FilePickerTypeFragment;)Lcom/htc/app/FilePickerCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/app/FilePickerTypeFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/app/FilePickerTypeFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerTypeFragment;->showRefreshAnimationOnTypeViewHeader(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/app/FilePickerTypeFragment;)Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->updateUiRunnable:Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;

    return-object v0
.end method

.method private getFileCountString(I)Ljava/lang/String;
    .locals 4
    .parameter "count"

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, text:Ljava/lang/String;
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/app/FilePickerTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20403d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    .line 205
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/app/FilePickerTypeFragment;->getResources()Landroid/content/res/Resources;

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

.method private init()V
    .locals 5

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/htc/app/FilePickerTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerActivity;

    .line 51
    .local v0, filePickerAct:Lcom/htc/app/FilePickerActivity;
    invoke-virtual {v0}, Lcom/htc/app/FilePickerActivity;->getFilePickerCore()Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FilePickerCore;

    iput-object v1, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    .line 52
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->getFilePickerUtil()Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 53
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->getActionBarExtCtrl()Lcom/htc/app/FilePickerActionBarExtController;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerTypeFragment;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    .line 54
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerActionBarExtController;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerTypeFragment;->mEditor:Landroid/widget/AutoCompleteTextView;

    .line 55
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->updateUiRunnable:Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void
.end method

.method private showRefreshAnimationOnListViewHeader(ZI)V
    .locals 6
    .parameter "visabled"
    .parameter "resId"

    .prologue
    const/4 v5, 0x0

    .line 316
    iget-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->mRocketAnimationRunning:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 317
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->mRocketAnimationRunning:Ljava/lang/Boolean;

    .line 319
    if-eqz p1, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/htc/app/FilePickerTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20400a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, loadingStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->mHeaderOfTypeListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    invoke-virtual {v2, v5, v0}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 323
    iget-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 330
    .end local v0           #loadingStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/app/FilePickerUtil;->getFormatedTime(J)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, refreshTime:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->mHeaderOfTypeListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    invoke-virtual {v2, v5, v1}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 327
    iget-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method private showRefreshAnimationOnTypeViewHeader(Z)V
    .locals 1
    .parameter "visabled"

    .prologue
    .line 312
    const v0, 0x20200cc

    invoke-direct {p0, p1, v0}, Lcom/htc/app/FilePickerTypeFragment;->showRefreshAnimationOnListViewHeader(ZI)V

    .line 313
    return-void
.end method

.method private updateCountOfTypeListViewHeader()V
    .locals 5

    .prologue
    .line 211
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mHeaderOfTypeListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v3, :cond_1

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, fileCount:I
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore;->getTypeAdapter()Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    .line 214
    .local v2, typeAdapter:Lcom/htc/app/FilePickerListAdapter;
    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getCurrentFileCount()I

    move-result v0

    .line 217
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerTypeFragment;->getFileCountString(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, text:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mHeaderOfTypeListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 220
    .end local v0           #fileCount:I
    .end local v1           #text:Ljava/lang/String;
    .end local v2           #typeAdapter:Lcom/htc/app/FilePickerListAdapter;
    :cond_1
    return-void
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 198
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerTypeFragment;->init()V

    .line 66
    const v3, 0x2090035

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->typeViewLayout:Landroid/view/View;

    .line 67
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->typeViewLayout:Landroid/view/View;

    const v4, 0x20200cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/app/FilePickerListView;

    iput-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mTypeListView:Lcom/htc/app/FilePickerListView;

    .line 74
    const v3, 0x2090032

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemSeparator;

    iput-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mHeaderOfTypeListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    .line 77
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78
    .local v1, rocketImage:Landroid/widget/ImageView;
    const v3, 0x20a0004

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 79
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 80
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mHeaderOfTypeListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/app/FilePickerTypeFragment;->mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcListItemSeparator;->setIcon(ILandroid/graphics/drawable/Drawable;)V

    .line 81
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/app/FilePickerTypeFragment;->showRefreshAnimationOnTypeViewHeader(Z)V

    .line 83
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mTypeListView:Lcom/htc/app/FilePickerListView;

    iget-object v4, p0, Lcom/htc/app/FilePickerTypeFragment;->mHeaderOfTypeListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/app/FilePickerListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 84
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore;->getTypeAdapter()Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    .line 85
    .local v2, typeAdapter:Lcom/htc/app/FilePickerListAdapter;
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mTypeListView:Lcom/htc/app/FilePickerListView;

    invoke-virtual {v3, v2}, Lcom/htc/app/FilePickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mTypeListView:Lcom/htc/app/FilePickerListView;

    new-instance v4, Lcom/htc/app/FilePickerTypeFragment$1;

    invoke-direct {v4, p0}, Lcom/htc/app/FilePickerTypeFragment$1;-><init>(Lcom/htc/app/FilePickerTypeFragment;)V

    invoke-virtual {v3, v4}, Lcom/htc/app/FilePickerListView;->setLayoutChangedListener(Lcom/htc/app/FilePickerListView$LayoutChangeListener;)V

    .line 93
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mTypeListView:Lcom/htc/app/FilePickerListView;

    new-instance v4, Lcom/htc/app/FilePickerTypeFragment$2;

    invoke-direct {v4, p0}, Lcom/htc/app/FilePickerTypeFragment$2;-><init>(Lcom/htc/app/FilePickerTypeFragment;)V

    invoke-virtual {v3, v4}, Lcom/htc/app/FilePickerListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 105
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mEditor:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lcom/htc/app/FilePickerTypeFragment$3;

    invoke-direct {v4, p0}, Lcom/htc/app/FilePickerTypeFragment$3;-><init>(Lcom/htc/app/FilePickerTypeFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 128
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mEditor:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/htc/app/FilePickerTypeFragment;->mTypeListView:Lcom/htc/app/FilePickerListView;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mEditor:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/htc/app/FilePickerTypeFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mTypeListView:Lcom/htc/app/FilePickerListView;

    iget-object v4, p0, Lcom/htc/app/FilePickerTypeFragment;->mListViewOfTypeOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/app/FilePickerListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 132
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mTypeListView:Lcom/htc/app/FilePickerListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/app/FilePickerListView;->setVisibility(I)V

    .line 134
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->typeViewLayout:Landroid/view/View;

    const v4, 0x20200aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mEmptyView:Landroid/widget/TextView;

    .line 135
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mEmptyView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 136
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mTypeListView:Lcom/htc/app/FilePickerListView;

    iget-object v4, p0, Lcom/htc/app/FilePickerTypeFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/htc/app/FilePickerListView;->setEmptyView(Landroid/view/View;)V

    .line 137
    if-eqz v2, :cond_2

    .line 138
    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerTypeFragment;->updateCountOfTypeListViewHeader()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1           #rocketImage:Landroid/widget/ImageView;
    .end local v2           #typeAdapter:Lcom/htc/app/FilePickerListAdapter;
    :goto_1
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    if-eqz v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    iget-object v4, p0, Lcom/htc/app/FilePickerTypeFragment;->typeViewLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/htc/app/FilePickerCore;->checkToShowLocalStorageAvailableView(Landroid/view/View;)V

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->typeViewLayout:Landroid/view/View;

    return-object v3

    .line 141
    .restart local v1       #rocketImage:Landroid/widget/ImageView;
    .restart local v2       #typeAdapter:Lcom/htc/app/FilePickerListAdapter;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->TAG:Ljava/lang/String;

    const-string v4, "mTypeAdapter is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 149
    .end local v1           #rocketImage:Landroid/widget/ImageView;
    .end local v2           #typeAdapter:Lcom/htc/app/FilePickerListAdapter;
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->TAG:Ljava/lang/String;

    const-string v4, "typeFragment onCreateView NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 145
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v1       #rocketImage:Landroid/widget/ImageView;
    .restart local v2       #typeAdapter:Lcom/htc/app/FilePickerListAdapter;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment;->TAG:Ljava/lang/String;

    const-string v4, "emptyView is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment;->updateUiRunnable:Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    iput-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->mHeaderOfTypeListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    .line 169
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v0, v2}, Lcom/htc/app/FilePickerCore;->setFavoritesFragment(Lcom/htc/app/FilePickerFavoritesFragment;)V

    .line 171
    :cond_0
    iput-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    .line 172
    iput-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->updateUiRunnable:Lcom/htc/app/FilePickerTypeFragment$UpdateUiRunnable;

    .line 173
    iput-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 175
    iput-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    .line 176
    iput-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 177
    iput-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->mLaunchIMEReceiver:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    .line 178
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mEditor:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mEditor:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment;->mTypeListView:Lcom/htc/app/FilePickerListView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment;->mEditor:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    :cond_1
    iput-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->mEditor:Landroid/widget/AutoCompleteTextView;

    .line 183
    iput-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->mTypeListView:Lcom/htc/app/FilePickerListView;

    .line 184
    iput-object v2, p0, Lcom/htc/app/FilePickerTypeFragment;->mTextWatcher:Landroid/text/TextWatcher;

    .line 185
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 187
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 192
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
