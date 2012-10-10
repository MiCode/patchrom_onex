.class public Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
.super Ljava/lang/Object;
.source "IdleScreenEngine.java"

# interfaces
.implements Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;,
        Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;,
        Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "IdleScreenEngine"


# instance fields
.field protected mContext:Landroid/content/Context;

.field mDestroyed:Z

.field private mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

.field mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

.field mInitializing:Z

.field private mIsResume:Z

.field final mLock:Ljava/lang/Object;

.field private mLockScreenState:I

.field mPendingMove:Landroid/view/MotionEvent;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

.field mRenderable:Z

.field mReportedVisible:Z

.field mScreenOn:Z

.field protected mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field mStarted:Z

.field mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

.field private mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

.field private mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    .line 65
    iput-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    .line 66
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    .line 80
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    .line 81
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 82
    iput v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    .line 87
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->setTag(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V
    .locals 3
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    .line 65
    iput-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    .line 66
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    .line 80
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    .line 81
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 82
    iput v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    .line 95
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    .line 96
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-virtual {p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->setTag(Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;)V
    .locals 3
    .parameter "service"
    .parameter "windowBuilder"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    .line 65
    iput-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    .line 66
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    .line 80
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    .line 81
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 82
    iput v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    .line 104
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    .line 105
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    .line 107
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    .line 109
    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-virtual {p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->setTag(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 453
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 454
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v0, 0x0

    .line 455
    .local v0, bScreenOn:Z
    if-eqz v1, :cond_0

    .line 456
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 458
    :cond_0
    return v0
.end method


# virtual methods
.method attach(Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;)V
    .locals 5
    .parameter "wrapper"

    .prologue
    const/4 v4, 0x0

    .line 360
    const-string v1, "IdleScreenEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wrapper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 365
    :cond_0
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    .line 370
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->setSurfaceSize()V

    .line 371
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    .line 372
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->attach()V

    .line 377
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 378
    new-instance v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;

    invoke-direct {v1, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 379
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 380
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 385
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    const-string v1, "IdleScreenEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doCreate(Landroid/view/SurfaceHolder;)V

    .line 388
    iput-boolean v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    .line 389
    invoke-virtual {p0, v4, v4, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->updateSurface(ZZZ)V

    goto :goto_0
.end method

.method detach()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 720
    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 751
    :goto_0
    return-void

    .line 724
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    .line 726
    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    if-eqz v1, :cond_1

    .line 727
    iput-boolean v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    .line 728
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowVisibility(I)V

    .line 729
    const-string v1, "IdleScreenEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVisibilityChanged(false): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onVisibilityChanged(Z)V

    .line 732
    :cond_1
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->detach()V

    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 739
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 740
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :cond_2
    :goto_1
    const-string v1, "IdleScreenEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doDestroy()V

    goto :goto_0

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "IdleScreenEngine"

    const-string v2, "Receiver not registered"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/idlescreen/ISLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public dismissReminder(IJ)V
    .locals 2
    .parameter "type"
    .parameter "id"

    .prologue
    .line 1062
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1063
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "Key_ReminderType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1064
    const-string v1, "Key_ReminderId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1065
    const-string v1, "idleScreenReminderDismiss"

    invoke-virtual {p0, v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1066
    return-void
.end method

.method doCommand(Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;)V
    .locals 25
    .parameter "cmd"

    .prologue
    .line 579
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-nez v3, :cond_1

    .line 580
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->action:Ljava/lang/String;

    .line 581
    .local v10, action:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->extras:Landroid/os/Bundle;

    .line 582
    .local v11, extras:Landroid/os/Bundle;
    const-string v3, "idleScreenTelephonyUpdate"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    move-object/from16 v21, v0

    .line 584
    .local v21, telephonyListener:Lcom/htc/lockscreen/telephony/TelephonyListener;
    if-eqz v11, :cond_1

    .line 585
    const-string v3, "Key_TelephonyState"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/htc/lockscreen/telephony/TelephonyState;

    .line 586
    .local v20, state:Lcom/htc/lockscreen/telephony/TelephonyState;
    if-eqz v21, :cond_0

    .line 587
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/htc/lockscreen/telephony/TelephonyListener;->onTelephonyStateChange(Lcom/htc/lockscreen/telephony/TelephonyState;)V

    .line 589
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onTelephonyStateChange(Lcom/htc/lockscreen/telephony/TelephonyState;)V

    .line 671
    .end local v10           #action:Ljava/lang/String;
    .end local v11           #extras:Landroid/os/Bundle;
    .end local v20           #state:Lcom/htc/lockscreen/telephony/TelephonyState;
    .end local v21           #telephonyListener:Lcom/htc/lockscreen/telephony/TelephonyListener;
    :cond_1
    :goto_0
    return-void

    .line 592
    .restart local v10       #action:Ljava/lang/String;
    .restart local v11       #extras:Landroid/os/Bundle;
    :cond_2
    const-string v3, "idleScreenReminderUpdate"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

    move-object/from16 v16, v0

    .line 594
    .local v16, listener:Lcom/htc/lockscreen/reminder/ReminderListener;
    if-eqz v11, :cond_1

    .line 595
    const-string v3, "Key_ReminderState"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/htc/lockscreen/reminder/ReminderState;

    .line 596
    .local v20, state:Lcom/htc/lockscreen/reminder/ReminderState;
    const-string v3, "Key_ReminderType"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 597
    .local v22, type:I
    if-eqz v16, :cond_3

    .line 598
    move-object/from16 v0, v16

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/htc/lockscreen/reminder/ReminderListener;->onReminderStateChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 600
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onReminderStateChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    goto :goto_0

    .line 603
    .end local v16           #listener:Lcom/htc/lockscreen/reminder/ReminderListener;
    .end local v20           #state:Lcom/htc/lockscreen/reminder/ReminderState;
    .end local v22           #type:I
    :cond_4
    const-string v3, "idleScreenIsResume"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 604
    if-eqz v11, :cond_5

    .line 605
    const-string v3, "Key_IsResume"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    .line 607
    :cond_5
    const-string v3, "idleScreen_Survive"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->reportVisibility()V

    goto :goto_0

    .line 610
    :cond_6
    const-string v3, "idleScreenViewMode"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 611
    if-eqz v11, :cond_1

    .line 612
    const-string v3, "Key_ViewMode"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    .line 614
    const-string v3, "IdleScreenEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_LOCKSCREEN_VIEW_MODE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onLockScreenStateChanged(I)V

    .line 616
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    if-nez v3, :cond_7

    const/16 v24, 0x1

    .line 617
    .local v24, windowShow:Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->setWindowShow(Z)V

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->reportVisibility()V

    goto/16 :goto_0

    .line 616
    .end local v24           #windowShow:Z
    :cond_7
    const/16 v24, 0x0

    goto :goto_1

    .line 621
    :cond_8
    const-string v3, "idlescreen_Phone_state_update"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 622
    const-string v3, "Key_PhoneState"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/htc/lockscreen/telephony/PhoneState;

    .line 623
    .local v20, state:Lcom/htc/lockscreen/telephony/PhoneState;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V

    goto/16 :goto_0

    .line 625
    .end local v20           #state:Lcom/htc/lockscreen/telephony/PhoneState;
    :cond_9
    const-string v3, "idleScreen_key_down"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 626
    if-eqz v11, :cond_1

    .line 627
    const-string v3, "Key_keycode"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 628
    .local v14, keycode:I
    const-string v3, "Key_keyEvent"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/view/KeyEvent;

    .line 629
    .local v13, keyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onKeyDown(ILandroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 633
    .end local v13           #keyEvent:Landroid/view/KeyEvent;
    .end local v14           #keycode:I
    :cond_a
    const-string v3, "idleScreen_key_up"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 634
    if-eqz v11, :cond_1

    .line 635
    const-string v3, "Key_keycode"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 636
    .restart local v14       #keycode:I
    const-string v3, "Key_keyEvent"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/view/KeyEvent;

    .line 637
    .restart local v13       #keyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onKeyUp(ILandroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 641
    .end local v13           #keyEvent:Landroid/view/KeyEvent;
    .end local v14           #keycode:I
    :cond_b
    const-string v3, "idleScreen_remote_view"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 642
    if-eqz v11, :cond_1

    .line 643
    const-string v3, "Key_remoteView"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    .line 644
    .local v17, remoteView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onRemoteViewUpdate(Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V

    goto/16 :goto_0

    .line 647
    .end local v17           #remoteView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;
    :cond_c
    const-string v3, "idlescreen_shortcut_update"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 648
    if-eqz v11, :cond_1

    .line 649
    const/16 v19, 0x0

    .line 650
    .local v19, shortcutInfos:[Lcom/htc/lockscreen/widget/ShortcutInfo;
    const-string v3, "Key_shortcut_visibility"

    const/4 v4, -0x1

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 651
    .local v23, visibility:I
    const-string v3, "Key_shortcut_list"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v18

    .line 652
    .local v18, shorcutArray:[Landroid/os/Parcelable;
    if-eqz v18, :cond_e

    .line 653
    move-object/from16 v0, v18

    array-length v15, v0

    .line 654
    .local v15, length:I
    new-array v0, v15, [Lcom/htc/lockscreen/widget/ShortcutInfo;

    move-object/from16 v19, v0

    .line 655
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v15, :cond_e

    .line 656
    aget-object v3, v18, v12

    if-eqz v3, :cond_d

    .line 657
    aget-object v3, v18, v12

    check-cast v3, Lcom/htc/lockscreen/widget/ShortcutInfo;

    aput-object v3, v19, v12

    .line 655
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 661
    .end local v12           #i:I
    .end local v15           #length:I
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onShortcutsUpdate([Lcom/htc/lockscreen/widget/ShortcutInfo;I)V

    goto/16 :goto_0

    .line 665
    .end local v18           #shorcutArray:[Landroid/os/Parcelable;
    .end local v19           #shortcutInfos:[Lcom/htc/lockscreen/widget/ShortcutInfo;
    .end local v23           #visibility:I
    :cond_f
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->action:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->y:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->z:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->sync:Z

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    goto/16 :goto_0
.end method

.method public doCreate(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "surfaceHolder"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 122
    return-void
.end method

.method doDesiredSizeChanged(II)V
    .locals 3
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 419
    const-string v0, "IdleScreenEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDesiredSizeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0, p1, p2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onDesiredSizeChanged(II)V

    .line 423
    :cond_0
    return-void
.end method

.method public doDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->pokeWakeLock(I)V

    .line 131
    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    .line 132
    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

    .line 133
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onDestroy()V

    .line 135
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->doDestroy()V

    .line 136
    return-void
.end method

.method public doPause()V
    .locals 0

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onPause()V

    .line 832
    return-void
.end method

.method public doResume()V
    .locals 0

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onResume()V

    .line 823
    return-void
.end method

.method public doStart()V
    .locals 2

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onStart()V

    .line 813
    const-string v0, "idlescreen_surface_create"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 814
    return-void
.end method

.method public doStop()V
    .locals 0

    .prologue
    .line 840
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onStop()V

    .line 841
    return-void
.end method

.method doVisibilityChanged(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 426
    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-nez v1, :cond_2

    .line 427
    iput-boolean p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    .line 428
    const/16 v0, 0x8

    .line 429
    .local v0, visibility:I
    if-eqz p1, :cond_0

    .line 430
    const/4 v0, 0x0

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowVisibility(I)V

    .line 434
    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    if-eqz v1, :cond_3

    .line 435
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->goToStart()V

    .line 441
    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v2, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->updateSurface(ZZZ)V

    .line 443
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->reportVisibility()V

    .line 445
    .end local v0           #visibility:I
    :cond_2
    return-void

    .line 437
    .restart local v0       #visibility:I
    :cond_3
    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    if-nez v1, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->goToStop()V

    goto :goto_0
.end method

.method finishDrawing()V
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->finishDrawing()V

    .line 1211
    return-void
.end method

.method protected forceViewModeDisable(I)Z
    .locals 1
    .parameter "viewMode"

    .prologue
    .line 999
    const/4 v0, 0x0

    return v0
.end method

.method public getDesiredMinimumHeight()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public getDesiredMinimumWidth()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public getIdleWindow()Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    return-object v0
.end method

.method public getLockScreenViewMode()I
    .locals 1

    .prologue
    .line 983
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    return v0
.end method

.method public getSession()Landroid/view/IWindowSession;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->getSession()Landroid/view/IWindowSession;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public getWindowAnimation()I
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowAnimation:I

    .line 1144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowFlag()I
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->getWindowFlag()I

    move-result v0

    return v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    .line 1120
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowType()I
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowType:I

    .line 1132
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x67

    goto :goto_0
.end method

.method protected goToPause()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_0

    .line 553
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->PAUSE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 554
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doPause()V

    .line 556
    :cond_0
    return-void
.end method

.method protected goToResume()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->STOP:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_2

    .line 535
    :cond_0
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 536
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStart()V

    .line 537
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doResume()V

    .line 544
    :cond_1
    :goto_0
    return-void

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->START:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->PAUSE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_1

    .line 540
    :cond_3
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 541
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doResume()V

    goto :goto_0
.end method

.method protected goToStart()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->STOP:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_1

    .line 523
    :cond_0
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->START:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 524
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStart()V

    .line 526
    :cond_1
    return-void
.end method

.method protected goToStop()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->START:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_1

    .line 565
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStop()V

    .line 574
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->STOP:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 575
    return-void

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_2

    .line 568
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doPause()V

    .line 569
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStop()V

    goto :goto_0

    .line 571
    :cond_2
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->PAUSE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStop()V

    goto :goto_0
.end method

.method public handleAllReminder(Z)V
    .locals 2
    .parameter "bSnoozeAll"

    .prologue
    const/4 v1, 0x0

    .line 1087
    if-eqz p1, :cond_0

    .line 1088
    const-string v0, "idleScreenReminderSnoozeAll"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1093
    :goto_0
    return-void

    .line 1091
    :cond_0
    const-string v0, "idleScreenReminderHandleAll"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 1109
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    return v0
.end method

.method public isPreview()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-boolean v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method public isRenderable()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mRenderable:Z

    return v0
.end method

.method public isResume()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    return v0
.end method

.method public isScreenStart()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReportedVisible:Z

    return v0
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 1101
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "surfaceHolder"

    .prologue
    .line 139
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .locals 0
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 180
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keycode"
    .parameter "keyEvent"

    .prologue
    .line 1016
    return-void
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keycode"
    .parameter "keyEvent"

    .prologue
    .line 1024
    return-void
.end method

.method protected onLockScreenStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 780
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xOffsetStep"
    .parameter "yOffsetStep"
    .parameter "xPixelOffset"
    .parameter "yPixelOffset"

    .prologue
    .line 160
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 853
    return-void
.end method

.method protected onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1008
    return-void
.end method

.method protected onReminderStateChange(ILcom/htc/lockscreen/reminder/ReminderState;)V
    .locals 0
    .parameter "type"
    .parameter "state"

    .prologue
    .line 1047
    return-void
.end method

.method protected onRemoteViewUpdate(Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V
    .locals 0
    .parameter "remoteView"

    .prologue
    .line 1032
    return-void
.end method

.method public onRenderableChange(Z)V
    .locals 0
    .parameter "bRenderable"

    .prologue
    .line 505
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 849
    return-void
.end method

.method protected onScreenOnOffChanged(Z)V
    .locals 0
    .parameter "screenOn"

    .prologue
    .line 789
    return-void
.end method

.method protected onShortcutsUpdate([Lcom/htc/lockscreen/widget/ShortcutInfo;I)V
    .locals 0
    .parameter "shortcuts"
    .parameter "visibility"

    .prologue
    .line 1040
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 845
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 857
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 188
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 219
    return-void
.end method

.method public onSurfaceDestroyPredict(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 196
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 226
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 211
    return-void
.end method

.method public onSurfaceVisibilityChanged(Landroid/view/SurfaceHolder;I)V
    .locals 0
    .parameter "holder"
    .parameter "visibility"

    .prologue
    .line 204
    return-void
.end method

.method protected onTelephonyStateChange(Lcom/htc/lockscreen/telephony/TelephonyState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1054
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 149
    return-void
.end method

.method protected onViewModeChange(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "viewMode"
    .parameter "extras"

    .prologue
    .line 992
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 145
    return-void
.end method

.method protected onWindowResize(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 804
    return-void
.end method

.method public pokeWakeLock()V
    .locals 1

    .prologue
    .line 877
    const/16 v0, 0x2ee0

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->pokeWakeLock(I)V

    .line 878
    return-void
.end method

.method public pokeWakeLock(I)V
    .locals 2
    .parameter "ms"

    .prologue
    .line 886
    const-string v0, "idleScreenWakeLock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 887
    return-void
.end method

.method public prepareUnlock()V
    .locals 2

    .prologue
    .line 698
    const-string v0, "idleScreenPrepareUnlock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 699
    return-void
.end method

.method public registerReminderState(Lcom/htc/lockscreen/reminder/ReminderListener;)V
    .locals 2
    .parameter "reminderListener"

    .prologue
    .line 963
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

    .line 964
    const-string v0, "idleScreenReminderRegister"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 965
    return-void
.end method

.method public registerTelephonyState(Lcom/htc/lockscreen/telephony/TelephonyListener;)V
    .locals 2
    .parameter "telephonyListener"

    .prologue
    .line 941
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    .line 942
    const-string v0, "idleScreenTelephonyRegister"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 943
    return-void
.end method

.method reportVisibility()V
    .locals 5

    .prologue
    .line 463
    const-string v2, "IdleScreenEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportVisibility mVisible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mScreenOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsResume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLockScreenState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-nez v2, :cond_1

    .line 468
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->isScreenOn(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    .line 469
    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 470
    .local v1, visible:Z
    :goto_0
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    .line 471
    .local v0, bRender:Z
    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mRenderable:Z

    if-eq v2, v0, :cond_0

    .line 472
    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mRenderable:Z

    .line 473
    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onRenderableChange(Z)V

    .line 475
    :cond_0
    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReportedVisible:Z

    if-eq v2, v1, :cond_1

    .line 476
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReportedVisible:Z

    .line 477
    const-string v2, "IdleScreenEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVisibilityChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onVisibilityChanged(Z)V

    .line 488
    if-eqz v1, :cond_3

    .line 489
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->goToResume()V

    .line 496
    .end local v0           #bRender:Z
    .end local v1           #visible:Z
    :cond_1
    :goto_1
    return-void

    .line 469
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 492
    .restart local v0       #bRender:Z
    .restart local v1       #visible:Z
    :cond_3
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->goToPause()V

    goto :goto_1
.end method

.method public reportWindowResized(Z)V
    .locals 5
    .parameter "reportDraw"

    .prologue
    const/4 v2, 0x0

    .line 1189
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v1, :cond_0

    .line 1190
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v3, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v4, 0x272e

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1192
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1194
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 1190
    goto :goto_0
.end method

.method public reportWindowVisible(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 1202
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v1, :cond_0

    .line 1203
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v3, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v4, 0x271a

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1205
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1207
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 1203
    goto :goto_0
.end method

.method public requestUpdateSurface()V
    .locals 3

    .prologue
    .line 1171
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v1, :cond_0

    .line 1172
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1173
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1175
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public requestUpdateSurface(J)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 1178
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v1, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1180
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1182
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter "action"
    .parameter "extra"

    .prologue
    .line 338
    new-instance v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/os/HandlerCaller$SomeArgs;-><init>()V

    .line 339
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 340
    iput-object p2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .line 342
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v3, 0x2742

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 344
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 345
    return-void
.end method

.method public setShowLiveWallpaper(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setShowLiveWallpaper(Z)V

    .line 335
    return-void
.end method

.method setSurfaceFormat(I)V
    .locals 1
    .parameter "format"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setFormat(I)V

    .line 357
    return-void
.end method

.method protected setSurfaceSize()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 410
    .local v0, holder:Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_0

    .line 411
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 415
    :cond_0
    return-void
.end method

.method public setWindowFlag(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowFlag(I)V

    .line 1153
    return-void
.end method

.method setWindowShow(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "IdleScreenEngine"

    const-string v1, "updateSurface~ destroyed"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowShow(Z)V

    .line 321
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, v2, v2, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->updateSurface(ZZZ)V

    .line 322
    return-void
.end method

.method public snoozeReminder(IJLjava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "id"
    .parameter "action"

    .prologue
    .line 1074
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1075
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "Key_ReminderType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1076
    const-string v1, "Key_ReminderId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1077
    const-string v1, "Key_ReminderAction"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const-string v1, "idleScreenReminderSnooze"

    invoke-virtual {p0, v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1079
    return-void
.end method

.method public startActivityAndUnlock(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "intent"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 686
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 687
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "KEY_ACTIVITY_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 688
    const-string v1, "KEY_ACTIVITY_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v1, "KEY_ACTIVITY_CLASS"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v1, "ACTION_LOCKSCREEN_START_PENDING"

    invoke-virtual {p0, v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 691
    return-void
.end method

.method public startActivityAndUnlock(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "intent"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 678
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 679
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "KEY_ACTIVITY_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 680
    const-string v1, "KEY_ACTIVITY_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v1, "KEY_ACTIVITY_CLASS"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v1, "startActivityAndUnlock"

    invoke-virtual {p0, v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 683
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 864
    const-string v0, "idleScreenUnlock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 865
    return-void
.end method

.method public unlock(Landroid/os/Bundle;)V
    .locals 1
    .parameter "extra"

    .prologue
    .line 868
    const-string v0, "idleScreenUnlock"

    invoke-virtual {p0, v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 869
    return-void
.end method

.method public unregisterReminderState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 974
    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

    .line 975
    const-string v0, "idleScreenReminderUnRegister"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 976
    return-void
.end method

.method public unregisterTelephonyState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 952
    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    .line 953
    const-string v0, "idleScreenTelephonyUnRegister"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 954
    return-void
.end method

.method updateSurface(ZZZ)V
    .locals 2
    .parameter "forceRelayout"
    .parameter "forceReport"
    .parameter "redrawNeeded"

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "IdleScreenEngine"

    const-string v1, "updateSurface~ destroyed"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->updateSurface(ZZZ)V

    .line 353
    return-void
.end method
