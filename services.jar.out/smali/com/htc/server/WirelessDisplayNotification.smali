.class public Lcom/htc/server/WirelessDisplayNotification;
.super Ljava/lang/Object;
.source "WirelessDisplayNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/WirelessDisplayNotification$1;,
        Lcom/htc/server/WirelessDisplayNotification$H;,
        Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;
    }
.end annotation


# static fields
.field private static final EXTRA_DONGLE_IP_ADDR:Ljava/lang/String; = "com.htc.wifidisplay.intent.extra.DONGLE_IP_ADDR"

.field private static final EXTRA_DONGLE_VERSION:Ljava/lang/String; = "com.htc.wifidisplay.intent.extra.DONGLE_VERSION"

.field private static final ICON_CONFIG_TOOL_START:I = 0x10800f4

.field private static final ICON_DONGLES_AVAILABLE:I = 0x10805e5

.field private static final ICON_MIRROR_MODE_READY:I = 0x10805e6

.field private static final ICON_MIRROR_MODE_RUNNING:I = 0x10805e7

.field private static final ICON_MIRROR_MODE_STOP:I = 0x10800de

.field private static final ICON_MIRROR_MODE_STOP_DISABLE:I = 0x10800df

.field private static final INTENT_CONFIG_DONGLE:Ljava/lang/String; = "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

.field private static final INTENT_CONFIG_DONGLES_LIST:Ljava/lang/String; = "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

.field private static final INTENT_DONGLE_FIRMWARE_UPDATE:Ljava/lang/String; = "com.htc.wifidisplay.intent.DONGLE_FIRMWARE_UPDATE"

.field private static final INTENT_NOTIFICATION_BTN_CLICK:Ljava/lang/String; = "com.htc.wifidisplay.NOTIFICATION_BTN_CLICK"

.field private static final INTENT_NOTIFICATION_STATUS_UPDATE:Ljava/lang/String; = "com.htc.wifidisplay.NOTIFICATION_STATUS_UPDATE"

.field private static final INTENT_SWITCH_MIRROR:Ljava/lang/String; = "com.htc.wifidisplay.SWITCH_ON_OFF_MIRROR_MODE"

.field private static final NOTIFICATION_ID:I = 0x10805e5

.field private static final NOTIFICATION_TYPE_DONGLES_AVAILABLE:I = 0x2

.field private static final NOTIFICATION_TYPE_DONGLE_AVAILABLE:I = 0x1

.field private static final NOTIFICATION_TYPE_DONGLE_MIRROR:I = 0x4

.field private static final NOTIFICATION_TYPE_DONGLE_NONE:I = 0x0

.field private static final NOTIFICATION_TYPE_DONGLE_READY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WirelessDisplayNotification"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrNotificationType:I

.field private mHandler:Lcom/htc/server/WirelessDisplayNotification$H;

