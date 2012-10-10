.class public Lcom/android/camera/mirror/MirrorActivity;
.super Landroid/app/Activity;
.source "MirrorActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/mirror/MirrorActivity$3;,
        Lcom/android/camera/mirror/MirrorActivity$TVDisplayListener;
    }
.end annotation


# static fields
.field public static final MSG_CAMERA_CLOSED:I = 0x69

.field public static final MSG_CAMERA_ERROR:I = 0xc8

.field public static final MSG_CAMERA_OPEN:I = 0x64

.field public static final MSG_CAMERA_OPEN_FAILED:I = 0x65

.field public static final MSG_CAMERA_PREVIEW_STARTED:I = 0x66

.field public static final MSG_CAMERA_PREVIEW_START_FAILED:I = 0x67

.field public static final MSG_CAMERA_PREVIEW_STOPPED:I = 0x68

.field private static final TAG:Ljava/lang/String; = "MirrorActivity"


# instance fields
.field private mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

.field private mTVDisplayListener:Lcom/android/camera/mirror/MirrorActivity$TVDisplayListener;

.field private m_BottomBar:Landroid/view/View;

.field private m_BrightnessButton:Landroid/view/View;

.field private m_IsCameraOpen:Z

.field private m_IsMaxBrightness:Z

.field private m_IsPreviewStarted:Z

.field private m_IsPreviewSurfaceCreated:Z

.field private m_MessageHandler:Landroid/os/Handler;

.field private m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

.field private m_PreviewSurface:Landroid/view/SurfaceView;

.field private m_isActivityPaused:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsMaxBrightness:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_isActivityPaused:Z

    .line 65
    iput-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 66
    iput-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->mTVDisplayListener:Lcom/android/camera/mirror/MirrorActivity$TVDisplayListener;

    .line 568
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/mirror/MirrorActivity;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/mirror/MirrorActivity;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/mirror/MirrorActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_BrightnessButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/mirror/MirrorActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsMaxBrightness:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/mirror/MirrorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/camera/mirror/MirrorActivity;->setMinBrightness()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/mirror/MirrorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/camera/mirror/MirrorActivity;->setMaxBrightness()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/mirror/MirrorActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_isActivityPaused:Z

    return v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 126
    const-string v0, "MirrorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got unknown message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 94
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/mirror/MirrorActivity;->onCameraOpen()V

    goto :goto_0

    .line 99
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/mirror/MirrorActivity;->onPreviewStarted(II)V

    goto :goto_0

    .line 104
    :sswitch_2
    iput-boolean v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewStarted:Z

    goto :goto_0

    .line 109
    :sswitch_3
    iput-boolean v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsCameraOpen:Z

    goto :goto_0

    .line 115
    :sswitch_4
    iput-boolean v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewStarted:Z

    .line 116
    const v0, 0x7f0a01c5

    invoke-direct {p0, v0}, Lcom/android/camera/mirror/MirrorActivity;->showErrorMessage(I)V

    goto :goto_0

    .line 121
    :sswitch_5
    const v0, 0x7f0a01c6

    invoke-direct {p0, v0}, Lcom/android/camera/mirror/MirrorActivity;->showErrorMessage(I)V

    goto :goto_0

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_4
        0x66 -> :sswitch_1
        0x67 -> :sswitch_4
        0x68 -> :sswitch_2
        0x69 -> :sswitch_3
        0xc8 -> :sswitch_5
    .end sparse-switch
.end method

.method private onCameraOpen()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 141
    iput-boolean v4, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsCameraOpen:Z

    .line 142
    iget-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewSurfaceCreated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    invoke-virtual {v0}, Lcom/android/camera/mirror/MirrorThread;->getMessageHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6e

    iget-object v2, p0, Lcom/android/camera/mirror/MirrorActivity;->m_PreviewSurface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 145
    iput-boolean v4, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewStarted:Z

    .line 147
    :cond_0
    return-void
.end method

.method private onPreviewStarted(II)V
    .locals 0
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 366
    return-void
.end method

.method private restoreBrightness()V
    .locals 2

    .prologue
    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.request.BRIGHTNESS_NORMAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/camera/mirror/MirrorActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 447
    return-void
.end method

.method private setMaxBrightness()V
    .locals 3

    .prologue
    .line 455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.request.BRIGHTNESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "EXTRA_BRIGHTNESS"

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    invoke-virtual {p0, v0}, Lcom/android/camera/mirror/MirrorActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 458
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsMaxBrightness:Z

    .line 461
    iget-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_BottomBar:Landroid/view/View;

    const v2, 0x7f020097

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 462
    return-void
.end method

