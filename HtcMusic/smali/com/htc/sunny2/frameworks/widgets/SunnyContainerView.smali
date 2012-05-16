.class public Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
.super Landroid/widget/RelativeLayout;
.source "SunnyContainerView.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IContentHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActivityLifeCycle;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayStyle;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field protected mAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

.field protected mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

.field protected mForegroundAdapter:Ljava/lang/String;

.field protected mForegroundScene:Ljava/lang/String;

.field private mFragmentHost:Lcom/htc/app/mf/MfFragment;

.field private mHandler:Landroid/os/Handler;

.field private mIsInvalidateOptionsMenu:Z

.field private mIsInvalidateOptionsMenuUponBind:Z

.field protected mLifeCycle:I

.field protected mMediaState:I

.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mRoot:Landroid/view/ViewGroup;

.field protected mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

.field protected mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

.field protected mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

.field protected mScenes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 72
    const-string v0, "SunnyContainerView"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 76
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 77
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 79
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    .line 81
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    .line 82
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    .line 83
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    .line 84
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 85
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    .line 87
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    .line 93
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 94
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    .line 96
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 97
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    .line 98
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    .line 244
    new-instance v0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;-><init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    .line 103
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->initialize()V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const-string v0, "SunnyContainerView"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 76
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 77
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 79
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    .line 81
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    .line 82
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    .line 83
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    .line 84
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 85
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    .line 87
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    .line 93
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 94
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    .line 96
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 97
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    .line 98
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    .line 244
    new-instance v0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;-><init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    .line 109
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->initialize()V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    const-string v0, "SunnyContainerView"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 76
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 77
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 79
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    .line 81
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    .line 82
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    .line 83
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    .line 84
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 85
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    .line 87
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    .line 93
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 94
    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    .line 96
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 97
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    .line 98
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    .line 244
    new-instance v0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;-><init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    .line 115
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->initialize()V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Lcom/htc/app/mf/MfFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->registerForContextMenu(Z)V

    return-void
.end method

