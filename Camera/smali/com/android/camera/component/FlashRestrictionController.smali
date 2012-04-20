.class Lcom/android/camera/component/FlashRestrictionController;
.super Lcom/android/camera/component/UIComponent;
.source "FlashRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/FlashRestrictionController$11;
    }
.end annotation


# static fields
.field private static final FLAG_LOW_BATTERY_CAPACITY:I = 0x10

.field private static final FLAG_LOW_BATTERY_TEMPERATURE:I = 0x8

.field private static final FLAG_RIL:I = 0x2

.field private static final FLAG_WIFI_HOTSPOT:I = 0x1

.field private static final FLAG_WIMAX:I = 0x4

.field private static final MSG_CHECK_ALL_RESTRICTIONS:I = 0x2712

.field private static final MSG_CHECK_RIL:I = 0x2715

.field private static final MSG_CHECK_WIFI_HOTSPOT:I = 0x2716

.field private static final MSG_CHECK_WIMAX:I = 0x2717

.field private static final MSG_DISABLE_STATUS_UPDATED:I = 0x2711

.field private static final MSG_WORKER_THREAD_STARTED:I = 0x2710

.field static final NAME:Ljava/lang/String; = "Flash-Restriction Controller"

.field private static final PATH_RIL_STATUS:Ljava/lang/String; = "/sys/camera_led_status/led_ril_status"

.field private static final PATH_WIFI_HOTSPOT_STATUS:Ljava/lang/String; = "/sys/camera_led_status/led_hotspot_status"

.field private static final PATH_WIMAX_STATUS:Ljava/lang/String; = "/sys/camera_led_status/led_wimax_status"


# instance fields
.field private m_DisableStatus:I

.field private m_FileObserverForRIL:Landroid/os/FileObserver;

.field private m_FileObserverForWiMax:Landroid/os/FileObserver;

.field private m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

.field private m_IsFirstTimePreview:Z

.field private m_IsFlashDisabled:Z