.method private setMinBrightness()V
    .locals 3

    .prologue
    .line 470
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.request.BRIGHTNESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "EXTRA_BRIGHTNESS"

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0, v0}, Lcom/android/camera/mirror/MirrorActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 473
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsMaxBrightness:Z

    .line 476
    iget-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_BottomBar:Landroid/view/View;

    const v2, 0x7f020096

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 477
    return-void
.end method

.method private showErrorMessage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/camera/mirror/MirrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/mirror/MirrorActivity;->showErrorMessage(Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 493
    const v1, 0x7f0800b0

    invoke-virtual {p0, v1}, Lcom/android/camera/mirror/MirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 494
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    :goto_0
    iget-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    invoke-virtual {v1}, Lcom/android/camera/mirror/MirrorThread;->getMessageHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 507
    :cond_0
    return-void

    .line 500
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public getMessageHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final isInMirrorMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 553
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isSupportMirrorMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 564
    :goto_0
    return v2

    .line 558
    :cond_0
    :try_start_0
    const-string v3, "wireless_display"

    invoke-virtual {p0, v3}, Lcom/android/camera/mirror/MirrorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/WirelessDisplayManager;

    .line 559
    .local v1, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-virtual {v1}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 561
    .end local v1           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v0

    .line 563
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "MirrorActivity"

    const-string v4, "isInMirrorMode() - Error while getting mirror display status"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstance"

    .prologue
    const/4 v5, 0x3

    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/mirror/MirrorActivity;->isInMirrorMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    :try_start_0
    const-string v3, "MirrorActivity"

    const-string v4, "Initial remote screen orientation"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/htc/wrap/android/view/HtcWrapSurface;->setRemoteScreenOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    :goto_0
    new-instance v3, Lcom/android/camera/mirror/MirrorActivity$TVDisplayListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/camera/mirror/MirrorActivity$TVDisplayListener;-><init>(Lcom/android/camera/mirror/MirrorActivity;Lcom/android/camera/mirror/MirrorActivity$1;)V

    iput-object v3, p0, Lcom/android/camera/mirror/MirrorActivity;->mTVDisplayListener:Lcom/android/camera/mirror/MirrorActivity$TVDisplayListener;

    .line 175
    new-instance v3, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    iget-object v4, p0, Lcom/android/camera/mirror/MirrorActivity;->mTVDisplayListener:Lcom/android/camera/mirror/MirrorActivity$TVDisplayListener;

    invoke-direct {v3, p0, v4}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;-><init>(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    iput-object v3, p0, Lcom/android/camera/mirror/MirrorActivity;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 178
    new-instance v3, Lcom/android/camera/mirror/MirrorActivity$1;

    invoke-direct {v3, p0}, Lcom/android/camera/mirror/MirrorActivity$1;-><init>(Lcom/android/camera/mirror/MirrorActivity;)V

    iput-object v3, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MessageHandler:Landroid/os/Handler;

    .line 189
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v3, :sswitch_data_0

    .line 200
    const v1, 0x7f030018

    .line 201
    .local v1, layoutID:I
    sget-object v3, Lcom/android/camera/mirror/MirrorActivity$3;->$SwitchMap$com$android$camera$DisplayDevice$Resolution:[I

    sget-object v4, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    invoke-virtual {v4}, Lcom/android/camera/DisplayDevice$Resolution;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 217
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/camera/mirror/MirrorActivity;->setContentView(I)V

    .line 223
    const v3, 0x7f0800ab

    invoke-virtual {p0, v3}, Lcom/android/camera/mirror/MirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/android/camera/mirror/MirrorActivity;->m_PreviewSurface:Landroid/view/SurfaceView;

    .line 224
    iget-object v3, p0, Lcom/android/camera/mirror/MirrorActivity;->m_PreviewSurface:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 225
    .local v2, surfaceHolder:Landroid/view/SurfaceHolder;
    invoke-interface {v2, v5}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 226
    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 229
    const v3, 0x7f0800ac

    invoke-virtual {p0, v3}, Lcom/android/camera/mirror/MirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/mirror/MirrorActivity;->m_BottomBar:Landroid/view/View;

    .line 232
    const v3, 0x7f0800ad

    invoke-virtual {p0, v3}, Lcom/android/camera/mirror/MirrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/mirror/MirrorActivity;->m_BrightnessButton:Landroid/view/View;

    .line 233
    iget-object v3, p0, Lcom/android/camera/mirror/MirrorActivity;->m_BrightnessButton:Landroid/view/View;

    new-instance v4, Lcom/android/camera/mirror/MirrorActivity$2;

    invoke-direct {v4, p0}, Lcom/android/camera/mirror/MirrorActivity$2;-><init>(Lcom/android/camera/mirror/MirrorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 255
    return-void

    .line 168
    .end local v1           #layoutID:I
    .end local v2           #surfaceHolder:Landroid/view/SurfaceHolder;
    :catch_0
    move-exception v0

    .line 170
    .local v0, ex:Ljava/lang/Throwable;
    const-string v3, "MirrorActivity"

    const-string v4, "Rotate remote Camera layout may not support"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    .end local v0           #ex:Ljava/lang/Throwable;
    :sswitch_0
    const v1, 0x7f03001b

    .line 198
    .restart local v1       #layoutID:I
    goto :goto_1

    .line 205
    :pswitch_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    const v1, 0x7f03001a

    goto :goto_1

    .line 209
    :pswitch_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    const v1, 0x7f03001a

    goto :goto_1

    .line 212
    :cond_2
    const v1, 0x7f030019

    goto :goto_1

    .line 189
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
        0x9f -> :sswitch_0
        0xe1 -> :sswitch_0
        0x2d7 -> :sswitch_0
    .end sparse-switch

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 270
    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->release()V

    .line 272
    :cond_0
    iput-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 273
    iput-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->mTVDisplayListener:Lcom/android/camera/mirror/MirrorActivity$TVDisplayListener;

    .line 276
    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    invoke-virtual {v0}, Lcom/android/camera/mirror/MirrorThread;->close()V

    .line 279
    iput-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    .line 281
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    .line 290
    packed-switch p1, :pswitch_data_0

    .line 298
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 294
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    .line 308
    .line 317
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_isActivityPaused:Z

    .line 338
    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    invoke-virtual {v0}, Lcom/android/camera/mirror/MirrorThread;->getMessageHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/mirror/MirrorActivity;->restoreBrightness()V

    .line 343
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 381
    iput-boolean v3, p0, Lcom/android/camera/mirror/MirrorActivity;->m_isActivityPaused:Z

    .line 383
    invoke-virtual {p0}, Lcom/android/camera/mirror/MirrorActivity;->isInMirrorMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    :try_start_0
    const-string v1, "MirrorActivity"

    const-string v2, "Initial remote screen orientation"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/htc/wrap/android/view/HtcWrapSurface;->setRemoteScreenOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_PreviewSurface:Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_PreviewSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    if-nez v1, :cond_3

    .line 402
    new-instance v1, Lcom/android/camera/mirror/MirrorThread;

    invoke-direct {v1, p0}, Lcom/android/camera/mirror/MirrorThread;-><init>(Lcom/android/camera/mirror/MirrorActivity;)V

    iput-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    .line 403
    iget-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    invoke-virtual {v1}, Lcom/android/camera/mirror/MirrorThread;->start()V

    .line 409
    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsMaxBrightness:Z

    if-eqz v1, :cond_4

    .line 410
    invoke-direct {p0}, Lcom/android/camera/mirror/MirrorActivity;->setMaxBrightness()V

    .line 414
    :goto_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->DisablePen()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 415
    invoke-static {p0}, Lcom/android/camera/Util;->disableSketcher(Landroid/app/Activity;)V

    .line 416
    :cond_2
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 391
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MirrorActivity"

    const-string v2, "Rotate remote Camera layout may not support"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 406
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_3
    iget-object v1, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    invoke-virtual {v1}, Lcom/android/camera/mirror/MirrorThread;->getMessageHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_1

    .line 412
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/mirror/MirrorActivity;->setMinBrightness()V

    goto :goto_2
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 420
    const-string v1, "MirrorActivity"

    const-string v2, "onStop() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 425
    invoke-virtual {p0}, Lcom/android/camera/mirror/MirrorActivity;->isInMirrorMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    :try_start_0
    const-string v1, "MirrorActivity"

    const-string v2, "Reset remote screen orientation"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapSurface;->resetRemoteScreenOrientation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :cond_0
    :goto_0
    const-string v1, "MirrorActivity"

    const-string v2, "onStop() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 432
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MirrorActivity"

    const-string v2, "Rotate remote Camera layout may not support"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 546
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 518
    iput-boolean v3, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewSurfaceCreated:Z

    .line 519
    iget-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsCameraOpen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_MirrorThread:Lcom/android/camera/mirror/MirrorThread;

    invoke-virtual {v0}, Lcom/android/camera/mirror/MirrorThread;->getMessageHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1, v2, v2, p1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 522
    iput-boolean v3, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewStarted:Z

    .line 524
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/mirror/MirrorActivity;->m_IsPreviewSurfaceCreated:Z

    .line 536
    return-void
.end method
