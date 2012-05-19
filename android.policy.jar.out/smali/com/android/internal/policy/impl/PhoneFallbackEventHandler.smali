.class public Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_EVENT_FLAG_CANCELED:I = 0x20

.field private static final SHAREKEY_LONG_PRESS_ACTIVITY:Ljava/lang/String;

.field private static final SHAREKEY_LONG_PRESS_INTENT_ACTION:Ljava/lang/String;

.field private static final SHAREKEY_LONG_PRESS_PACKAGE:Ljava/lang/String;

.field private static final SHAREKEY_SHORT_PRESS_ACTIVITY:Ljava/lang/String;

.field private static final SHAREKEY_SHORT_PRESS_INTENT_ACTION:Ljava/lang/String;

.field private static final SHAREKEY_SHORT_PRESS_PACKAGE:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field private mCameraInterntBroadcasted:Z

.field mContext:Landroid/content/Context;

.field private final mIsDisableOobe:Z

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field mSearchManager:Landroid/app/SearchManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "PhoneFallbackEventHandler"

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileShareKeyShortPressPackage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_SHORT_PRESS_PACKAGE:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileShareKeyShortPressActivity()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_SHORT_PRESS_ACTIVITY:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileShareKeyShortPressIntentAction()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_SHORT_PRESS_INTENT_ACTION:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileShareKeyLongPressPackage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_LONG_PRESS_PACKAGE:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileShareKeyLongPressActivity()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_LONG_PRESS_ACTIVITY:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileShareKeyLongPressIntentAction()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_LONG_PRESS_INTENT_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCameraInterntBroadcasted:Z

    .line 69
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getOobeStatus(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mIsDisableOobe:Z

    .line 73
    return-void
.end method

.method private getOobeStatus(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 413
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.htc.android.htcsetupwizard"

    const-string v5, "com.htc.android.htcsetupwizard.MainActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .local v2, oobe:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 422
    .local v3, oobeStatus:I
    const/4 v4, 0x2

    if-ne v4, v3, :cond_1

    .line 423
    .local v1, isDisable:Z
    :goto_0
    if-nez v1, :cond_0

    sget-object v4, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OOBE is enable, sharekey will be skipped. OOBE pkg status:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .end local v1           #isDisable:Z
    .end local v3           #oobeStatus:I
    :cond_0
    :goto_1
    return v1

    .line 418
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 422
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #oobeStatus:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleShareKeyIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "action"
    .parameter "packageName"
    .parameter "activityName"
    .parameter "flags"

    .prologue
    .line 433
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 434
    .local v1, intent:Landroid/content/Intent;
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 435
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    :cond_0
    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 438
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 440
    :cond_2
    invoke-virtual {v1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 448
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was caught while handling sharekey Intent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isOobeDisabled()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mIsDisableOobe:Z

    return v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 87
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 89
    .local v1, keyCode:I
    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 92
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method protected handleCameraKeyEvent()V
    .locals 0
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v11, 0x1000

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 101
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 103
    .local v1, dispatcher:Landroid/view/KeyEvent$DispatcherState;
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v6, v7

    .line 271
    :cond_1
    :goto_1
    return v6

    .line 107
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v7

    const/high16 v8, -0x8000

    invoke-virtual {v7, p1, v8}, Landroid/media/AudioManager;->handleKeyDown(II)V

    goto :goto_1

    .line 117
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v7

    if-nez v7, :cond_1

    .line 128
    :sswitch_2
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v4, v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 129
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v4, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4, v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_2

    .line 139
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 141
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 142
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 144
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .restart local v4       #intent:Landroid/content/Intent;
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 148
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_1

    .line 161
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_3

    .line 165
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_1

    .line 166
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 167
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 169
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCameraInterntBroadcasted:Z

    if-nez v8, :cond_4

    .line 172
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 173
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCameraInterntBroadcasted:Z

    .line 176
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 180
    const/4 v4, 0x0

    .line 181
    .restart local v4       #intent:Landroid/content/Intent;
    const/16 v7, 0xe4

    if-ne p1, v7, :cond_5

    .line 182
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.CAMCORDER_BUTTON"

    invoke-direct {v4, v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 188
    .restart local v4       #intent:Landroid/content/Intent;
    :goto_2
    const-string v7, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v4, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 189
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4, v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 184
    :cond_5
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v4, v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v4       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 195
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_6

    .line 199
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 200
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 201
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 202
    .local v0, config:Landroid/content/res/Configuration;
    iget v8, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v8, v6, :cond_7

    iget v8, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 205
    :cond_7
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .restart local v4       #intent:Landroid/content/Intent;
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/SearchManager;->stopSearch()V

    .line 211
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 215
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 217
    :catch_1
    move-exception v6

    goto/16 :goto_0

    .line 228
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v1, :cond_0

    .line 231
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v9, 0x10

    if-ne v8, v9, :cond_b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_b

    .line 233
    const-string v8, "CWS__001"

    const-string v9, "ro.cid"

    const-string v10, "00000000"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    move v5, v6

    .line 234
    .local v5, isATT:Z
    :goto_3
    if-nez v5, :cond_8

    const/16 v8, 0x38

    if-eq p1, v8, :cond_9

    :cond_8
    if-eqz v5, :cond_b

    const/16 v8, 0x37

    if-ne p1, v8, :cond_b

    .line 235
    :cond_9
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->resetMetaState()Z

    .line 236
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v3, i:Landroid/content/Intent;
    const-string v7, "com.android.camera"

    const-string v8, "com.android.camera.CameraEntry"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 241
    :catch_2
    move-exception v2

    .line 242
    .local v2, e:Ljava/lang/Exception;
    sget-object v7, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " was caught while starting camera."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:Landroid/content/Intent;
    .end local v5           #isATT:Z
    :cond_a
    move v5, v7

    .line 233
    goto :goto_3

    .line 250
    :cond_b
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_c

    .line 254
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 256
    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 257
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 258
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mIsDisableOobe:Z

    if-eqz v7, :cond_d

    .line 260
    sget-object v7, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_LONG_PRESS_INTENT_ACTION:Ljava/lang/String;

    sget-object v8, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_LONG_PRESS_PACKAGE:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_LONG_PRESS_ACTIVITY:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9, v11}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleShareKeyIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    :cond_d
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    goto/16 :goto_1

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_4
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x4f -> :sswitch_2
        0x54 -> :sswitch_5
        0x55 -> :sswitch_1
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xe3 -> :sswitch_7
        0xe4 -> :sswitch_4
    .end sparse-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 278
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 279
    .local v1, dispatcher:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 283
    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    move v3, v4

    .line 365
    :cond_2
    :goto_0
    return v3

    .line 287
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 288
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 290
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v4

    const/high16 v5, -0x8000

    invoke-virtual {v4, p1, v5}, Landroid/media/AudioManager;->handleKeyUp(II)V

    goto :goto_0

    .line 310
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :sswitch_1
    const/16 v4, 0x4f

    if-ne p1, v4, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_3

    .line 311
    sget-object v4, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "KeyCode is Headsethook and KeyFlag is canceled, not sending intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 315
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 316
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_2
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mCameraInterntBroadcasted:Z

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 331
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleCameraKeyEvent()V

    goto :goto_0

    .line 338
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 341
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 342
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_0

    .line 349
    :sswitch_4
    sget-object v5, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 353
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 354
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mIsDisableOobe:Z

    if-eqz v4, :cond_2

    .line 356
    sget-object v4, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_SHORT_PRESS_INTENT_ACTION:Ljava/lang/String;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_SHORT_PRESS_PACKAGE:Ljava/lang/String;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHAREKEY_SHORT_PRESS_ACTIVITY:Ljava/lang/String;

    const/high16 v7, 0x1000

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->handleShareKeyIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 283
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_2
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xe3 -> :sswitch_4
        0xe4 -> :sswitch_2
    .end sparse-switch
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/high16 v2, -0x8000

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->preDispatchKeyEvent(II)V

    .line 82
    return-void
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    .line 77
    return-void
.end method

.method startCallActivity()V
    .locals 4

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 370
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 373
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
