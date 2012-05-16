.class public Lcom/htc/music/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# static fields
.field private static final ACTION_AVRCP_PANEL_OPERATION:Ljava/lang/String; = "android.bluetooth.avrcp.intent.action.AVRCP_PANEL_OPERATION"

.field private static final AVRCP_BACKWARD:Ljava/lang/String; = "Backward"

.field private static final AVRCP_FFSTART:Ljava/lang/String; = "Fastforward_Start"

.field private static final AVRCP_FFSTOP:Ljava/lang/String; = "Fastforward_Stop"

.field private static final AVRCP_FORWARD:Ljava/lang/String; = "Forward"

.field private static final AVRCP_INTENT_OPERATION:Ljava/lang/String; = "android.bluetooth.avrcp.intent.PANEL_OP"

.field private static final AVRCP_PAUSE:Ljava/lang/String; = "Pause"

.field private static final AVRCP_PLAY:Ljava/lang/String; = "Play"

.field private static final AVRCP_RWSTART:Ljava/lang/String; = "Rewind_Start"

.field private static final AVRCP_RWSTOP:Ljava/lang/String; = "Rewind_Stop"

.field private static final AVRCP_STOP:Ljava/lang/String; = "Stop"

.field private static DEBUG:Z = false

.field private static final DOUBLE_CLICK_TIMEOUT:I = 0x1f4

.field private static DoubleClickDown:Z = false

.field private static FForRWIsDone:Z = false

.field private static final KEYCODE_MEDIA_FAST_FORWARD:I = 0x5a

.field private static final KEYCODE_MEDIA_NEXT:I = 0x57

.field private static final KEYCODE_MEDIA_PLAY_PAUSE:I = 0x55

.field private static final KEYCODE_MEDIA_PREVIOUS:I = 0x58

.field private static final KEYCODE_MEDIA_REWIND:I = 0x59

.field private static final KEYCODE_MEDIA_STOP:I = 0x56

.field private static final LONG_PRESS_DELAY:I = 0x3e8

.field private static LongPressTimeout:Z = false

.field private static final MSG_HEADSETHOOK_DOUBLECLICK_TIMEOUT:I = 0x3

.field private static final MSG_HEADSETHOOK_LONGPRESS_TIMEOUT:I = 0x4

.field private static final MSG_LONGPRESS_TIMEOUT_FF:I = 0x1

.field private static final MSG_LONGPRESS_TIMEOUT_RW:I = 0x2

.field private static final MSG_RELEASE_WAKELOCK:I = 0x5

.field private static final TAG:Ljava/lang/String; = "[MediaButtonIntentReceiver]"

.field private static inFFOrRWMode:Z

.field private static isDownPressed:Z

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static prevPressDownTimestamp:J

.field private static previousIsDown:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->DoubleClickDown:Z

    .line 73
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->LongPressTimeout:Z

    .line 75
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    .line 77
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    .line 79
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->FForRWIsDone:Z

    .line 83
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 114
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    .line 115
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/music/MediaButtonIntentReceiver;->prevPressDownTimestamp:J

    .line 119
    new-instance v0, Lcom/htc/music/MediaButtonIntentReceiver$1;

    invoke-direct {v0}, Lcom/htc/music/MediaButtonIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaButtonIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/music/MediaButtonIntentReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-boolean p0, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    return p0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-boolean p0, Lcom/htc/music/MediaButtonIntentReceiver;->LongPressTimeout:Z

    return p0
.end method

.method static synthetic access$500()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/music/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private wakeForStarting()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 426
    sget-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 427
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 428
    sget-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 429
    sget-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 430
    sget-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 431
    sget-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 432
    return-void
.end method


