.class public Lcom/htc/music/DRMActionActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "DRMActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/DRMActionActivity$DRMActionActivityBroadcastReceiver;,
        Lcom/htc/music/DRMActionActivity$UpdateDRMRunnable;
    }
.end annotation


# static fields
.field public static final DIALOG_DRM_CONFIRM:I = 0x3

.field public static final DIALOG_DRM_ERROR:I = 0x2

.field private static final DIALOG_FOR_DELETE:I = 0x1

.field private static final DIALOG_FOR_DOWNLOADING:I = 0x0

.field protected static final DISMISS:I = 0x3

.field protected static final INIT:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field protected static final UpdateUI:I = 0x2

.field public static handler:Landroid/os/Handler;


# instance fields
.field private final ACTION_DELETE:I

.field private final ACTION_DELETE_DISABLED:I

.field private final ACTION_DELETE_IDX:I

.field private final ACTION_PLAY:I

.field private final ACTION_PLAY_DISABLED:I

.field private final ACTION_PLAY_RENEW_IDX:I

.field private final ACTION_PROPERTY:I

.field private final ACTION_PROPERTY_DISABLED:I

.field private final ACTION_PROPERTY_IDX:I

.field private final ACTION_RENEW:I

.field private final ACTION_RENEW_DISABLED:I

.field private actionArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActionAdapter:Landroid/widget/BaseAdapter;

.field private mActionList:Lcom/htc/widget/HtcListView;

.field private mDrmData:Ljava/lang/String;

.field private mDrmTitle:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field private mIsSeriveBinded:Z

.field private mLooper:Landroid/os/Looper;

.field private mMsg:Ljava/lang/String;

.field private mNeedBindSerive:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/htc/music/IMediaPlaybackService;

.field private mShowToast:Z

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mTargetToMain:Z

.field private mTrackId:Ljava/lang/String;

.field protected osc:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "[DRMActionActivity]"

    sput-object v0, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/DRMActionActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 73
    iput v1, p0, Lcom/htc/music/DRMActionActivity;->ACTION_PLAY:I

    .line 75
    iput v2, p0, Lcom/htc/music/DRMActionActivity;->ACTION_RENEW:I

    .line 77
    iput v3, p0, Lcom/htc/music/DRMActionActivity;->ACTION_PROPERTY:I

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/DRMActionActivity;->ACTION_DELETE:I

    .line 81
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/DRMActionActivity;->ACTION_PLAY_DISABLED:I

    .line 83
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/music/DRMActionActivity;->ACTION_RENEW_DISABLED:I

    .line 85
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/music/DRMActionActivity;->ACTION_PROPERTY_DISABLED:I

    .line 87
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/music/DRMActionActivity;->ACTION_DELETE_DISABLED:I

    .line 89
    iput v1, p0, Lcom/htc/music/DRMActionActivity;->ACTION_PLAY_RENEW_IDX:I

    .line 91
    iput v2, p0, Lcom/htc/music/DRMActionActivity;->ACTION_PROPERTY_IDX:I

    .line 93
    iput v3, p0, Lcom/htc/music/DRMActionActivity;->ACTION_DELETE_IDX:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    .line 111
    iput-boolean v2, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    .line 113
    iput-boolean v1, p0, Lcom/htc/music/DRMActionActivity;->mTargetToMain:Z

    .line 127
    iput-boolean v1, p0, Lcom/htc/music/DRMActionActivity;->mNeedBindSerive:Z

    .line 128
    iput-boolean v1, p0, Lcom/htc/music/DRMActionActivity;->mIsSeriveBinded:Z

    .line 149
    new-instance v0, Lcom/htc/music/DRMActionActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/DRMActionActivity$1;-><init>(Lcom/htc/music/DRMActionActivity;)V

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mHandler:Landroid/os/Handler;

    .line 634
    new-instance v0, Lcom/htc/music/DRMActionActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/DRMActionActivity$4;-><init>(Lcom/htc/music/DRMActionActivity;)V

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->osc:Landroid/content/ServiceConnection;

    .line 657
    new-instance v0, Lcom/htc/music/DRMActionActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/DRMActionActivity$5;-><init>(Lcom/htc/music/DRMActionActivity;)V

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 673
    new-instance v0, Lcom/htc/music/DRMActionActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/DRMActionActivity$6;-><init>(Lcom/htc/music/DRMActionActivity;)V

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 816
    new-instance v0, Lcom/htc/music/DRMActionActivity$13;

    invoke-direct {v0, p0}, Lcom/htc/music/DRMActionActivity$13;-><init>(Lcom/htc/music/DRMActionActivity;)V

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mActionAdapter:Landroid/widget/BaseAdapter;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/DRMActionActivity;)Landroid/os/Looper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/DRMActionActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/music/DRMActionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/music/DRMActionActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/DRMActionActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/DRMActionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/music/DRMActionActivity;->mNeedBindSerive:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/music/DRMActionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/htc/music/DRMActionActivity;->mIsSeriveBinded:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/music/DRMActionActivity;)Lcom/htc/music/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/DRMActionActivity;Lcom/htc/music/IMediaPlaybackService;)Lcom/htc/music/IMediaPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/music/DRMActionActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/music/DRMActionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/music/DRMActionActivity;->showPoperty()V

    return-void