.field private mNotificationPreference:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object v3, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z

    .line 108
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    .line 111
    iput-object v3, p0, Lcom/htc/server/WirelessDisplayNotification;->mHandler:Lcom/htc/server/WirelessDisplayNotification$H;

    .line 119
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "com.htc.wifidisplay.NOTIFICATION_STATUS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "com.htc.wifidisplay.NOTIFICATION_BTN_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;

    invoke-direct {v2, p0, v3}, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;-><init>(Lcom/htc/server/WirelessDisplayNotification;Lcom/htc/server/WirelessDisplayNotification$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    new-instance v1, Lcom/htc/server/WirelessDisplayNotification$H;

    invoke-direct {v1, p0}, Lcom/htc/server/WirelessDisplayNotification$H;-><init>(Lcom/htc/server/WirelessDisplayNotification;)V

    iput-object v1, p0, Lcom/htc/server/WirelessDisplayNotification;->mHandler:Lcom/htc/server/WirelessDisplayNotification$H;

    .line 130
    return-void
.end method

.method static synthetic access$100(Lcom/htc/server/WirelessDisplayNotification;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/server/WirelessDisplayNotification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/server/WirelessDisplayNotification;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayNotification;->getNotificationPreference(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/htc/server/WirelessDisplayNotification;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/server/WirelessDisplayNotification;)Lcom/htc/server/WirelessDisplayNotification$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayNotification;->mHandler:Lcom/htc/server/WirelessDisplayNotification$H;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/server/WirelessDisplayNotification;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getNotification(ILjava/lang/String;Z)Landroid/app/Notification;
    .locals 15
    .parameter "nType"
    .parameter "strUncfgDongle"
    .parameter "isEnablingOrDisabling"

    .prologue
    .line 242
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    .line 243
    .local v5, n:Landroid/app/Notification;
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 246
    .local v7, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v11, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x10900cd

    invoke-direct {v2, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 248
    .local v2, contentView:Landroid/widget/RemoteViews;
    iput-object v2, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v5, Landroid/app/Notification;->when:J

    .line 250
    const/16 v11, 0x20

    iput v11, v5, Landroid/app/Notification;->flags:I

    .line 252
    const/4 v6, 0x0

    .line 253
    .local v6, nSwitchViewStatus:I
    const v3, 0x10800de

    .line 255
    .local v3, iconSwitch:I
    const/4 v9, 0x0

    .line 256
    .local v9, strTitle:Ljava/lang/String;
    const/4 v8, 0x0

    .line 259
    .local v8, strText:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 297
    :goto_0
    const v11, 0x1020006

    iget v12, v5, Landroid/app/Notification;->icon:I

    invoke-virtual {v2, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 298
    const v11, 0x1020016

    invoke-virtual {v2, v11, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 299
    const v11, 0x1020046

    invoke-virtual {v2, v11, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 300
    const v11, 0x1020340

    invoke-virtual {v2, v11, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 301
    if-nez v6, :cond_3

    .line 302
    const/4 v11, 0x3

    move/from16 v0, p1

    if-ne v0, v11, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 v11, 0x4

    move/from16 v0, p1

    if-ne v0, v11, :cond_2

    .line 304
    :cond_1
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.htc.wifidisplay.NOTIFICATION_BTN_CLICK"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v10, switchIntent:Landroid/content/Intent;
    const/high16 v11, 0x4000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    const v11, 0x1020340

    iget-object v12, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v10, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 309
    .end local v10           #switchIntent:Landroid/content/Intent;
    :cond_2
    const v11, 0x1020340

    invoke-virtual {v2, v11, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 313
    :cond_3
    const/4 v4, 0x0

    .line 314
    .local v4, intent:Landroid/content/Intent;
    const/4 v11, 0x1

    move/from16 v0, p1

    if-ne v11, v0, :cond_6

    .line 315
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v11, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .restart local v4       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 317
    .local v1, bundle:Landroid/os/Bundle;
    const-string v11, "DONGLE_MAC"

    move-object/from16 v0, p2

    invoke-virtual {v1, v11, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 322
    .end local v1           #bundle:Landroid/os/Bundle;
    :goto_1
    const/high16 v11, 0x1000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 325
    const/4 v11, 0x4

    invoke-interface {v4, v11}, Landroid/content/HtcIfIntent;->addHtcIntentFlag(I)Landroid/content/Intent;

    .line 328
    iget-object v11, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/high16 v13, 0x800

    invoke-static {v11, v12, v4, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    iput-object v11, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 331
    iget v11, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    move/from16 v0, p1

    if-eq v0, v11, :cond_4

    .line 332
    iget v11, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    if-nez v11, :cond_8

    .line 333
    const/4 v11, 0x4

    move/from16 v0, p1

    if-ne v11, v0, :cond_7

    .line 334
    const v11, 0x4040011

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 345
    :cond_4
    :goto_2
    return-object v5

    .line 261
    .end local v4           #intent:Landroid/content/Intent;
    :pswitch_0
    const v11, 0x10805e5

    iput v11, v5, Landroid/app/Notification;->icon:I

    .line 262
    const/4 v6, 0x0

    .line 263
    const v3, 0x10800de

    .line 264
    const v11, 0x104056b

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 265
    const v11, 0x4040010

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 266
    goto/16 :goto_0

    .line 269
    :pswitch_1
    const v11, 0x10805e5

    iput v11, v5, Landroid/app/Notification;->icon:I

    .line 270
    const/16 v6, 0x8

    .line 271
    const v3, 0x10800de

    .line 272
    const v11, 0x104056b

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 273
    const v11, 0x104056c

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 274
    goto/16 :goto_0

    .line 277
    :pswitch_2
    const v11, 0x10805e6

    iput v11, v5, Landroid/app/Notification;->icon:I

    .line 278
    const/4 v6, 0x0

    .line 279
    if-nez p3, :cond_5

    .line 280
    const v3, 0x10800de

    .line 284
    :goto_3
    const v11, 0x104056b

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 285
    const v11, 0x4040010

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 286
    goto/16 :goto_0

    .line 282
    :cond_5
    const v3, 0x10800df

    goto :goto_3

    .line 289
    :pswitch_3
    const v11, 0x10805e7

    iput v11, v5, Landroid/app/Notification;->icon:I

    .line 290
    const/4 v6, 0x0

    .line 291
    const v3, 0x10800f4

    .line 292
    const v11, 0x104056b

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 293
    const v11, 0x404000f

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 320
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_6
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v11, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v4       #intent:Landroid/content/Intent;
    goto/16 :goto_1

    .line 336
    :cond_7
    const v11, 0x1040569

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_2

    .line 338
    :cond_8
    const/4 v11, 0x4

    move/from16 v0, p1

    if-ne v11, v0, :cond_9

    .line 339
    const v11, 0x4040011

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 341
    :cond_9
    const/4 v11, 0x0

    iput-object v11, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getNotificationPreference(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    .line 349
    const/4 v6, 0x1

    .line 350
    .local v6, bRet:Z
    const-string v2, "content://com.htc.wifidisplay.provider.setting"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 352
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    move v7, v6

    .line 379
    .end local v6           #bRet:Z
    .local v7, bRet:I
    :goto_0
    return v7

    .line 355
    .end local v7           #bRet:I
    .restart local v6       #bRet:Z
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 356
    .local v0, client:Landroid/content/ContentProviderClient;
    if-nez v0, :cond_1

    move v7, v6

    .line 357
    .restart local v7       #bRet:I
    goto :goto_0

    .line 359
    .end local v7           #bRet:I
    :cond_1
    const/4 v8, 0x0

    .line 361
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 362
    if-nez v8, :cond_3

    .line 373
    if-eqz v8, :cond_2

    .line 374
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move v7, v6

    .line 363
    .restart local v7       #bRet:I
    goto :goto_0

    .line 365
    .end local v7           #bRet:I
    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-ne v12, v2, :cond_4

    .line 366
    const-string v2, "notification"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 367
    .local v11, nameColumn:I
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    .line 368
    .local v10, f:I
    if-eqz v10, :cond_6

    move v6, v12

    .line 373
    .end local v10           #f:I
    .end local v11           #nameColumn:I
    :cond_4
    :goto_1
    if-eqz v8, :cond_5

    .line 374
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move v7, v6

    .line 379
    .restart local v7       #bRet:I
    goto :goto_0

    .line 368
    .end local v7           #bRet:I
    .restart local v10       #f:I
    .restart local v11       #nameColumn:I
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 370
    .end local v10           #f:I
    .end local v11           #nameColumn:I
    :catch_0
    move-exception v9

    .line 371
    .local v9, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "WirelessDisplayNotification"

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    if-eqz v8, :cond_5

    .line 374
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 373
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_7

    .line 374
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_7
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 373
    throw v2
.end method


# virtual methods
.method public notifyFirmwareUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "strIPAddr"
    .parameter "strVersion"

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifidisplay.intent.DONGLE_FIRMWARE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.wifidisplay.intent.extra.DONGLE_IP_ADDR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v1, "com.htc.wifidisplay.intent.extra.DONGLE_VERSION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method public updateNotification(ZIZLjava/util/List;)V
    .locals 16
    .parameter "mirrorOn"
    .parameter "dongleCount"
    .parameter "wifiOn"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ",
            "Ljava/util/List",
            "<",
            "Lcom/htc/service/DongleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p4, mDongleInfos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    const/4 v5, 0x0

    .line 150
    .local v5, isOneUncfgDongle:Z
    const/4 v4, 0x0

    .line 151
    .local v4, isOneReadyDongle:Z
    const/4 v3, 0x0

    .line 153
    .local v3, isEnablingOrDisabling:Z
    const/4 v13, 0x0

    .line 154
    .local v13, wpsCount:I
    const/4 v9, 0x0

    .line 155
    .local v9, readyCount:I
    const/4 v11, 0x0

    .line 157
    .local v11, updateType:I
    const/4 v10, 0x0

    .line 163
    .local v10, uncfgDongle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    const-string v15, "notification"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 165
    .local v7, nm:Landroid/app/NotificationManager;
    if-nez v7, :cond_0

    .line 239
    :goto_0
    return-void

    .line 170
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z

    if-nez v14, :cond_2

    .line 171
    :cond_1
    const v14, 0x10805e5

    invoke-virtual {v7, v14}, Landroid/app/NotificationManager;->cancel(I)V

    .line 172
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    goto :goto_0

    .line 176
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    const-string v15, "wireless_display"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/service/WirelessDisplayManager;

    .line 178
    .local v12, wdm:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v12, :cond_3

    .line 179
    invoke-virtual {v12}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v6

    .line 180
    .local v6, nMirrorState:I
    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v14, v0, :cond_8

    const/4 v14, 0x2

    if-ne v6, v14, :cond_8

    .line 183
    const/16 p1, 0x0

    .line 184
    const/4 v3, 0x1

    .line 192
    .end local v6           #nMirrorState:I
    :cond_3
    :goto_1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/service/DongleInfo;

    .line 193
    .local v2, info:Lcom/htc/service/DongleInfo;
    iget v14, v2, Lcom/htc/service/DongleInfo;->status:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_5

    iget v14, v2, Lcom/htc/service/DongleInfo;->status:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_6

    .line 194
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 195
    iget-object v10, v2, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    .line 198
    :cond_6
    iget-boolean v14, v2, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_7

    iget v14, v2, Lcom/htc/service/DongleInfo;->status:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_4

    .line 199
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 185
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/htc/service/DongleInfo;
    .restart local v6       #nMirrorState:I
    :cond_8
    if-nez p1, :cond_3

    if-nez v6, :cond_3

    .line 188
    const/4 v3, 0x1

    goto :goto_1

    .line 206
    .end local v6           #nMirrorState:I
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_9
    if-nez v13, :cond_a

    if-nez v9, :cond_a

    .line 207
    const v14, 0x10805e5

    invoke-virtual {v7, v14}, Landroid/app/NotificationManager;->cancel(I)V

    .line 208
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    goto :goto_0

    .line 212
    :cond_a
    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    if-nez v9, :cond_b

    .line 213
    const/4 v5, 0x1

    .line 215
    :cond_b
    const/4 v14, 0x1

    if-ne v9, v14, :cond_c

    .line 216
    const/4 v4, 0x1

    .line 219
    :cond_c
    if-eqz p1, :cond_e

    .line 220
    const/4 v11, 0x4

    .line 232
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v3}, Lcom/htc/server/WirelessDisplayNotification;->getNotification(ILjava/lang/String;Z)Landroid/app/Notification;

    move-result-object v8

    .line 234
    .local v8, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    if-eq v11, v14, :cond_d

    .line 235
    const v14, 0x10805e5

    invoke-virtual {v7, v14}, Landroid/app/NotificationManager;->cancel(I)V

    .line 237
    :cond_d
    const v14, 0x10805e5

    invoke-virtual {v7, v14, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 238
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    goto/16 :goto_0

    .line 221
    .end local v8           #notification:Landroid/app/Notification;
    :cond_e
    if-eqz v4, :cond_f

    .line 222
    const/4 v11, 0x3

    goto :goto_3

    .line 223
    :cond_f
    if-eqz v5, :cond_10

    .line 225
    const/4 v11, 0x2

    goto :goto_3

    .line 229
    :cond_10
    const/4 v11, 0x2

    goto :goto_3
.end method

.method public updateNotification(ZIZLjava/util/List;Z)V
    .locals 2
    .parameter "mirrorOn"
    .parameter "dongleCount"
    .parameter "wifiOn"
    .parameter
    .parameter "NotifyUpgrade"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ",
            "Ljava/util/List",
            "<",
            "Lcom/htc/service/DongleInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p4, mDongleInfos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    const/4 v0, 0x1

    if-ne v0, p5, :cond_0

    .line 142
    const-string v0, "WirelessDisplayNotification"

    const-string v1, "Firmware Upgrade Notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/server/WirelessDisplayNotification;->updateNotification(ZIZLjava/util/List;)V

    .line 146
    return-void
.end method