# virtual methods
.method handleAVRCPEvent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 435
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.avrcp.intent.action.AVRCP_PANEL_OPERATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 436
    const/4 v0, 0x0

    .line 479
    :goto_0
    return v0

    .line 438
    :cond_0
    const/4 v0, 0x1

    .line 439
    .local v0, bConsumed:Z
    const-string v3, "android.bluetooth.avrcp.intent.PANEL_OP"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, operation:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.htc.music.musicservicecommand"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v3, "Play"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 443
    const-string v3, "command"

    const-string v4, "togglepause"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 446
    invoke-direct {p0}, Lcom/htc/music/MediaButtonIntentReceiver;->wakeForStarting()V

    goto :goto_0

    .line 447
    :cond_1
    const-string v3, "Pause"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 448
    const-string v3, "command"

    const-string v4, "togglepause"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 451
    invoke-direct {p0}, Lcom/htc/music/MediaButtonIntentReceiver;->wakeForStarting()V

    goto :goto_0

    .line 452
    :cond_2
    const-string v3, "Forward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 453
    const-string v3, "command"

    const-string v4, "next"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const-string v3, "forcePlay"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 456
    :cond_3
    const-string v3, "Backward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 457
    const-string v3, "command"

    const-string v4, "previous"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string v3, "forcePlay"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 459
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 460
    :cond_4
    const-string v3, "Stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 461
    const-string v3, "command"

    const-string v4, "stop"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 463
    :cond_5
    const-string v3, "Fastforward_Start"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 464
    const-string v3, "command"

    const-string v4, "ffstart"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 466
    :cond_6
    const-string v3, "Fastforward_Stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 467
    const-string v3, "command"

    const-string v4, "ffstop"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 469
    :cond_7
    const-string v3, "Rewind_Start"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 470
    const-string v3, "command"

    const-string v4, "rwstart"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 472
    :cond_8
    const-string v3, "Rewind_Stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 473
    const-string v3, "command"

    const-string v4, "rwstop"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 476
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 179
    sget-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v13, :cond_0

    .line 180
    const-string v13, "[MediaButtonIntentReceiver]"

    const-string v14, "> onReceive <"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    sput-object p1, Lcom/htc/music/MediaButtonIntentReceiver;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 198
    .local v11, intentAction:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "headsetowner"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, headsetOwner:Ljava/lang/String;
    if-eqz v9, :cond_2

    const-string v13, ""

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "htcmusic"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 422
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    const-string v13, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 206
    const-string v13, "[MediaButtonIntentReceiver]"

    const-string v14, "Get android.intent.action.BOOT_COMPLETED."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v13, Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/MediaButtonIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/MediaButtonIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    new-instance v14, Landroid/content/ComponentName;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-class v16, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 212
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lcom/htc/music/MediaButtonIntentReceiver;->handleAVRCPEvent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    .line 213
    .local v2, bConsumed:Z
    if-nez v2, :cond_1

    .line 217
    const-string v13, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/view/KeyEvent;

    .line 219
    .local v6, event:Landroid/view/KeyEvent;
    if-eqz v6, :cond_1

    .line 223
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    .line 224
    .local v12, keycode:I
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 225
    .local v1, action:I
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    .line 227
    .local v7, eventtime:J
    sget-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v13, :cond_8

    .line 229
    if-nez v1, :cond_10

    .line 230
    const-string v13, "[MediaButtonIntentReceiver]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Down Key,Key Code:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",inFForRWMode:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",time:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_4
    :goto_1
    sget-object v13, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 236
    const-string v13, "[MediaButtonIntentReceiver]"

    const-string v14, "MSG_LONGPRESS_TIMEOUT_FF in queue"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_5
    sget-object v13, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 238
    const-string v13, "[MediaButtonIntentReceiver]"

    const-string v14, "MSG_LONGPRESS_TIMEOUT_RW in queue"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_6
    sget-object v13, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 240
    const-string v13, "[MediaButtonIntentReceiver]"

    const-string v14, "MSG_HEADSETHOOK_DOUBLECLICK_TIMEOUT in queue"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_7
    sget-object v13, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 242
    const-string v13, "[MediaButtonIntentReceiver]"

    const-string v14, "MSG_HEADSETHOOK_LONGPRESS_TIMEOUT in queue"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_8
    const/4 v3, 0x0

    .line 248
    .local v3, command:Ljava/lang/String;
    if-nez v1, :cond_17

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 259
    .local v4, currentTimestamp:J
    sget-wide v13, Lcom/htc/music/MediaButtonIntentReceiver;->prevPressDownTimestamp:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_9

    sget-wide v13, Lcom/htc/music/MediaButtonIntentReceiver;->prevPressDownTimestamp:J

    sub-long v13, v4, v13

    const-wide/16 v15, 0x1f4

    cmp-long v13, v13, v15

    if-lez v13, :cond_9

    .line 260
    const/4 v13, 0x0

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    .line 261
    const/4 v13, 0x0

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->LongPressTimeout:Z

    .line 262
    sget-object v13, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 263
    sget-object v13, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 266
    :cond_9
    sput-wide v4, Lcom/htc/music/MediaButtonIntentReceiver;->prevPressDownTimestamp:J

    .line 268
    const/16 v13, 0x4f

    if-ne v12, v13, :cond_12

    .line 269
    const/4 v13, 0x0

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->DoubleClickDown:Z

    .line 270
    const/4 v13, 0x1

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    .line 273
    sget-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    if-nez v13, :cond_a

    .line 274
    sget-object v13, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 276
    sget-object v13, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 277
    const/4 v13, 0x1

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->DoubleClickDown:Z

    .line 295
    :cond_a
    :goto_2
    sget-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    if-nez v13, :cond_c

    .line 296
    const/16 v13, 0x57

    if-ne v12, v13, :cond_14

    .line 299
    sget-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v13, :cond_b

    .line 300
    const-string v13, "[MediaButtonIntentReceiver]"

    const-string v14, "send MSG_LONGPRESS_TIMEOUT_FF"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_b
    sget-object v13, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    const-wide/16 v15, 0x3e8

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 313
    :cond_c
    :goto_3
    const/4 v13, 0x1

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    .line 315
    sget-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->FForRWIsDone:Z

    if-nez v13, :cond_d

    .line 316
    const/16 v13, 0x5a

    if-ne v12, v13, :cond_16

    .line 317
    const/4 v13, 0x1

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->FForRWIsDone:Z

    .line 318
    const-string v3, "ffstart"

    .line 406
    .end local v4           #currentTimestamp:J
    :cond_d
    :goto_4
    sget-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v13, :cond_e

    .line 407
    const-string v13, "[MediaButtonIntentReceiver]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "command="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_e
    if-eqz v3, :cond_1

    .line 409
    new-instance v10, Landroid/content/Intent;

    const-class v13, Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    .local v10, i:Landroid/content/Intent;
    const-string v13, "com.htc.music.musicservicecommand"

    invoke-virtual {v10, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string v13, "command"

    invoke-virtual {v10, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 416
    const-string v13, "[MediaButtonIntentReceiver]"

    const-string v14, "Aborting an ordered broadcast intent..."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaButtonIntentReceiver;->abortBroadcast()V

    .line 420
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaButtonIntentReceiver;->wakeForStarting()V

    goto/16 :goto_0

    .line 232
    .end local v3           #command:Ljava/lang/String;
    .end local v10           #i:Landroid/content/Intent;
    :cond_10
    const/4 v13, 0x1

    if-ne v1, v13, :cond_4

    .line 233
    const-string v13, "[MediaButtonIntentReceiver]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Up Key,Key Code:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",inFForRWMode:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",time:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 284
    .restart local v3       #command:Ljava/lang/String;
    .restart local v4       #currentTimestamp:J
    :cond_11
    const/4 v13, 0x0

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->LongPressTimeout:Z

    .line 285
    sget-object v13, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x4

    const-wide/16 v15, 0x3e8

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 289
    :cond_12
    const/16 v13, 0x55

    if-eq v12, v13, :cond_13

    const/16 v13, 0x7e

    if-eq v12, v13, :cond_13

    const/16 v13, 0x7f

    if-ne v12, v13, :cond_a

    .line 292
    :cond_13
    const/4 v13, 0x1

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    goto/16 :goto_2

    .line 303
    :cond_14
    const/16 v13, 0x58

    if-ne v12, v13, :cond_c

    .line 306
    sget-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v13, :cond_15

    .line 307
    const-string v13, "[MediaButtonIntentReceiver]"

    const-string v14, "send MSG_LONGPRESS_TIMEOUT_RW"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_15
    sget-object v13, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    const-wide/16 v15, 0x3e8

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 319
    :cond_16
    const/16 v13, 0x59

    if-ne v12, v13, :cond_d

    .line 320
    const/4 v13, 0x1

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->FForRWIsDone:Z

    .line 321
    const-string v3, "rwstart"

    goto/16 :goto_4

    .line 325
    .end local v4           #currentTimestamp:J
    :cond_17
    const/4 v13, 0x1

    if-ne v1, v13, :cond_d

    .line 326
    sparse-switch v12, :sswitch_data_0

    .line 396
    :cond_18
    :goto_5
    const/4 v13, 0x0

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    .line 397
    const/4 v13, 0x0

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->FForRWIsDone:Z

    goto/16 :goto_4

    .line 328
    :sswitch_0
    const-string v3, "stop"

    .line 329
    goto :goto_5

    .line 331
    :sswitch_1
    sget-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    if-eqz v13, :cond_18

    .line 333
    const-string v3, "togglepause"

    .line 334
    const/4 v13, 0x0

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    goto :goto_5

    .line 338
    :sswitch_2
    sget-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    if-eqz v13, :cond_18

    .line 340
    const-string v3, "play"

    .line 341
    const/4 v13, 0x0

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    goto :goto_5

    .line 345
    :sswitch_3
    sget-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    if-eqz v13, :cond_18

    .line 347
    const-string v3, "pause"

    .line 348
    const/4 v13, 0x0

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    goto :goto_5

    .line 354
    :sswitch_4
    sget-object v13, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    sget-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    if-eqz v13, :cond_19

    .line 356
    const-string v3, "ffstop"

    .line 357
    const/4 v13, 0x0

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    goto :goto_5

    .line 359
    :cond_19
    const-string v3, "next"

    .line 361
    goto :goto_5

    .line 365
    :sswitch_5
    sget-object v13, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    sget-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    if-eqz v13, :cond_1a

    .line 367
    const-string v3, "rwstop"

    .line 368
    const/4 v13, 0x0

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    goto :goto_5

    .line 370
    :cond_1a
    const-string v3, "previous"

    .line 372
    goto :goto_5

    .line 374
    :sswitch_6
    sget-object v13, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    sget-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->DoubleClickDown:Z

    if-nez v13, :cond_18

    .line 377
    sget-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->LongPressTimeout:Z

    if-nez v13, :cond_18

    .line 379
    sget-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    if-eqz v13, :cond_18

    .line 382
    sget-object v13, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x3

    const-wide/16 v15, 0x1f4

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 385
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaButtonIntentReceiver;->wakeForStarting()V

    .line 386
    const/4 v13, 0x0

    sput-boolean v13, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    goto :goto_5

    .line 390
    :sswitch_7
    const-string v3, "ffstop"

    .line 391
    goto :goto_5

    .line 393
    :sswitch_8
    const-string v3, "rwstop"

    goto :goto_5

    .line 326
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_6
        0x55 -> :sswitch_1
        0x56 -> :sswitch_0
        0x57 -> :sswitch_4
        0x58 -> :sswitch_5
        0x59 -> :sswitch_8
        0x5a -> :sswitch_7
        0x7e -> :sswitch_2
        0x7f -> :sswitch_3
    .end sparse-switch
.end method
