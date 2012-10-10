.class public Lcom/android/camera/component/AutoBacklightIntentSender;
.super Lcom/android/camera/component/UIComponent;
.source "AutoBacklightIntentSender.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final BASIC_BRIGHTNESS_VALUE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LOW_BATTERY_BRIGHTNESS_VALUE:I = 0x0

.field public static final LOW_BATTERY_THRESHOLD:I = 0x14

.field public static final NAME:Ljava/lang/String; = "AutoBacklight Intent Sender"

.field public static final RESEND_MSG_TIME:I = 0x7530

.field public static final SEND_ENABLE_AUTOBACKLIGHT:I = 0x2711


# instance fields
.field private m_BrightnessValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0xe9

    sput v0, Lcom/android/camera/component/AutoBacklightIntentSender;->BASIC_BRIGHTNESS_VALUE:I

    .line 47
    const/16 v0, 0xd3

    sput v0, Lcom/android/camera/component/AutoBacklightIntentSender;->LOW_BATTERY_BRIGHTNESS_VALUE:I

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    const/4 v2, 0x0

    .line 61
    const-string v0, "AutoBacklightIntentSender"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 54
    iput v2, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/AutoBacklightIntentSender;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->enableAutoBacklight()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/AutoBacklightIntentSender;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->disableAutoBacklight()V

    return-void
.end method

.method private disableAutoBacklight()V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "disableAutoBacklight()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/android/camera/component/AutoBacklightIntentSender;->removeMessages(I)V

    .line 221
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I

    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v1, "backlight.delay"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    return-void
.end method

.method private enableAutoBacklight()V
    .locals 10

    .prologue
    const/16 v9, 0x2711

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 162
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "enableAutoBacklight()"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v9}, Lcom/android/camera/component/AutoBacklightIntentSender;->removeMessages(I)V

    .line 168
    iget v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I

    if-nez v6, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 175
    .local v1, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v6, "user_powersaver_enable"

    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    if-ne v4, v6, :cond_1

    .line 176
    .local v4, userEnabled:Z
    :goto_0
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Manual power saving mode is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_1
    const-string v6, "/sys/class/power_supply/battery/capacity"

    invoke-static {v6}, Lcom/android/camera/io/FileUtility;->readInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 185
    .local v0, batteryValueInFile:Ljava/lang/Integer;
    if-eqz v0, :cond_4

    .line 187
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current battery capacity is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x14

    if-ge v6, v7, :cond_2

    .line 189
    sget v6, Lcom/android/camera/component/AutoBacklightIntentSender;->LOW_BATTERY_BRIGHTNESS_VALUE:I

    iput v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I

    .line 201
    .end local v0           #batteryValueInFile:Ljava/lang/Integer;
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #userEnabled:Z
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Intent with brightness value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 203
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v6, "entering.screen.brightness"

    iget v7, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v6, "backlight.delay"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    const-wide/16 v5, 0x7530

    invoke-virtual {p0, p0, v9, v5, v6}, Lcom/android/camera/component/AutoBacklightIntentSender;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    .line 210
    return-void

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v1       #cr:Landroid/content/ContentResolver;
    :cond_1
    move v4, v5

    .line 175
    goto/16 :goto_0

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "The settings user_powersaver_enable is not found, set userEnabled to false"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v4, 0x0

    .restart local v4       #userEnabled:Z
    goto :goto_1

    .line 190
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0       #batteryValueInFile:Ljava/lang/Integer;
    :cond_2
    if-eqz v4, :cond_3

    .line 191
    sget v6, Lcom/android/camera/component/AutoBacklightIntentSender;->LOW_BATTERY_BRIGHTNESS_VALUE:I

    iput v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I

    goto :goto_2

    .line 193
    :cond_3
    sget v6, Lcom/android/camera/component/AutoBacklightIntentSender;->BASIC_BRIGHTNESS_VALUE:I

    iput v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I

    goto :goto_2

    .line 197
    :cond_4
    sget v6, Lcom/android/camera/component/AutoBacklightIntentSender;->BASIC_BRIGHTNESS_VALUE:I

    iput v6, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I

    goto :goto_2
.end method

.method private registerListeners()V
    .locals 5

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 104
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->activatedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoBacklightIntentSender$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoBacklightIntentSender$1;-><init>(Lcom/android/camera/component/AutoBacklightIntentSender;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 115
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoBacklightIntentSender$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoBacklightIntentSender$2;-><init>(Lcom/android/camera/component/AutoBacklightIntentSender;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 125
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoBacklightIntentSender$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoBacklightIntentSender$3;-><init>(Lcom/android/camera/component/AutoBacklightIntentSender;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 136
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/AutoBacklightIntentSender$4;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/AutoBacklightIntentSender$4;-><init>(Lcom/android/camera/component/AutoBacklightIntentSender;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 71
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 88
    :goto_0
    return-void

    .line 82
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->enableAutoBacklight()V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 97
    invoke-direct {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->registerListeners()V

    .line 98
    return-void
.end method