.method private doSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)V
    .locals 6
    .parameter "sceneCurrent"
    .parameter "sceneNext"
    .parameter "bundle"
    .parameter "isFoceClose"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->reset()V

    .line 714
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    new-instance v1, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;-><init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->setChangeListener(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;)V

    .line 715
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->prepareSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)Z

    .line 721
    if-nez p2, :cond_0

    .line 727
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->refreshRenderOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 119
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][initialize]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    .line 123
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 124
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 128
    new-instance v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    invoke-direct {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    .line 129
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-virtual {v1, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->setSceneControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 130
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->addView(Landroid/view/View;)V

    .line 131
    return-void
.end method

.method private isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z
    .locals 9
    .parameter "scene"

    .prologue
    .line 733
    const/4 v0, 0x0

    .line 735
    .local v0, bResult:Z
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    .line 736
    .local v5, szSceneId:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v4

    .line 737
    .local v4, szAdapterId:Ljava/lang/String;
    const/4 v3, 0x0

    .line 739
    .local v3, sceneShared:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 740
    .local v1, nCount:I
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_0
    if-le v1, v2, :cond_2

    .line 742
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sceneShared:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 744
    .restart local v3       #sceneShared:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_0

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 740
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 748
    :cond_1
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 751
    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][isSceneAdapterShared]: shared adapter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const/4 v0, 0x1

    .line 757
    :cond_2
    return v0
.end method

.method private onFinish()V
    .locals 4

    .prologue
    .line 1631
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 1632
    .local v1, mfFragment:Lcom/htc/app/mf/MfFragment;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 1633
    .local v0, activity:Landroid/app/Activity;
    instance-of v3, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    if-eqz v3, :cond_2

    move-object v2, v1

    .line 1635
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;

    .line 1636
    .local v2, paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;->enable2Pane()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1638
    invoke-virtual {v1}, Lcom/htc/app/mf/MfFragment;->finishSelf()V

    .line 1652
    .end local v2           #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    :cond_0
    :goto_0
    return-void

    .line 1642
    .restart local v2       #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    :cond_1
    if-eqz v0, :cond_0

    .line 1643
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1646
    .end local v2           #paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneControl;
    :cond_2
    if-eqz v1, :cond_3

    .line 1648
    invoke-virtual {v1}, Lcom/htc/app/mf/MfFragment;->finishSelf()V

    goto :goto_0

    .line 1650
    :cond_3
    if-eqz v0, :cond_0

    .line 1651
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private registerForContextMenu(Z)V
    .locals 2
    .parameter "bRegister"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    if-eqz p1, :cond_2

    .line 239
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;-><init>(Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0
.end method

.method private setRenderResume(Z)V
    .locals 1
    .parameter "isResume"

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v0, :cond_0

    .line 1593
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1594
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->onResume()V

    .line 1600
    :cond_0
    :goto_0
    return-void

    .line 1597
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->onPause()V

    goto :goto_0
.end method


# virtual methods
.method public activityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x0

    .line 344
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public activityLifeCycle()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    return v0
.end method

.method public activityReference()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public activityRoot()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 1554
    const/4 v0, 0x0

    return v0
.end method

.method public enableSunnyEnvTouchEvent(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-nez v0, :cond_0

    .line 516
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->enableSunnyEnvTouchEvent(Z)V

    goto :goto_0
.end method

.method public getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 5

    .prologue
    .line 1045
    const/4 v1, 0x0

    .line 1047
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v2, v1

    .line 1061
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_0
    return-object v2

    .line 1050
    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_0
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_3

    .line 1052
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1053
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1050
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1056
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v2, v1

    .line 1061
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .restart local v2       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 1059
    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1445
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 4
    .parameter "szIdentity"

    .prologue
    .line 1065
    const/4 v1, 0x0

    .line 1067
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v2, v1

    .line 1086
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_0
    return-object v2

    .line 1070
    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_1
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 1072
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1073
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1070
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1076
    :cond_3
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    if-eq p1, v3, :cond_4

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move-object v2, v1

    .line 1086
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .restart local v2       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 1083
    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getSceneSnapShot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "rect"

    .prologue
    .line 1622
    const/4 v0, 0x0

    .line 1623
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 1627
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 1626
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getEnvironmentSnapShot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 1627
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public gotoPreviousScene()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 927
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: begin"

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    if-nez v3, :cond_0

    .line 930
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: missing scene factory..."

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    :goto_0
    return-void

    .line 934
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 936
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: locked..."

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 944
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 946
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: cancelling..."

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->cancelSceneChange()V

    goto :goto_0

    .line 955
    :cond_2
    const/4 v1, 0x0

    .line 956
    .local v1, sceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v2, 0x0

    .line 958
    .local v2, sceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    if-nez v1, :cond_3

    .line 960
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: no current scene..."

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 964
    :cond_3
    const-string v3, "SunnyContainerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_6

    .line 968
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 969
    .local v0, nNextId:I
    if-ltz v0, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #sceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .restart local v2       #sceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_5

    .line 971
    :cond_4
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: no previous scene..."

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onFinish()V

    goto/16 :goto_0

    .line 976
    :cond_5
    const-string v3, "SunnyContainerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->doSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 982
    .end local v0           #nNextId:I
    :cond_6
    const-string v3, "SunnyContainerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onFinish()V

    goto/16 :goto_0
.end method

.method public gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 5
    .parameter "bundle"
    .parameter "szIdentity"
    .parameter "isForceClose"

    .prologue
    .line 992
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: begin"

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    if-nez v2, :cond_0

    .line 995
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: missing scene factory skip..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    :goto_0
    return-void

    .line 998
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1000
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: is foreground skip..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1003
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isDisplayControlBusy()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1005
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: something in progress skip..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1011
    :cond_2
    const/4 v0, 0x0

    .line 1012
    .local v0, sceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v1, 0x0

    .line 1014
    .local v1, sceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1016
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: no existing scene "

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_3
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1020
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    invoke-interface {v2, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;->sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1022
    const-string v2, "SunnyContainerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoScene]: fail to produce: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1026
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setId(I)V

    .line 1027
    invoke-interface {v1, p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setSceneControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 1028
    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 1029
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureEnterScene()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1031
    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEnterScene: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1033
    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->putToStage(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V

    .line 1039
    :cond_6
    invoke-direct {p0, v0, v1, p1, p3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->doSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)V

    .line 1040
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: end"

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    .line 154
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public invalidateOptionsMenuUponDataBind()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    .line 166
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public isDisplayControlBusy()Z
    .locals 3

    .prologue
    .line 1130
    const/4 v0, 0x0

    .line 1132
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    if-nez v2, :cond_0

    move v1, v0

    .line 1138
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1135
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1136
    :cond_1
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 1138
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public isInvalidateOptionsMenu()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    return v0
.end method

.method public isInvalidateOptionsMenuUponDataBind()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    return v0
.end method

.method public isSceneChangeLocked()Z
    .locals 6

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 358
    .local v0, bResult:Z
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    if-nez v3, :cond_0

    move v1, v0

    .line 370
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 361
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeEnterLock()I

    move-result v2

    .line 362
    .local v2, nLock:I
    const/16 v3, 0x515

    if-eq v3, v2, :cond_1

    const/16 v3, 0x516

    if-ne v3, v2, :cond_2

    .line 366
    :cond_1
    const-string v3, "SunnyContainerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnyContainerView][isSceneChangeLocked]: locked..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 370
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public isSceneExist(Ljava/lang/String;)Z
    .locals 5
    .parameter "szIdentity"

    .prologue
    .line 1090
    const/4 v0, 0x0

    .line 1092
    .local v0, bResult:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 1109
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1095
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    const/4 v3, 0x0

    .line 1096
    .local v3, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_3

    .line 1098
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1099
    .restart local v3       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1096
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1102
    :cond_2
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1104
    const/4 v0, 0x1

    :cond_3
    move v1, v0

    .line 1109
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public mfragmentReference()Lcom/htc/app/mf/MfFragment;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 482
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 484
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onActivityResult(IILandroid/content/Intent;)V

    .line 486
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 183
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 185
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 186
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "SunnyContainerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnyContainerView][onAttachedToWindow]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostPadding()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    .line 194
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostCamera()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableAccessCamera(Z)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 380
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][onBackPressed]: locked..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x1

    .line 409
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 411
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][onBackPressed]: remove all..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 413
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onFinish()V

    .line 416
    :cond_1
    return v0

    .line 390
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 392
    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][onBackPressed]: cancelling..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->cancelSceneChange()V

    .line 394
    const/4 v0, 0x1

    goto :goto_0

    .line 398
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 399
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 401
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1560
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onBroadcastMediaConnected]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->MEDIA_CONNECT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostInterrupt(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;Ljava/lang/Object;I)V

    .line 1563
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1569
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onBroadcastMediaDisconnected]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->MEDIA_DISCONNECT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostInterrupt(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;Ljava/lang/Object;I)V

    .line 1572
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1579
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1468
    const/4 v0, 0x0

    .line 1470
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 1471
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableBroadcastReceiver()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    .line 1495
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1474
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageDisconnected(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1476
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][onBroadcastReceive]: onBroadcastMediaDisconnected"

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    .line 1479
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 1492
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 1493
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_3
    move v1, v0

    .line 1495
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1481
    .end local v1           #bResult:I
    :cond_4
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageConnected(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1483
    iget v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    if-eqz v3, :cond_2

    .line 1485
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][onBroadcastReceive]: onBroadcastMediaDisconnected"

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    .line 1488
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 205
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 206
    .local v2, sceneForeground:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_1

    .line 228
    :cond_0
    return-void

    .line 209
    :cond_1
    invoke-interface {v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, sceneBackground:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 217
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #sceneBackground:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 218
    .restart local v1       #sceneBackground:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 215
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_3
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 224
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableConfigurationChangedInBackground()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 225
    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onConfigurationChangedInBackground(Landroid/content/res/Configuration;)V

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 472
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 474
    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 477
    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 593
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onCreate]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 595
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 596
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 597
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCreate(Landroid/os/Bundle;)V

    .line 598
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 463
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 465
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 467
    :cond_0
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 1504
    const/4 v0, 0x0

    .line 1505
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 1506
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_0

    move-object v1, v0

    .line 1511
    .end local v0           #dialog:Landroid/app/Dialog;
    .local v1, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 1509
    .end local v1           #dialog:Landroid/app/Dialog;
    .restart local v0       #dialog:Landroid/app/Dialog;
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    move-object v1, v0

    .line 1511
    .end local v0           #dialog:Landroid/app/Dialog;
    .restart local v1       #dialog:Landroid/app/Dialog;
    goto :goto_0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 2
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 1528
    const/4 v0, 0x0

    .line 1529
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 1530
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 1531
    invoke-interface {v1, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 1533
    :cond_0
    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 660
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onDestroy]: begin.."

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 662
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 663
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 664
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onDestroy()V

    .line 666
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->unregisterBroadcastReceiver()V

    .line 671
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 674
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v1, :cond_1

    .line 675
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->destroy()V

    .line 677
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 678
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 679
    :cond_2
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    .line 680
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 681
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 682
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    .line 683
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 685
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    .line 686
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    .line 687
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    if-eqz v1, :cond_3

    .line 688
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->reset()V

    .line 689
    :cond_3
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    .line 690
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    if-eqz v1, :cond_4

    .line 691
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onDestroy()V

    .line 692
    :cond_4
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    .line 693
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onDestroy]: end"

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 180
    return-void
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 1539
    const/4 v0, 0x0

    .line 1540
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 1541
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 1542
    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 1544
    :cond_0
    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 263
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 264
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_0

    move v1, v0

    .line 275
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 269
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureLeaveScene()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    .line 270
    .restart local v1       #bResult:I
    goto :goto_0

    .line 272
    .end local v1           #bResult:I
    :cond_1
    invoke-interface {v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onMessage(Landroid/os/Message;)Z

    move-result v0

    move v1, v0

    .line 275
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "newIntent"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    if-nez v0, :cond_0

    .line 703
    :goto_0
    return-void

    .line 701
    :cond_0
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onNewIntent]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->ACTIVITY_NEW_INTENT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostInterrupt(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onNotifyAnimationBegin(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V
    .locals 4
    .parameter "sceneCurrent"
    .parameter "sceneNext"

    .prologue
    .line 1202
    if-nez p2, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return-void

    .line 1205
    :cond_1
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onNotifyAnimationBegin]:..."

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 1208
    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isHostScene()Z

    move-result v0

    .line 1209
    .local v0, isHostScene:Z
    const-string v1, "SunnyContainerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnyContainerView][doSceneChange]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " padding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostPadding()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostPadding()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    .line 1213
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostCamera()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableAccessCamera(Z)V

    goto :goto_0
.end method

.method public onNotifyAnimationCancel()V
    .locals 2

    .prologue
    .line 1196
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onNotifyAnimationCancel]:..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    return-void
.end method

