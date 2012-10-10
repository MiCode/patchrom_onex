.class public Lcom/android/camera/component/IndicatorsUI;
.super Lcom/android/camera/component/UIComponent;
.source "IndicatorsUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/IndicatorsUI$17;
    }
.end annotation


# static fields
.field private static final MSG_HIDE_REMAINING_COUNTER:I = 0x2

.field private static final MSG_SHOW_REMAINING_COUNTER:I = 0x1

.field public static final NAME:Ljava/lang/String; = "Indicators"

.field private static final REMAINING_COUNTER_TIMEOUT:I = 0x7d0


# instance fields
.field private final isRemainingCounterVisible:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_AutoSceneIndicator:Landroid/widget/TextView;

.field private m_AutoSceneIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_IsFirstLaunch:Z

.field private m_IsVideoResolutionChanged:Z

.field private m_MuteIndicator:Landroid/widget/ImageView;

.field private m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_RemainingCounter:Landroid/widget/TextView;

.field private m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_RemainingCounterIconView:Landroid/widget/ImageView;

.field private m_SelfTimerIndicator:Landroid/widget/ImageView;

.field private m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    const-string v0, "Indicators"

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 51
    iput-boolean v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_IsFirstLaunch:Z

    .line 72
    const-string v0, "IndicatorsUI.IsRemainingCounterVisible"

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/IndicatorsUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_IsVideoResolutionChanged:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/camera/component/IndicatorsUI;->updateSelfTimerIndicator()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/component/IndicatorsUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/camera/component/IndicatorsUI;->m_IsVideoResolutionChanged:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/camera/component/IndicatorsUI;->updateMuteIndicator()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/component/IndicatorsUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_IsFirstLaunch:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/camera/component/IndicatorsUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/camera/component/IndicatorsUI;->m_IsFirstLaunch:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/component/IndicatorsUI;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/component/IndicatorsUI;->updateSelfTimerIndicator(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/CameraMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/component/IndicatorsUI;->showRemainingCounter(Lcom/android/camera/CameraMode;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/IndicatorsUI;->rotateIndicator(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/component/IndicatorsUI;->updateRemainingCounterLayout(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/component/IndicatorsUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/component/IndicatorsUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/component/IndicatorsUI;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/IndicatorsUI;->convertToRemainingTimeString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/IndicatorsUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/camera/component/IndicatorsUI;->showIndicators()V

    return-void
.end method

.method private convertToRemainingTimeString(J)Ljava/lang/String;
    .locals 13
    .parameter "totalSeconds"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x3c

    .line 80
    rem-long v4, p1, v8

    .line 81
    .local v4, sec:J
    div-long v6, p1, v8

    rem-long v2, v6, v8

    .line 82
    .local v2, min:J
    const-wide/16 v6, 0xe10

    div-long v0, p1, v6

    .line 83
    .local v0, hour:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    .line 84
    const-string v6, "%02d:%02d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 85
    :goto_0
    return-object v6

    :cond_0
    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private hideRemainingCounter(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/component/IndicatorsUI;->removeMessages(I)V

    .line 134
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/component/IndicatorsUI;->removeMessages(I)V

    .line 135
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/component/IndicatorsUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/IndicatorsUI$1;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private rotateIndicator(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "container"
    .parameter "imageView"
    .parameter "rotation"

    .prologue
    .line 397
    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    new-instance v0, Lcom/android/camera/component/IndicatorsUI$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/component/IndicatorsUI$15;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/camera/component/IndicatorsUI;->showAlphaRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;)V

    goto :goto_0
.end method

.method private setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    .locals 1
    .parameter "container"
    .parameter "imageView"
    .parameter "visible"

    .prologue
    .line 422
    if-eqz p1, :cond_1

    .line 425
    if-eqz p3, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    .line 429
    :cond_0
    invoke-virtual {p0, p1, p3, p3}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    .line 431
    :cond_1
    return-void
.end method

.method private showIndicators()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 439
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 440
    .local v0, cameraActiviry:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    .line 445
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method

.method private showRemainingCounter(Lcom/android/camera/CameraMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/component/IndicatorsUI$16;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/component/IndicatorsUI$16;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/CameraMode;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 493
    return-void
.end method

.method private showRemainingCounter(Lcom/android/camera/CameraMode;Ljava/lang/String;)V
    .locals 9
    .parameter "mode"
    .parameter "text"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 497
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_0

    .line 541
    :goto_0
    return-void

    .line 501
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/camera/component/IndicatorsUI;->removeMessages(I)V

    .line 502
    invoke-virtual {p0, v4}, Lcom/android/camera/component/IndicatorsUI;->removeMessages(I)V

    .line 505
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    .line 506
    .local v8, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v0, v8, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 508
    sget-object v1, Lcom/android/camera/component/IndicatorsUI$17;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, v8, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 519
    :cond_1
    :pswitch_0
    iget-object v0, v8, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p2, v5, v2

    const-wide/16 v6, 0x64

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/IndicatorsUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;J)Z

    goto :goto_0

    .line 526
    :cond_2
    sget-object v0, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne p1, v0, :cond_3

    .line 527
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterIconView:Landroid/widget/ImageView;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 532
    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    if-eqz p2, :cond_4

    .line 534
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    .line 537
    :goto_2
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p0, v4, v0, v1}, Lcom/android/camera/component/IndicatorsUI;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    .line 540
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterIconView:Landroid/widget/ImageView;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 536
    :cond_4
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_2

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "container"
    .parameter "imageView"

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    .line 549
    return-void
.end method

.method private updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V
    .locals 5
    .parameter "container"
    .parameter "imageView"
    .parameter "rotation"

    .prologue
    .line 553
    if-nez p1, :cond_0

    .line 586
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 559
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 562
    .local v2, imageWidth:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 571
    .local v1, imageHeight:I
    :goto_1
    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 572
    .local v3, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p3}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 574
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 575
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 582
    :goto_2
    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    .line 585
    invoke-virtual {p1, p3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 566
    .end local v1           #imageHeight:I
    .end local v2           #imageWidth:I
    .end local v3           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v2, 0x0

    .line 567
    .restart local v2       #imageWidth:I
    const/4 v1, 0x0

    .restart local v1       #imageHeight:I
    goto :goto_1

    .line 579
    .restart local v3       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 580
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method

.method private updateMuteIndicator()V
    .locals 3

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    .line 594
    .local v0, settings:Lcom/android/camera/CameraSettings;
    iget-object v1, v0, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v1, v0, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/android/camera/component/IndicatorsUI;->updateMuteIndicator(ZZ)V

    .line 598
    return-void
.end method

.method private updateMuteIndicator(ZZ)V
    .locals 6
    .parameter "recordWithAudio"
    .parameter "fastFrameRecording"

    .prologue
    .line 602
    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v4, :cond_0

    .line 634
    :goto_0
    return-void

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraType;

    invoke-virtual {v4}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v1

    .line 608
    .local v1, is2ndCamera:Z
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v4, v5, :cond_4

    .line 609
    if-eqz p1, :cond_3

    if-nez v1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 614
    .local v0, iconRedId:I
    :goto_1
    if-nez v0, :cond_5

    .line 615
    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 618
    :goto_2
    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v5}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V

    .line 621
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 622
    .local v3, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 623
    .local v2, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-eq v4, v5, :cond_6

    .line 625
    const v4, 0x7f0b00bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 626
    const v4, 0x7f0b00bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 633
    :goto_3
    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    goto :goto_0

    .line 609
    .end local v0           #iconRedId:I
    .end local v2           #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_3
    const v0, 0x7f020091

    goto :goto_1

    .line 611
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #iconRedId:I
    goto :goto_1

    .line 617
    :cond_5
    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 630
    .restart local v2       #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v3       #res:Landroid/content/res/Resources;
    :cond_6
    const v4, 0x7f0b00bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 631
    const v4, 0x7f0b00be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3
.end method

.method private updateRemainingCounterLayout(Lcom/android/camera/rotate/UIRotation;)V
    .locals 7
    .parameter "rotation"

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xb

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/4 v2, -0x2

    .line 642
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v1, :cond_0

    .line 668
    :goto_0
    return-void

    .line 646
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 647
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v1, Lcom/android/camera/component/IndicatorsUI$17;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 662
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 663
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 666
    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounter:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 650
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 651
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 654
    :pswitch_1
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 655
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 658
    :pswitch_2
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 659
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 647
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSelfTimerIndicator()V
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v0}, Lcom/android/camera/SelfTimerValue;->getIntergerValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/IndicatorsUI;->updateSelfTimerIndicator(I)V

    .line 676
    return-void
.end method

.method private updateSelfTimerIndicator(I)V
    .locals 3
    .parameter "selfTimerInterval"

    .prologue
    .line 680
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v1, :cond_0

    .line 711
    :goto_0
    return-void

    .line 685
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_1

    .line 698
    const/4 v0, 0x0

    .line 706
    .local v0, iconRedId:I
    :goto_1
    if-nez v0, :cond_2

    .line 707
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 710
    :goto_2
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 703
    .end local v0           #iconRedId:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #iconRedId:I
    goto :goto_1

    .line 709
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 95
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 98
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 99
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 107
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 121
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 124
    :goto_0
    return-void

    .line 110
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 116
    .local v0, params:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/android/camera/CameraMode;

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/IndicatorsUI;->showRemainingCounter(Lcom/android/camera/CameraMode;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 152
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 155
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    .line 156
    .local v1, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    iget-object v6, v1, Lcom/android/camera/HTCCamera;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 159
    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 164
    .local v0, baseLayout:Landroid/view/View;
    const v5, 0x7f080088

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 165
    iget-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v5, :cond_0

    .line 167
    iget-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v6, 0x7f080089

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    .line 168
    iget-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v6, p0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v5}, Lcom/android/camera/AutoDetectedScene;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :cond_0
    const v5, 0x7f080083

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 175
    iget-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v6, 0x7f080084

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    .line 178
    const v5, 0x7f080085

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 179
    iget-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v6, 0x7f080087

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounter:Landroid/widget/TextView;

    .line 180
    iget-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v6, 0x7f080086

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterIconView:Landroid/widget/ImageView;

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/camera/component/IndicatorsUI;->updateRemainingCounterLayout(Lcom/android/camera/rotate/UIRotation;)V

    .line 185
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->resolutionSelectedEvent:Lcom/android/camera/event/Event;

    new-instance v6, Lcom/android/camera/component/IndicatorsUI$2;

    invoke-direct {v6, p0}, Lcom/android/camera/component/IndicatorsUI$2;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 195
    new-instance v2, Lcom/android/camera/component/IndicatorsUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/IndicatorsUI$3;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    .line 204
    .local v2, modeChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    new-instance v6, Lcom/android/camera/component/IndicatorsUI$4;

    invoke-direct {v6, p0}, Lcom/android/camera/component/IndicatorsUI$4;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 213
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v5, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 214
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v5, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 215
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    new-instance v6, Lcom/android/camera/component/IndicatorsUI$5;

    invoke-direct {v6, p0}, Lcom/android/camera/component/IndicatorsUI$5;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 237
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    new-instance v6, Lcom/android/camera/component/IndicatorsUI$6;

    invoke-direct {v6, p0}, Lcom/android/camera/component/IndicatorsUI$6;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 257
    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/IndicatorsUI$7;

    iget-object v7, v1, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/IndicatorsUI$7;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/IndicatorsUI$8;

    iget-object v7, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/IndicatorsUI$8;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v6, Lcom/android/camera/component/IndicatorsUI$9;

    invoke-direct {v6, p0}, Lcom/android/camera/component/IndicatorsUI$9;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 297
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    new-instance v6, Lcom/android/camera/component/IndicatorsUI$10;

    invoke-direct {v6, p0}, Lcom/android/camera/component/IndicatorsUI$10;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 304
    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/IndicatorsUI$11;

    iget-object v7, v1, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/IndicatorsUI$11;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v5, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/camera/component/IndicatorsUI$12;

    iget-object v7, v1, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v8, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/camera/component/IndicatorsUI$12;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    new-instance v4, Lcom/android/camera/component/IndicatorsUI$13;

    invoke-direct {v4, p0}, Lcom/android/camera/component/IndicatorsUI$13;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    .line 358
    .local v4, settingsChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    .line 359
    .local v3, settings:Lcom/android/camera/CameraSettings;
    iget-object v5, v3, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v5, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 360
    iget-object v5, v3, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    invoke-virtual {v5, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 361
    iget-object v5, v1, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v6, Lcom/android/camera/component/IndicatorsUI$14;

    invoke-direct {v6, p0}, Lcom/android/camera/component/IndicatorsUI$14;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 390
    return-void
.end method
