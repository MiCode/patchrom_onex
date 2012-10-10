.class public Lcom/htc/music/MediaPlaybackErrorActivity;
.super Landroid/app/Activity;
.source "MediaPlaybackErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MediaPlaybackErrorActivity$MyQueryHandler;
    }
.end annotation


# static fields
.field public static final FINISH_ERROR_ACTIVITY:Ljava/lang/String; = "com.htc.music.finisherroractivity"

.field private static final LOGTAG:Ljava/lang/String; = "[MediaPlaybackErrorActivity]"

.field private static final MENU_CLOSE_ID:I = 0x2e

.field private static final MENU_OUTPUT_ID:I = 0x25

.field private static final MENU_QUEUE_ID:I = 0x2c

.field private static final MENU_SOUNDHOUND_ID:I = 0x2d

.field public static final PRESENTATION_MODE:Ljava/lang/String; = "Presentation_Mode"

.field private static final SCANNER_FINISHED:I = 0x1

.field private static final SEARCHING:I = 0x0

.field private static final SET_DEFAULT_RESOURCE_TIMER:I = 0x1388


# instance fields
.field private mCursorCols:[Ljava/lang/String;

.field private mDisableLib:Z

.field private mErrorMessage:Ljava/lang/String;

.field private mIsPluginMode:Z

.field private mIsSupportMMC:Z

.field private mOrientation:I

.field private mPluginErrorListener:Landroid/content/BroadcastReceiver;

.field private mPluginReScanHandler:Landroid/os/Handler;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mQueueLen:I

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSearchDialogVisible:Z

.field public mService:Lcom/htc/music/IMediaPlaybackService;

.field private mSetDefaultResourceHandler:Landroid/os/Handler;

.field private mSetDefaultResourceRunnable:Ljava/lang/Runnable;

.field private mSortOrder:Ljava/lang/String;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private osc:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 110
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z

    .line 112
    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueueLen:I

    .line 114
    iput v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mOrientation:I

    .line 116
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    .line 118
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mDisableLib:Z

    .line 120
    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    .line 122
    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsSupportMMC:Z

    .line 126
    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 128
    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 457
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$3;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 483
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$4;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginErrorListener:Landroid/content/BroadcastReceiver;

    .line 498
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSetDefaultResourceHandler:Landroid/os/Handler;

    .line 500
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$5;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSetDefaultResourceRunnable:Ljava/lang/Runnable;

    .line 516
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$6;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    .line 531
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$7;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    .line 921
    new-instance v0, Lcom/htc/music/MediaPlaybackErrorActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$9;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->osc:Landroid/content/ServiceConnection;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/MediaPlaybackErrorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startBrowserTabActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/MediaPlaybackErrorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->setDefaultResource()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/MediaPlaybackErrorActivity;Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackErrorActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/MediaPlaybackErrorActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/music/MediaPlaybackErrorActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/MediaPlaybackErrorActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    return v0
.end method

.method private closeDMC()V
    .locals 3

    .prologue
    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 347
    :goto_0
    return-void

    .line 341
    :cond_0
    const-string v1, "[MediaPlaybackErrorActivity]"

    const-string v2, "service is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getAlbumCursor(Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;
    .locals 14
    .parameter "async"

    .prologue
    const/4 v0, 0x0

    .line 807
    const/4 v11, 0x0

    .line 808
    .local v11, queuelist:[I
    const/4 v12, 0x0

    .line 812
    .local v12, ret:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 814
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->init(Landroid/database/Cursor;)V

    .line 859
    :goto_0
    return-object v0

    .line 818
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v8

    .line 819
    .local v8, count:I
    if-gtz v8, :cond_2

    .line 820
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->init(Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 854
    .end local v8           #count:I
    :catch_0
    move-exception v9

    .line 856
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v9           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_1
    move-object v0, v12

    .line 859
    goto :goto_0

    .line 824
    .restart local v8       #count:I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v11

    .line 827
    if-eqz v11, :cond_1

    .line 829
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSortOrder:Ljava/lang/String;

    .line 830
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 832
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    const-string v0, " AND _id IN ("

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    array-length v0, v11

    if-ge v10, v0, :cond_4

    .line 835
    aget v0, v11, v10

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 836
    array-length v0, v11

    add-int/lit8 v0, v0, -0x1

    if-ge v10, v0, :cond_3

    .line 837
    const-string v0, ","

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 840
    :cond_4
    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    const-string v0, " AND is_music>=1"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    if-eqz p1, :cond_5

    .line 844
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 848
    :cond_5
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto :goto_1
.end method

.method private initTitleBar()V
    .locals 4

    .prologue
    .line 230
    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    .line 231
    .local v0, actionBar:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 232
    .local v1, customContainer:Lcom/htc/widget/ActionBarContainer;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 233
    new-instance v3, Lcom/htc/music/MediaPlaybackErrorActivity$2;

    invoke-direct {v3, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$2;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 243
    .local v2, title:Lcom/htc/widget/ActionBarText;
    const v3, 0x7f07001f

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 244
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 245
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 246
    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 247
    return-void
.end method

.method private setDefaultResource()V
    .locals 2

    .prologue
    .line 508
    const v1, 0x7f080092

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 509
    .local v0, text:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 510
    const v1, 0x20400a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 513
    :cond_0
    return-void
.end method

.method private startBrowserTabActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 900
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 901
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 902
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 903
    const-class v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 904
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 905
    const-string v1, "KeepHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 906
    const-string v1, "RemoveStoreHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 907
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 908
    return-void
.end method

.method private startListenStore()V
    .locals 4

    .prologue
    .line 960
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.online.strorefont"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 961
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "InnerActivityType"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 964
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    :goto_0
    return-void

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[MediaPlaybackErrorActivity]"

    const-string v3, "Opps, we can\'t launch store activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startPlayback()V
    .locals 4

    .prologue
    .line 728
    monitor-enter p0

    .line 729
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 730
    monitor-exit p0

    .line 776
    :goto_0
    return-void

    .line 732
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    .line 733
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/MediaPlaybackErrorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 734
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 736
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 738
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isSystemReady()Z

    move-result v1

    .line 739
    .local v1, ready:Z
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isMusicLoaded()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 740
    const-string v2, "[MediaPlaybackErrorActivity]"

    const-string v3, "isMusicLoaded and ready"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 742
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 743
    const-string v2, "showEmptyQueue"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 744
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 747
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->overridePendingTransition(II)V

    .line 774
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->finish()V

    .line 775
    monitor-exit p0

    goto :goto_0

    .end local v1           #ready:Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 755
    .restart local v1       #ready:Z
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 758
    const-string v2, "[MediaPlaybackErrorActivity]"

    const-string v3, "startPlayback playAllNotRun"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 760
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 761
    const-string v2, "showEmptyQueue"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 762
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 766
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->overridePendingTransition(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public hideDatabaseError()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 669
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 670
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 675
    :cond_0
    const v1, 0x7f080092

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 676
    if-eqz v0, :cond_1

    .line 677
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 679
    :cond_1
    return-void
.end method

.method hideSearchDialog()V
    .locals 1

    .prologue
    .line 863
    monitor-enter p0

    .line 864
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z

    if-nez v0, :cond_0

    .line 865
    monitor-exit p0

    .line 874
    :goto_0
    return-void

    .line 868
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->removeDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 873
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 871
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 683
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 685
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 687
    :cond_0
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 688
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getIsInternalEnough()Z

    move-result v0

    .line 689
    .local v0, isInternalEnough:Z
    if-nez v0, :cond_2

    .line 690
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideSearchDialog()V

    .line 691
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDatabaseError()V

    .line 692
    if-eqz v0, :cond_1

    .line 693
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 725
    :goto_0
    return-void

    .line 696
    :cond_1
    const-string v1, "[MediaPlaybackErrorActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init, don\'t re-scan, isInternalEnough: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_6

    .line 701
    :cond_3
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 703
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideDatabaseError()V

    .line 706
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 707
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showSearchDialog()V

    .line 708
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 711
    :cond_4
    const-string v1, "[MediaPlaybackErrorActivity]"

    const-string v2, "This activity is finishing..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 714
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideSearchDialog()V

    .line 715
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDatabaseError()V

    goto :goto_0

    .line 723
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideSearchDialog()V

    .line 724
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startPlayback()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 973
    const-string v0, "[MediaPlaybackErrorActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive activity result, requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const v0, 0xc351

    if-ne p1, v0, :cond_0

    .line 976
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->startListenStore()V

    .line 979
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 896
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 897
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 352
    const-string v0, "[MediaPlaybackErrorActivity]"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 388
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    .line 139
    const-string v4, "[MediaPlaybackErrorActivity]"

    const-string v5, "onCreate +"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_0

    .line 145
    new-instance v4, Lcom/htc/music/MediaPlaybackErrorActivity$1;

    invoke-direct {v4, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$1;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    :cond_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.htc.music.lockscreen_start"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/htc/music/MediaPlaybackErrorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    :cond_1
    if-eqz p1, :cond_6

    .line 157
    const-string v4, "queuelen"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueueLen:I

    .line 159
    const-string v4, "pluginmode"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    .line 160
    const-string v4, "errorcause"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    .line 161
    const-string v4, "disablelib"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mDisableLib:Z

    .line 173
    :goto_0
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/htc/music/MediaPlaybackErrorActivity;->setVolumeControlStream(I)V

    .line 174
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/htc/music/MediaPlaybackErrorActivity;->requestWindowFeature(I)Z

    .line 176
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mOrientation:I

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v4, v5}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 179
    const-string v4, "[MediaPlaybackErrorActivity]"

    const-string v5, "fail to bind service..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_2
    const v4, 0x7f03003b

    invoke-virtual {p0, v4}, Lcom/htc/music/MediaPlaybackErrorActivity;->setContentView(I)V

    .line 184
    iget-boolean v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    if-nez v4, :cond_9

    .line 186
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, "album_id"

    aput-object v6, v4, v5

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mCursorCols:[Ljava/lang/String;

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .local v0, f:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v4, "file"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 193
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v4, :cond_3

    .line 196
    new-instance v4, Lcom/htc/music/MediaPlaybackErrorActivity$MyQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/htc/music/MediaPlaybackErrorActivity$MyQueryHandler;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;Landroid/content/ContentResolver;)V

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 198
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, status:Ljava/lang/String;
    const-string v4, "[MediaPlaybackErrorActivity]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate()...SD status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_7

    .line 202
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "mounted_ro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "checking"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 205
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v4}, Lcom/htc/music/MediaPlaybackErrorActivity;->init(Landroid/database/Cursor;)V

    .line 220
    .end local v0           #f:Landroid/content/IntentFilter;
    .end local v3           #status:Ljava/lang/String;
    :cond_5
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "com.htc.music.finisherroractivity"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginErrorListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/htc/music/MediaPlaybackErrorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->initTitleBar()V

    .line 225
    const-string v4, "[MediaPlaybackErrorActivity]"

    const-string v5, "onCreate -"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void

    .line 163
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 164
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "queuelen"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueueLen:I

    .line 166
    const-string v4, "pluginmode"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    .line 167
    const-string v4, "errorcause"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    .line 168
    const-string v4, "disablelib"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mDisableLib:Z

    goto/16 :goto_0

    .line 208
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v0       #f:Landroid/content/IntentFilter;
    .restart local v3       #status:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDatabaseError()V

    .line 209
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "mounted_ro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "checking"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 212
    :cond_8
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-direct {p0, v4}, Lcom/htc/music/MediaPlaybackErrorActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;

    goto :goto_1

    .line 217
    .end local v0           #f:Landroid/content/IntentFilter;
    .end local v3           #status:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->showErrorFromPluginService()V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 780
    sparse-switch p1, :sswitch_data_0

    .line 802
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 782
    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 785
    :sswitch_1
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 786
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 788
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 789
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v1, Lcom/htc/music/MediaPlaybackErrorActivity$8;

    invoke-direct {v1, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$8;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 799
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 780
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xaae61 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 262
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.soundhound.android.ID_NOW_EXTERNAL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v2, soundhoundIntent:Landroid/content/Intent;
    const-string v4, "com.soundhound.android.EXTRA_ID_NOW_TOKEN"

    const-string v5, "htc"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-static {p0, v2}, Lcom/htc/music/util/CustomizeSetting;->isStorePackageExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    .line 265
    .local v3, supportSoundHound:Z
    if-eqz v3, :cond_0

    .line 266
    const/16 v4, 0x2d

    const v5, 0x7f0701d1

    invoke-interface {p1, v8, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02003c

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 272
    :cond_0
    const/16 v4, 0x2c

    const v5, 0x7f0700f5

    invoke-interface {p1, v8, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02002b

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    .line 274
    .local v1, queue:Landroid/view/MenuItem;
    if-nez v3, :cond_1

    .line 275
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 279
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 280
    .local v0, dlnaMode:I
    if-eq v7, v0, :cond_2

    const/4 v4, 0x3

    if-ne v4, v0, :cond_3

    .line 282
    :cond_2
    const/16 v4, 0x2e

    const v5, 0x7f0700f6

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x20800a3

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 309
    :cond_3
    return v8
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 392
    const-string v1, "[MediaPlaybackErrorActivity]"

    const-string v2, "onDestroy +"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 395
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    if-nez v1, :cond_2

    .line 396
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 398
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 402
    iput-object v3, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 411
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->hideSearchDialog()V

    .line 412
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginErrorListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 414
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_3
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 423
    const-string v1, "[MediaPlaybackErrorActivity]"

    const-string v2, "onDestroy -"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[MediaPlaybackErrorActivity]"

    const-string v2, "onDestroy, fail to unregisterReceiver(mUnlockReceiver)"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 314
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 315
    .local v1, id:I
    packed-switch v1, :pswitch_data_0

    .line 333
    :goto_0
    return v5

    .line 318
    :pswitch_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.soundhound.android.ID_NOW_EXTERNAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 320
    const-string v3, "com.soundhound.android.EXTRA_ID_NOW_TOKEN"

    const-string v4, "htc"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/MediaPlaybackErrorActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "[MediaPlaybackErrorActivity]"

    const-string v4, "can\'t find SoundHound activity!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->closeDMC()V

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 441
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 443
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 446
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSetDefaultResourceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSetDefaultResourceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 447
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 428
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 430
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    const-string v0, "[MediaPlaybackErrorActivity]"

    const-string v1, "onResume()...mService is not null and no message in queue. Send message to queue."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 437
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 450
    const-string v0, "[MediaPlaybackErrorActivity]"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v0, "queuelen"

    iget v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mQueueLen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    const-string v0, "pluginmode"

    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 453
    const-string v0, "errorcause"

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v0, "disablelib"

    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mDisableLib:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 455
    return-void
.end method

.method public showDatabaseError()V
    .locals 10

    .prologue
    const v9, 0x7f080092

    const/4 v8, 0x0

    .line 571
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getStorageState()Ljava/lang/String;

    move-result-object v3

    .line 574
    .local v3, status:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 575
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 576
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 580
    const/4 v2, 0x0

    .line 582
    .local v2, message:I
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v1

    .line 584
    .local v1, isInternalStorage:Z
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getIsInternalEnough()Z

    move-result v6

    if-nez v6, :cond_2

    .line 585
    const v2, 0x7f07004a

    .line 644
    :cond_0
    :goto_0
    invoke-virtual {p0, v9}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 647
    .local v4, tv:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 648
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 653
    .end local v1           #isInternalStorage:Z
    .end local v2           #message:I
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_1
    return-void

    .line 586
    .restart local v1       #isInternalStorage:Z
    .restart local v2       #message:I
    :cond_2
    const-string v6, "shared"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 587
    if-eqz v1, :cond_3

    .line 588
    const v2, 0x7f070049

    goto :goto_0

    .line 590
    :cond_3
    const v2, 0x7f070048

    goto :goto_0

    .line 595
    :cond_4
    const-string v6, "removed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "bad_removal"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 597
    :cond_5
    if-eqz v1, :cond_6

    .line 598
    const v2, 0x7f070049

    goto :goto_0

    .line 600
    :cond_6
    const v2, 0x20400a0

    goto :goto_0

    .line 604
    :cond_7
    const-string v6, "unmounted"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 605
    if-eqz v1, :cond_8

    .line 606
    const v2, 0x7f070049

    goto :goto_0

    .line 608
    :cond_8
    const v2, 0x20401fa

    goto :goto_0

    .line 612
    :cond_9
    const-string v6, "checking"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 613
    if-eqz v1, :cond_a

    .line 614
    const v2, 0x7f070049

    goto :goto_0

    .line 617
    :cond_a
    const v2, 0x20400a0

    goto :goto_0

    .line 621
    :cond_b
    const-string v6, "nofs"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 622
    const v2, 0x7f070037

    .line 624
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 625
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x20401fd

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0

    .line 626
    :cond_c
    if-eqz v1, :cond_d

    .line 627
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x20401fe

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 629
    :cond_d
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x20401fb

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 632
    :cond_e
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 633
    :cond_f
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackErrorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAllSongs(Landroid/content/Context;)[I

    move-result-object v0

    .line 635
    .local v0, allSong:[I
    if-eqz v0, :cond_10

    array-length v6, v0

    if-nez v6, :cond_11

    .line 636
    :cond_10
    const v2, 0x7f070037

    goto/16 :goto_0

    .line 639
    :cond_11
    const v2, 0x7f07003e

    goto/16 :goto_0
.end method

.method public showErrorFromPluginService()V
    .locals 2

    .prologue
    .line 656
    const v1, 0x7f080092

    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 657
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 658
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 660
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    :cond_0
    return-void
.end method

.method showSearchDialog()V
    .locals 2

    .prologue
    .line 877
    monitor-enter p0

    .line 878
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z

    if-eqz v1, :cond_0

    .line 879
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    :goto_0
    return-void

    .line 883
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->showDialog(I)V

    .line 884
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity;->mSearchDialogVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 888
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