.method public onNotifyAnimationEnd()V
    .locals 2

    .prologue
    .line 1220
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onNotifyAnimationEnd]:..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    return-void
.end method

.method public onNotifyAnimationReady()V
    .locals 2

    .prologue
    .line 1189
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][onNotifyAnimationReady]:..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAnimationReady()V

    .line 1191
    return-void
.end method

.method public onNotifyErrorResult(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 1115
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 1116
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v0, :cond_1

    .line 1118
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onNotifyErrorResult]: exit 1"

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    const-string v1, "SunnyContainerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnyContainerView][onNotifyErrorResult]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;

    if-eqz v1, :cond_0

    .line 1124
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onNotifyErrorResult]: onReportSceneErrorCheck..."

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;->onReportSceneErrorCheck(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 453
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 455
    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 458
    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 639
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onPause]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setRenderResume(Z)V

    .line 641
    const/4 v1, 0x3

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 642
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 643
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 644
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPause()V

    .line 645
    :cond_0
    return-void
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 283
    :cond_0
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "id"
    .parameter "dialog"
    .parameter "extras"

    .prologue
    .line 1517
    const/4 v0, 0x0

    .line 1518
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 1519
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 1520
    invoke-interface {v1, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)Z

    move-result v0

    .line 1522
    :cond_0
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    .line 422
    const/4 v0, 0x0

    .line 424
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 426
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-boolean v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    if-eqz v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getNextScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    if-nez v2, :cond_2

    move v1, v0

    .line 447
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 433
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    .line 434
    .restart local v1       #bResult:I
    goto :goto_0

    .line 436
    .end local v1           #bResult:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    if-nez v2, :cond_2

    move v1, v0

    .line 437
    .restart local v1       #bResult:I
    goto :goto_0

    .line 439
    .end local v1           #bResult:I
    :cond_2
    invoke-interface {v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 440
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureOnPrepareOptionsMenu()Z

    move-result v3

    if-nez v3, :cond_3

    .line 442
    new-instance v3, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareOptionsMenu: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v3

    .line 445
    :cond_3
    iput-boolean v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenu:Z

    .line 446
    iput-boolean v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mIsInvalidateOptionsMenuUponBind:Z

    move v1, v0

    .line 447
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 290
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 614
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onResume]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-direct {p0, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setRenderResume(Z)V

    .line 616
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 617
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 619
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setFocusable(Z)V

    .line 620
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->requestFocus()Z

    .line 622
    if-eqz v0, :cond_1

    .line 624
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onResume()V

    .line 626
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;

    if-eqz v1, :cond_0

    .line 627
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onTriggerErrorReport()V

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostCamera()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableAccessCamera(Z)V

    .line 634
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 604
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onStart]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 606
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 607
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 608
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onStart()V

    .line 609
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 650
    const-string v1, "SunnyContainerView"

    const-string v2, "[HTCAlbum][SunnyContainerView][onStop]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    .line 652
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 653
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v0, :cond_0

    .line 654
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onStop()V

    .line 655
    :cond_0
    return-void