.end method

.method private isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 615
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 617
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 618
    sget-object v3, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v4, "couldn\'t get connectivity manager"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_0
    sget-object v3, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v4, "network is not available"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 620
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 621
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 622
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 623
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 624
    sget-object v3, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v4, "network is available"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const/4 v3, 0x1

    goto :goto_0

    .line 622
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private showPoperty()V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mActionList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 697
    return-void
.end method


# virtual methods
.method UpdateInfo(I)V
    .locals 8
    .parameter "status"

    .prologue
    const v7, 0x7f070094

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 308
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 309
    const-string v2, "DRMActionActivity"

    const-string v3, "DRM_STATUS_ERROR"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->mDrmTitle:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/music/DRMActionActivity;->setTitle(Ljava/lang/String;)V

    .line 367
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->mActionList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 371
    iput-boolean v6, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    .line 372
    sget-object v2, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v3, "UpdateInfo Finish"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-void

    .line 312
    :cond_2
    if-nez p1, :cond_3

    .line 313
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 317
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget-boolean v2, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    if-eqz v2, :cond_0

    .line 321
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 323
    .local v1, rc:Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 324
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x20400ea

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x2040151

    invoke-virtual {p0, v3}, Lcom/htc/music/DRMActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/music/DRMActionActivity$2;

    invoke-direct {v4, p0}, Lcom/htc/music/DRMActionActivity$2;-><init>(Lcom/htc/music/DRMActionActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 336
    .end local v1           #rc:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DRMActionActivity"

    const-string v3, "getResourcesForApplication exception"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 341
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    if-ne p1, v5, :cond_5

    .line 342
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-boolean v2, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    if-eqz v2, :cond_0

    .line 346
    const v2, 0x7f070092

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 348
    :cond_5
    if-ne p1, v4, :cond_6

    .line 349
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-boolean v2, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    if-eqz v2, :cond_0

    .line 353
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 355
    :cond_6
    if-ne p1, v3, :cond_0

    .line 357
    const-string v2, "DRMActionActivity"

    const-string v3, "DRM_STATUS_CD_EXPIRED"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-boolean v2, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    if-eqz v2, :cond_0

    .line 361
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method deleteDownload(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    .line 596
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 598
    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 599
    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 601
    .local v1, rc:Landroid/content/res/Resources;
    const v2, 0x2040177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    .end local v1           #rc:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteDownload failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method init()I
    .locals 15

    .prologue
    const/4 v4, 0x0

    .line 248
    sget-object v0, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v1, "Init IN"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v12, -0x1

    .line 251
    .local v12, status:I
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "title"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 255
    .local v13, trackCursor:Landroid/database/Cursor;
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 256
    :cond_0
    if-eqz v13, :cond_1

    .line 257
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 258
    const/4 v13, 0x0

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->finish()V

    .line 261
    const/4 v0, -0x1

    .line 303
    :goto_0
    return v0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 265
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 266
    const-string v0, "_data"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 268
    .local v10, path:Ljava/lang/String;
    if-eqz v10, :cond_6

    const-string v0, "content://drm/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 269
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 270
    .local v14, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 271
    .local v11, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, v14}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v9

    .line 272
    .local v9, drmCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 273
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 274
    const-string v0, "delivery_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 275
    .local v7, deliveryType:I
    const-string v0, "_data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, data:Ljava/lang/String;
    const-string v0, "title"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mDrmTitle:Ljava/lang/String;

    .line 279
    const/4 v8, 0x0

    .line 280
    .local v8, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    invoke-static {p0, v14}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v12

    .line 282
    packed-switch v12, :pswitch_data_0

    .line 292
    .end local v6           #data:Ljava/lang/String;
    .end local v7           #deliveryType:I
    .end local v8           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    :cond_4
    :goto_1
    if-eqz v13, :cond_5

    .line 293
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 294
    const/4 v13, 0x0

    .line 296
    :cond_5
    if-eqz v9, :cond_6

    .line 297
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 302
    .end local v9           #drmCursor:Landroid/database/Cursor;
    .end local v11           #resolver:Landroid/content/ContentResolver;
    .end local v14           #uri:Landroid/net/Uri;
    :cond_6
    sget-object v0, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v1, "Init Finish"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    .line 303
    goto :goto_0

    .line 286
    .restart local v6       #data:Ljava/lang/String;
    .restart local v7       #deliveryType:I
    .restart local v8       #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v9       #drmCursor:Landroid/database/Cursor;
    .restart local v11       #resolver:Landroid/content/ContentResolver;
    .restart local v14       #uri:Landroid/net/Uri;
    :pswitch_0
    const-string v0, "_data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mDrmData:Ljava/lang/String;

    goto :goto_1

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 701
    packed-switch p1, :pswitch_data_0

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 703
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->finish()V

    goto :goto_0

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 182
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0, v10}, Lcom/htc/music/DRMActionActivity;->setVolumeControlStream(I)V

    .line 185
    const/4 v7, 0x0

    .line 186
    .local v7, drmuri:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 187
    const-string v0, "track"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    .line 188
    const-string v0, "drmuri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 189
    const-string v0, "showToast"

    invoke-virtual {p1, v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    .line 190
    const-string v0, "drmtargettomain"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/DRMActionActivity;->mTargetToMain:Z

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz v7, :cond_1

    .line 197
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "_data"

    aput-object v0, v2, v9

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 201
    .local v2, CursorCols:[Ljava/lang/String;
    const-string v3, "_data=?"

    .line 202
    .local v3, where:Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    aput-object v7, v4, v5

    .line 205
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 207
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 208
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 209
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 211
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    .line 213
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 218
    .end local v2           #CursorCols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_1
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 219
    .local v8, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string v0, "file"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/htc/music/DRMActionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    new-instance v8, Landroid/content/IntentFilter;

    .end local v8           #f:Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 224
    .restart local v8       #f:Landroid/content/IntentFilter;
    const-string v0, "com.htc.music.metachanged"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/htc/music/DRMActionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/htc/music/DRMActionActivity;->setContentView(I)V

    .line 229
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    .line 230
    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 231
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v9}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mActionList:Lcom/htc/widget/HtcListView;

    .line 238
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mActionList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/DRMActionActivity;->mActionAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mHandler:Landroid/os/Handler;

    sput-object v0, Lcom/htc/music/DRMActionActivity;->handler:Landroid/os/Handler;

    .line 241
    return-void

    .line 192
    .end local v8           #f:Landroid/content/IntentFilter;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "track"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "drmuri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 194
    invoke-virtual {p0}, Lcom/htc/music/DRMActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "drmtargettomain"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/DRMActionActivity;->mTargetToMain:Z

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const v8, 0x1040009

    const/4 v7, 0x0

    const v6, 0x1040013

    const/4 v5, 0x1

    .line 722
    packed-switch p1, :pswitch_data_0

    .line 812
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 724
    :pswitch_0
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 725
    iget-object v3, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0700b0

    invoke-virtual {p0, v4}, Lcom/htc/music/DRMActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v3, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 727
    iget-object v3, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 728
    iget-object v3, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/htc/music/DRMActionActivity$7;

    invoke-direct {v4, p0}, Lcom/htc/music/DRMActionActivity$7;-><init>(Lcom/htc/music/DRMActionActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 738
    iget-object v3, p0, Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 741
    :pswitch_1
    new-array v2, v5, [I

    iget-object v3, p0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v7

    .line 745
    .local v2, list:[I
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 746
    const v3, 0x7f070015

    invoke-virtual {p0, v3}, Lcom/htc/music/DRMActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, f:Ljava/lang/String;
    :goto_1
    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/music/DRMActionActivity;->mDrmTitle:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, desc:Ljava/lang/String;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x2040214

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/htc/music/DRMActionActivity$9;

    invoke-direct {v4, p0, v2}, Lcom/htc/music/DRMActionActivity$9;-><init>(Lcom/htc/music/DRMActionActivity;[I)V

    invoke-virtual {v3, v6, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/htc/music/DRMActionActivity$8;

    invoke-direct {v4, p0}, Lcom/htc/music/DRMActionActivity$8;-><init>(Lcom/htc/music/DRMActionActivity;)V

    invoke-virtual {v3, v8, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto :goto_0

    .line 748
    .end local v0           #desc:Ljava/lang/String;
    .end local v1           #f:Ljava/lang/String;
    :cond_0
    const v3, 0x7f070014

    invoke-virtual {p0, v3}, Lcom/htc/music/DRMActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #f:Ljava/lang/String;
    goto :goto_1

    .line 770
    .end local v1           #f:Ljava/lang/String;
    .end local v2           #list:[I
    :pswitch_2
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070068

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/htc/music/DRMActionActivity$10;

    invoke-direct {v4, p0}, Lcom/htc/music/DRMActionActivity$10;-><init>(Lcom/htc/music/DRMActionActivity;)V

    invoke-virtual {v3, v6, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 779
    :pswitch_3
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DRMActionActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/htc/music/DRMActionActivity$12;

    invoke-direct {v4, p0}, Lcom/htc/music/DRMActionActivity$12;-><init>(Lcom/htc/music/DRMActionActivity;)V

    invoke-virtual {v3, v6, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/htc/music/DRMActionActivity$11;

    invoke-direct {v4, p0}, Lcom/htc/music/DRMActionActivity$11;-><init>(Lcom/htc/music/DRMActionActivity;)V

    invoke-virtual {v3, v8, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 722
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/DRMActionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 379
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/DRMActionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 382
    sget-object v0, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v1, "OnDestroy called"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 386
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    .line 387
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 388
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 17
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 448
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    if-nez v13, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 451
    .local v2, action:I
    const/4 v6, 0x0

    .line 452
    .local v6, iconId:I
    const/4 v9, 0x0

    .line 453
    .local v9, list:[I
    const/4 v7, 0x0

    .line 454
    .local v7, intent:Landroid/content/Intent;
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 456
    :pswitch_0
    const/4 v3, 0x0

    .line 458
    .local v3, cur:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v3

    .line 459
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_2

    .line 460
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 461
    const-string v13, "_data"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 463
    .local v10, path:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 464
    .local v12, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/DRMActionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v12, v14}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v4

    .line 466
    .local v4, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v4, :cond_4

    .line 478
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/music/DRMActionActivity;->mTargetToMain:Z

    if-eqz v13, :cond_3

    .line 479
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [I

    move-object/from16 v0, p0

    invoke-static {v0, v3, v13, v14, v15}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    .end local v4           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v10           #path:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 530
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 531
    const/4 v3, 0x0

    goto :goto_0

    .line 481
    .restart local v4       #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v10       #path:Ljava/lang/String;
    .restart local v12       #uri:Landroid/net/Uri;
    :cond_3
    :try_start_1
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    .end local v7           #intent:Landroid/content/Intent;
    .local v8, intent:Landroid/content/Intent;
    :try_start_2
    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    invoke-virtual {v8, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 484
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/DRMActionActivity;->startActivity(Landroid/content/Intent;)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/DRMActionActivity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v7, v8

    .end local v8           #intent:Landroid/content/Intent;
    .restart local v7       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 489
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/DRMActionActivity;->mMsg:Ljava/lang/String;

    .line 490
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DRMActionActivity;->mMsg:Ljava/lang/String;

    if-eqz v13, :cond_7

    .line 492
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/music/DRMActionActivity;->mTargetToMain:Z

    if-eqz v13, :cond_6

    .line 493
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/DRMActionActivity;->showDialog(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 529
    .end local v4           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v10           #path:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v13

    :goto_2
    if-eqz v3, :cond_5

    .line 530
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 531
    const/4 v3, 0x0

    .line 529
    :cond_5
    throw v13

    .line 496
    .restart local v4       #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v10       #path:Ljava/lang/String;
    .restart local v12       #uri:Landroid/net/Uri;
    :cond_6
    :try_start_4
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 497
    .end local v7           #intent:Landroid/content/Intent;
    .restart local v8       #intent:Landroid/content/Intent;
    :try_start_5
    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    invoke-virtual {v8, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 499
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/DRMActionActivity;->startActivity(Landroid/content/Intent;)V

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/DRMActionActivity;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v7, v8

    .end local v8           #intent:Landroid/content/Intent;
    .restart local v7       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 515
    :cond_7
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/music/DRMActionActivity;->mTargetToMain:Z

    if-eqz v13, :cond_8

    .line 516
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [I

    move-object/from16 v0, p0

    invoke-static {v0, v3, v13, v14, v15}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_1

    .line 518
    :cond_8
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 519
    .end local v7           #intent:Landroid/content/Intent;
    .restart local v8       #intent:Landroid/content/Intent;
    :try_start_7
    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    invoke-virtual {v8, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 521
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/music/DRMActionActivity;->startActivity(Landroid/content/Intent;)V

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/DRMActionActivity;->finish()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v7, v8

    .end local v8           #intent:Landroid/content/Intent;
    .restart local v7       #intent:Landroid/content/Intent;
    goto/16 :goto_1

    .line 539
    .end local v3           #cur:Landroid/database/Cursor;
    .end local v4           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v10           #path:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DRMActionActivity;->mDrmData:Ljava/lang/String;

    if-eqz v13, :cond_0

    .line 541
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/DRMActionActivity;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 544
    sget-object v13, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/DRMActionActivity;->mDrmData:Ljava/lang/String;

    const-class v15, Lcom/htc/music/DRMActionActivity$DRMActionActivityBroadcastReceiver;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v15}, Landroid/provider/DrmStore;->acquireRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 549
    .restart local v12       #uri:Landroid/net/Uri;
    if-nez v12, :cond_9

    .line 552
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/DRMActionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "com.htc"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 554
    .local v11, rc:Landroid/content/res/Resources;
    if-eqz v11, :cond_0

    .line 555
    const v13, 0x20400ea

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 557
    .end local v11           #rc:Landroid/content/res/Resources;
    :catch_0
    move-exception v5

    .line 558
    .local v5, e:Ljava/lang/Exception;
    const-string v13, "DRMActionActivity"

    const-string v14, "getResourcesForApplication exception"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 562
    .end local v5           #e:Ljava/lang/Exception;
    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/DRMActionActivity;->showDialog(I)V

    .line 563
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DRMActionActivity;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/htc/music/DRMActionActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v12}, Lcom/htc/music/DRMActionActivity$3;-><init>(Lcom/htc/music/DRMActionActivity;Landroid/net/Uri;)V

    const-wide/16 v15, 0x4e20

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 571
    .end local v12           #uri:Landroid/net/Uri;
    :cond_a
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/DRMActionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "com.htc"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 573
    .restart local v11       #rc:Landroid/content/res/Resources;
    const v13, 0x204016b

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 575
    .end local v11           #rc:Landroid/content/res/Resources;
    :catch_1
    move-exception v5

    .line 576
    .restart local v5       #e:Ljava/lang/Exception;
    sget-object v13, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Show toast failed."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 583
    .end local v5           #e:Ljava/lang/Exception;
    :pswitch_2
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent:Landroid/content/Intent;
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 584
    .restart local v7       #intent:Landroid/content/Intent;
    const-class v13, Lcom/htc/music/PropertyListActivity;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 585
    const-string v13, "track"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/music/DRMActionActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 589
    :pswitch_3
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/DRMActionActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 529
    .end local v7           #intent:Landroid/content/Intent;
    .restart local v3       #cur:Landroid/database/Cursor;
    .restart local v4       #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v10       #path:Ljava/lang/String;
    .restart local v12       #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8           #intent:Landroid/content/Intent;
    .restart local v7       #intent:Landroid/content/Intent;
    goto/16 :goto_2

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 429
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 430
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 712
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 713
    packed-switch p1, :pswitch_data_0

    .line 718
    .end local p2
    :goto_0
    return-void

    .line 715
    .restart local p2
    :pswitch_0
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 419
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 421
    sget-object v0, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v1, "OnResume Begin"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/htc/music/DRMActionActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 423
    sget-object v0, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v1, "OnResume End"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 437
    const-string v0, "track"

    iget-object v1, p0, Lcom/htc/music/DRMActionActivity;->mTrackId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v0, "drmuri"

    iget-object v1, p0, Lcom/htc/music/DRMActionActivity;->mDrmData:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v0, "showToast"

    iget-boolean v1, p0, Lcom/htc/music/DRMActionActivity;->mShowToast:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 440
    const-string v0, "drmtargettomain"

    iget-boolean v1, p0, Lcom/htc/music/DRMActionActivity;->mTargetToMain:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 442
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 443
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/music/DRMActionActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 395
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/DRMActionActivity;->mNeedBindSerive:Z

    .line 396
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/DRMActionActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    sget-object v0, Lcom/htc/music/DRMActionActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart, Fail to bind service."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/DRMActionActivity;->mNeedBindSerive:Z

    .line 402
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 403
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 407
    iget-boolean v0, p0, Lcom/htc/music/DRMActionActivity;->mIsSeriveBinded:Z

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 409
    iput-boolean v1, p0, Lcom/htc/music/DRMActionActivity;->mIsSeriveBinded:Z

    .line 411
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DRMActionActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 412
    iput-boolean v1, p0, Lcom/htc/music/DRMActionActivity;->mNeedBindSerive:Z

    .line 414
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 415
    return-void
.end method