.field private final m_WorkerThread:Lcom/android/camera/WorkerThread;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    const/4 v2, 0x1

    .line 74
    const-string v0, "Flash-Restriction Controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 51
    iput-boolean v2, p0, Lcom/android/camera/component/FlashRestrictionController;->m_IsFirstTimePreview:Z

    .line 52
    new-instance v0, Lcom/android/camera/component/FlashRestrictionController$1;

    const-string v1, "Flash-Restriction Worker Thread"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/component/FlashRestrictionController$1;-><init>(Lcom/android/camera/component/FlashRestrictionController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/FlashRestrictionController;Landroid/os/Message;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/camera/component/FlashRestrictionController;->handleAsyncMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/FlashRestrictionController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->checkAllRestrictions()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/component/FlashRestrictionController;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/FlashRestrictionController;->onDisableStatusUpdated(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/FlashRestrictionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_IsFlashDisabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/component/FlashRestrictionController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_IsFlashDisabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/FlashRestrictionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->getRestrictionHint()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/FlashRestrictionController;)Lcom/android/camera/WorkerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/FlashRestrictionController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->stopFileObservers()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/camera/component/FlashRestrictionController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/component/FlashRestrictionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_IsFirstTimePreview:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/component/FlashRestrictionController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_IsFirstTimePreview:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/component/FlashRestrictionController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->startFileObservers()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/FlashRestrictionController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->showWarningToast()V

    return-void
.end method

.method private checkAllRestrictions()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->checkRIL()V

    .line 83
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->checkWifiHotspot()V

    .line 84
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->checkWiMax()V

    .line 85
    return-void
.end method

.method private checkRIL()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    .line 92
    const-string v0, "/sys/camera_led_status/led_ril_status"

    invoke-direct {p0, v0}, Lcom/android/camera/component/FlashRestrictionController;->isChecked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v4

    .line 93
    .local v3, status:I
    :goto_0
    const/16 v2, 0x2711

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/FlashRestrictionController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 94
    return-void

    .line 92
    .end local v3           #status:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkWiMax()V
    .locals 6

    .prologue
    const/4 v4, 0x4

    .line 110
    const-string v0, "/sys/camera_led_status/led_wimax_status"

    invoke-direct {p0, v0}, Lcom/android/camera/component/FlashRestrictionController;->isChecked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v4

    .line 111
    .local v3, status:I
    :goto_0
    const/16 v2, 0x2711

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/FlashRestrictionController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 112
    return-void

    .line 110
    .end local v3           #status:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkWifiHotspot()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 101
    const-string v0, "/sys/camera_led_status/led_hotspot_status"

    invoke-direct {p0, v0}, Lcom/android/camera/component/FlashRestrictionController;->isChecked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v4

    .line 102
    .local v3, status:I
    :goto_0
    const/16 v2, 0x2711

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/FlashRestrictionController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 103
    return-void

    .line 101
    .end local v3           #status:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getRestrictionHint()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 141
    iget v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    if-nez v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    iget v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 145
    const v0, 0x7f0a0041

    goto :goto_0

    .line 146
    :cond_2
    iget v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 147
    const v0, 0x7f0a0042

    goto :goto_0

    .line 148
    :cond_3
    iget v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 150
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isShowFlashLightHint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const v0, 0x7f0a0043

    goto :goto_0

    .line 154
    :cond_4
    iget v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 155
    const v0, 0x7f0a0044

    goto :goto_0

    .line 156
    :cond_5
    const v0, 0x7f0a0040

    goto :goto_0
.end method

.method private handleAsyncMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 183
    :pswitch_0
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    .line 167
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->checkAllRestrictions()V

    .line 185
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->checkRIL()V

    goto :goto_1

    .line 175
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->checkWifiHotspot()V

    goto :goto_1

    .line 179
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->checkWiMax()V

    goto :goto_1

    .line 164
    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isChecked(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    const/4 v1, 0x1

    .line 329
    invoke-static {p1}, Lcom/android/camera/io/FileUtility;->readInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 330
    .local v0, valueInFile:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onDisableStatusUpdated(II)V
    .locals 3
    .parameter "status"
    .parameter "mask"

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    .line 346
    iget v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_DisableStatus:I

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 347
    .local v0, isDisabled:Z
    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_IsFlashDisabled:Z

    if-eq v1, v0, :cond_0

    .line 349
    if-eqz v0, :cond_4

    .line 352
    invoke-virtual {p0}, Lcom/android/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->disableFlash()V

    .line 355
    invoke-virtual {p0}, Lcom/android/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->showWarningToast()V

    .line 360
    :cond_2
    :goto_2
    iput-boolean v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_IsFlashDisabled:Z

    goto :goto_0

    .line 346
    .end local v0           #isDisabled:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 359
    .restart local v0       #isDisabled:Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->enableFlash()V

    goto :goto_2
.end method

.method private showWarningToast()V
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->getRestrictionHint()I

    move-result v0

    .line 375
    .local v0, resId:I
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/HTCCamera;->showToast(I)V

    goto :goto_0
.end method

.method private startFileObservers()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 385
    invoke-virtual {p0}, Lcom/android/camera/component/FlashRestrictionController;->getState()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 450
    :goto_0
    return-void

    .line 391
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForRIL:Landroid/os/FileObserver;

    if-nez v1, :cond_1

    .line 393
    new-instance v1, Lcom/android/camera/component/FlashRestrictionController$8;

    const-string v2, "/sys/camera_led_status/led_ril_status"

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/component/FlashRestrictionController$8;-><init>(Lcom/android/camera/component/FlashRestrictionController;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForRIL:Landroid/os/FileObserver;

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForRIL:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 412
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    if-nez v1, :cond_2

    .line 414
    new-instance v1, Lcom/android/camera/component/FlashRestrictionController$9;

    const-string v2, "/sys/camera_led_status/led_hotspot_status"

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/component/FlashRestrictionController$9;-><init>(Lcom/android/camera/component/FlashRestrictionController;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    .line 423
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 433
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWiMax:Landroid/os/FileObserver;

    if-nez v1, :cond_3

    .line 435
    new-instance v1, Lcom/android/camera/component/FlashRestrictionController$10;

    const-string v2, "/sys/camera_led_status/led_wimax_status"

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/component/FlashRestrictionController$10;-><init>(Lcom/android/camera/component/FlashRestrictionController;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWiMax:Landroid/os/FileObserver;

    .line 444
    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWiMax:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 448
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot start watching file \'/sys/camera_led_status/led_wimax_status\'"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 404
    .end local v0           #ex:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 406
    .restart local v0       #ex:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot start watching file \'/sys/camera_led_status/led_ril_status\'"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 425
    .end local v0           #ex:Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 427
    .restart local v0       #ex:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot start watching file \'/sys/camera_led_status/led_hotspot_status\'"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private stopFileObservers()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForRIL:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForRIL:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWiMax:Landroid/os/FileObserver;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWiMax:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 463
    :cond_2
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v0}, Lcom/android/camera/WorkerThread;->exit()V

    .line 124
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->stopFileObservers()V

    .line 125
    iput-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForRIL:Landroid/os/FileObserver;

    .line 126
    iput-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWifiHotSpot:Landroid/os/FileObserver;

    .line 127
    iput-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_FileObserverForWiMax:Landroid/os/FileObserver;

    .line 130
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 133
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 134
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 190
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 201
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 204
    :goto_0
    return-void

    .line 193
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/FlashRestrictionController;->onDisableStatusUpdated(II)V

    goto :goto_0

    .line 197
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/FlashRestrictionController;->startFileObservers()V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 213
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 216
    iget-object v1, p0, Lcom/android/camera/component/FlashRestrictionController;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v1}, Lcom/android/camera/WorkerThread;->start()V

    .line 219
    invoke-virtual {p0}, Lcom/android/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 220
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->flashButtonClickedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/FlashRestrictionController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/FlashRestrictionController$2;-><init>(Lcom/android/camera/component/FlashRestrictionController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 254
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/FlashRestrictionController$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/FlashRestrictionController$3;-><init>(Lcom/android/camera/component/FlashRestrictionController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 264
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/FlashRestrictionController$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/FlashRestrictionController$4;-><init>(Lcom/android/camera/component/FlashRestrictionController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 287
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/FlashRestrictionController$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/FlashRestrictionController$5;-><init>(Lcom/android/camera/component/FlashRestrictionController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 304
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/FlashRestrictionController$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/FlashRestrictionController$6;-><init>(Lcom/android/camera/component/FlashRestrictionController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 313
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isLowPower:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/FlashRestrictionController$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/FlashRestrictionController$7;-><init>(Lcom/android/camera/component/FlashRestrictionController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 322
    return-void
.end method