.end method

.method public postSceneSnapShot(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-nez v0, :cond_0

    .line 1618
    :goto_0
    return-void

    .line 1617
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getEnvironmentSnapShot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public registerBroadcastReceiver()V
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;->registerBroadcastReceiver()V

    .line 1456
    :cond_0
    return-void
.end method

.method public removeAllScene()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 761
    const/4 v0, 0x0

    .line 766
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isDisplayControlBusy()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 768
    const-string v6, "SunnyContainerView"

    const-string v7, "[HTCAlbum][SunnyContainerView][removeAllScene]: something in progress..."

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    sget-object v7, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->REMOVE_ALL_SCENE:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostInterrupt(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;Ljava/lang/Object;I)V

    .line 822
    .end local v0           #bResult:Z
    :goto_0
    return v0

    .line 773
    .restart local v0       #bResult:Z
    :cond_0
    const/4 v2, 0x0

    .line 774
    .local v2, sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    const/4 v3, 0x0

    .line 776
    .local v3, sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v5, 0x0

    .line 777
    .local v5, szSceneId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 781
    .local v4, szAdapterId:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 782
    .local v1, iteratorSceneList:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 787
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 788
    .restart local v3       #sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    .line 789
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v4

    .line 801
    invoke-direct {p0, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 803
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onDestroyAdapter()V

    .line 804
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeScene(Ljava/lang/String;Z)V

    .line 812
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_1

    .line 817
    :cond_2
    iput-object v8, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 818
    iput-object v8, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    .line 820
    invoke-virtual {p0, v9}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->set3DGlobalBackground(I)V

    move v0, v6

    .line 822
    goto :goto_0
.end method

.method public removeScene(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Z)V
    .locals 1
    .parameter "scene"
    .parameter "isForceClose"

    .prologue
    .line 829
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeScene(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public removeScene(Ljava/lang/String;Z)V
    .locals 8
    .parameter "szIdentity"
    .parameter "isForceClose"

    .prologue
    const/4 v7, 0x0

    .line 838
    if-nez p1, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    const/4 v3, 0x0

    .line 842
    .local v3, szSceneIdentity:Ljava/lang/String;
    const/4 v2, 0x0

    .line 843
    .local v2, sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 844
    .local v1, sceneList:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 846
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 848
    .restart local v2       #sceneToRemove:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    if-eq p1, v4, :cond_2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 851
    :cond_2
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    .line 857
    :cond_3
    if-eqz v2, :cond_0

    .line 863
    if-eqz p2, :cond_9

    .line 866
    const/16 v4, 0x8

    :try_start_0
    invoke-interface {v2, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureTo(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 868
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 869
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureSendToBackground()Z

    move-result v4

    if-nez v4, :cond_8

    .line 871
    new-instance v4, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSendToBackground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :catch_0
    move-exception v0

    .line 893
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SunnyContainerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SunnyContainerView][removeScene]: error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    invoke-interface {v2, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V

    .line 897
    invoke-interface {v2, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setSceneControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    .line 898
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v4, :cond_5

    .line 899
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->removeFromStage(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V

    .line 900
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 902
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    if-eq p1, v4, :cond_6

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 904
    :cond_6
    iput-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    .line 905
    iput-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    goto/16 :goto_0

    .line 854
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 875
    :cond_8
    const/16 v4, 0x10

    :try_start_1
    invoke-interface {v2, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureTo(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 877
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onUnbindAdapter()V

    .line 878
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureUnbindAdapter()Z

    move-result v4

    if-nez v4, :cond_9

    .line 880
    new-instance v4, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUnbindAdapter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v4

    .line 885
    :cond_9
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onLeaveScene()V

    .line 886
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureLeaveScene()Z

    move-result v4

    if-nez v4, :cond_4

    .line 888
    new-instance v4, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLeaveScene: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public sceneAdapter(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 2
    .parameter "szIdentity"

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 529
    .local v0, adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    if-eqz p1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    check-cast v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 534
    .restart local v0       #adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    :cond_0
    return-object v0
.end method

.method public set3DGlobalBackground(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->set3DGlobalBackground(I)V

    .line 1589
    :cond_0
    return-void
.end method

.method public setActivityReference(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    .line 140
    return-void
.end method

.method public setContentHost(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "viewRoot"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 302
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][setContentHost]: set parent..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 306
    :cond_0
    return-void
.end method

.method public setDisplayLevel(I)V
    .locals 1
    .parameter "nLevel"

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;->setDisplayLevel(I)V

    .line 1239
    return-void
.end method

.method public setDisplayStyle(I)V
    .locals 1
    .parameter "nStyle"

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;->setDisplayStyle(I)V

    .line 1233
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 256
    return-void
.end method

.method public setInitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "backgroundDrawable"

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setInitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1662
    :cond_0
    return-void
.end method

.method public setInitBackgroundResource(I)V
    .locals 1
    .parameter "backgroundResid"

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setInitBackgroundResource(I)V

    .line 1657
    :cond_0
    return-void
.end method

.method public setMfFragmentReference(Lcom/htc/app/mf/MfFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    .line 145
    return-void
.end method

.method public setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V
    .locals 3
    .parameter "scene"
    .parameter "adapter"

    .prologue
    .line 541
    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 543
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][setNewAdapter]: no adapter identity1..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :goto_0
    return-void

    .line 546
    :cond_0
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 548
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][setNewAdapter]: no adapter identity2..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_1
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    if-ne v0, v1, :cond_2

    .line 558
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][setNewAdapter]: content already destroyed..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    goto :goto_0

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 566
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][setNewAdapter]: no scene change skip..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 569
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 571
    const-string v0, "SunnyContainerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyContainerView][setNewAdapter]: duplicate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 575
    :cond_4
    const-string v0, "SunnyContainerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyContainerView][setNewAdapter]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAdapterReady()V

    goto/16 :goto_0
.end method

.method public setPaneConfig(ZZ)V
    .locals 1
    .parameter "bEnable2Pane"
    .parameter "bIsPaneLeft"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setPaneConfig(ZZ)V

    .line 135
    return-void
.end method

.method public setSceneFactory(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;)V
    .locals 0
    .parameter "sunnySceneFactory"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 175
    return-void
.end method

.method public setSceneSnapShotListener(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-nez v0, :cond_0

    .line 1609
    :goto_0
    return-void

    .line 1608
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setSnapShotListener(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;)V

    goto :goto_0
.end method

.method public startScene(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .parameter "bundle"
    .parameter "szIdentity"

    .prologue
    .line 921
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 922
    const-string v0, "SunnyContainerView"

    const-string v1, "[HTCAlbum][SunnyContainerView][startScene]: end"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method public sunnyContext()Lcom/htc/sunny2/SunnyContext;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v0

    return-object v0
.end method

.method public sunnyHandler()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getSunnyEnvironmentHandler()I

    move-result v0

    return v0
.end method

.method public sunnyHost()Landroid/view/ViewGroup;
    .locals 0

    .prologue
    .line 502
    return-object p0
.end method

.method public unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;->unregisterBroadcastReceiver()V

    .line 1463
    :cond_0
    return-void
.end method

.method public updateSceneDepth(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;)V
    .locals 5
    .parameter "depth"

    .prologue
    .line 1142
    const/4 v1, 0x0

    .line 1144
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_5

    .line 1146
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 1147
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1144
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1153
    :cond_1
    sget-object v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;->INCREMENT:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    if-ne v2, p1, :cond_3

    .line 1155
    const-string v2, "SunnyContainerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SunnyContainerView][updateSceneDepth]: INCREMENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const/16 v2, -0x64

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1159
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->incrementDepth()V

    .line 1160
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onNotifyDepthIncremented()V

    .line 1162
    :cond_2
    const-string v2, "SunnyContainerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SunnyContainerView][updateSceneDepth]: INCREMENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1165
    :cond_3
    sget-object v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;->DECREMENT:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    if-ne v2, p1, :cond_0

    .line 1167
    const-string v2, "SunnyContainerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SunnyContainerView][updateSceneDepth]: DECREMENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v2

    if-gtz v2, :cond_4

    .line 1171
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->decrementDepth()V

    .line 1172
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onNotifyDepthDecremented()V

    .line 1174
    :cond_4
    const-string v2, "SunnyContainerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SunnyContainerView][updateSceneDepth]: DECREMENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getDepth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1178
    :cond_5
    return-void
.end method
