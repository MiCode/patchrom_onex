.class public final Lcom/android/camera/component/CaptureBar;
.super Lcom/android/camera/component/UIComponent;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/CaptureBar$26;
    }
.end annotation


# static fields
.field private static final CAPTURE_BUTTON_TYPE_HW:I = 0x2

.field private static final CAPTURE_BUTTON_TYPE_SW:I = 0x1

.field private static final CAPTURE_BUTTON_TYPE_UNKNOWN:I = 0x0

.field private static final MSG_CHECK_INITIAL_ROTATION:I = 0x2712

.field private static final MSG_RELEASE_PRESSED_BUTTON:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Capture Bar"

.field private static final SLOW_MOTION_RATIO:F = 4.0f


# instance fields
.field private final isPhotoButtonPressed:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isVideoButtonClicked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isVideoButtonPressed:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_ActiveCaptureButtonType:I

.field private m_CaptureBar:Landroid/view/View;

.field private m_IsFakeRotation:Z

.field private m_IsFakeRotationTimeout:Z

.field private m_IsPopupOutsideTouched:Z

.field private m_IsTakingPicture:Z

.field private m_PhotoCaptureButton:Landroid/widget/ImageView;

.field private m_PopupOutsideTouchedView:Landroid/view/View;

.field private final m_RecordingButtonIconsLandscape:[Landroid/graphics/drawable/Drawable;

.field private final m_RecordingButtonIconsPortrait:[Landroid/graphics/drawable/Drawable;

.field private m_RecordingHourTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_RecordingHourTextView:Landroid/widget/TextView;

.field private m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_RecordingTimerEmptyArea:Landroid/view/View;

.field private m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

.field private m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

.field private m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_SelfTimerIcon:Landroid/widget/ImageView;

.field private m_SelfTimerIndicator:Landroid/widget/ImageView;

.field private m_SelfTimerIndicatorContainer:Landroid/view/View;

.field private m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

.field private m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

.field private m_SlowMotionIcon:Lcom/android/camera/rotate/RotateImageView;

.field private m_SlowMotionIndicator:Landroid/view/View;

.field private m_SlowMotionIndicatorContainer:Landroid/view/View;

.field private m_VideoCaptureButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 5
    .parameter "cameraActivity"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 109
    const-string v0, "Capture Bar"

    invoke-direct {p0, v0, v4, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 76
    iput v2, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 82
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIconsLandscape:[Landroid/graphics/drawable/Drawable;

    .line 83
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIconsPortrait:[Landroid/graphics/drawable/Drawable;

    .line 112
    const-string v0, "CaptureBar.IsPhotoButtonPressed"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v3, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    .line 113
    const-string v0, "CaptureBar.IsVideoButtonClicked"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v3, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;

    .line 114
    const-string v0, "CaptureBar.IsVideoButtonPressed"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v3, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    .line 117
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->previewSurfaceCreatedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/component/CaptureBar$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CaptureBar$1;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/component/CaptureBar$2;

    iget-object v2, p1, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/component/CaptureBar$2;-><init>(Lcom/android/camera/component/CaptureBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->onCameraThreadRunning()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/CaptureBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/CaptureBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onCameraButtonReleased(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/component/CaptureBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onCamcorderButtonReleased(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->reset()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/component/CaptureBar;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/CaptureBar;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/CaptureBar;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onPopMenuOutsideTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->showFakeUIRotation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/component/CaptureBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/component/CaptureBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->hideCaptureBar()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/component/CaptureBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->isSlowMotionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/component/CaptureBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->showSlowMotionIndicator(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/component/CaptureBar;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIconsPortrait:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/component/CaptureBar;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIconsLandscape:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/component/CaptureBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->showSlowMotionIcon(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/component/CaptureBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/component/CaptureBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/component/CaptureBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->showRecordingTimer(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/component/CaptureBar;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/CaptureBar;->getRecordingTimeString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/component/CaptureBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/component/CaptureBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsFakeRotation:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/camera/component/CaptureBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/camera/component/CaptureBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/camera/component/CaptureBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PopupOutsideTouchedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/component/CaptureBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->updateButtonEnableStates()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/component/CaptureBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->showSelfTimer(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/component/CaptureBar;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/CaptureBar;->showSelfTimerIndicator(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/CaptureBar;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/camera/component/CaptureBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->hideFakeUIRotation()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/component/CaptureBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsFakeRotationTimeout:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/CaptureBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/component/CaptureBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/CaptureBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onCameraButtonPressed(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/CaptureBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onCamcorderButtonPressed(I)V

    return-void
.end method

.method private getRecordingTimeString(J)Ljava/lang/String;
    .locals 9
    .parameter "seconds"

    .prologue
    const-wide/16 v7, 0x64

    const/4 v6, 0x1

    const-wide/16 v4, 0x3c

    .line 195
    div-long v2, p1, v4

    rem-long v0, v2, v4

    .line 196
    .local v0, minutes:J
    rem-long/2addr p1, v4

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-long v3, v0, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-long v3, p1, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 5
    .parameter "mv"

    .prologue
    .line 551
    const/4 v1, 0x0

    .line 553
    .local v1, view:Landroid/view/View;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 555
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 556
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "getTouchedView - m_PhotoCaptureButton"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    move-object v2, v1

    .line 567
    .end local v1           #view:Landroid/view/View;
    .local v2, view:Landroid/widget/ImageView;
    :goto_0
    return-object v2

    .line 561
    .end local v2           #view:Landroid/widget/ImageView;
    .restart local v1       #view:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 562
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    .line 563
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "getTouchedView - m_VideoCaptureButton"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 564
    .restart local v2       #view:Landroid/widget/ImageView;
    goto :goto_0

    .line 566
    .end local v2           #view:Landroid/widget/ImageView;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "getTouchedView - null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 567
    .restart local v2       #view:Landroid/widget/ImageView;
    goto :goto_0
.end method

.method private hideCaptureBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    .line 206
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 207
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method private hideFakeUIRotation()V
    .locals 2

    .prologue
    .line 215
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/android/camera/component/CaptureBar;->removeMessages(I)V

    .line 216
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 217
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 218
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 219
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsFakeRotation:Z

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsFakeRotationTimeout:Z

    .line 222
    return-void
.end method

.method private isSlowMotionMode()Z
    .locals 2

    .prologue
    .line 362
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCamcorderButtonPressed(I)V
    .locals 6
    .parameter "buttonType"

    .prologue
    const/4 v5, 0x1

    .line 396
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonPressed("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 399
    iget v1, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eqz v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCamcorderButtonPressed() - Current active capture button type is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 408
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonPressed() - Camcorder button is already pressed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_2
    iput p1, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 414
    if-ne p1, v5, :cond_3

    .line 416
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 417
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    const-string v2, "camera_video_btn_pressed"

    const v3, 0x7f02007c

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/component/CaptureBar;->getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 429
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonPressed() - Activate camera"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/4 v1, 0x0

    invoke-direct {p0, v1, v5}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 433
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->activate()V

    goto :goto_0

    .line 420
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 421
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    const v2, 0x7f02006b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 423
    :cond_5
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    const v2, 0x7f02006c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private onCamcorderButtonReleased(I)V
    .locals 6
    .parameter "buttonType"

    .prologue
    const/4 v5, 0x1

    .line 442
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonReleased("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 445
    iget v1, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eq v1, p1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCamcorderButtonReleased() - Current active capture button type is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonReleased() - Camcorder button is not pressed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_1
    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/android/camera/component/CaptureBar;->removeMessages(I)V

    .line 460
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 463
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 464
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->prepareRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 465
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    .line 473
    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v5}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    goto :goto_0

    .line 468
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonReleased() - Cannot start or stop recording"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private onCameraButtonPressed(I)V
    .locals 6
    .parameter "buttonType"

    .prologue
    const/4 v5, 0x1

    .line 481
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCameraButtonPressed("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 484
    iget v1, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eqz v1, :cond_1

    .line 486
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraButtonPressed() - Current active capture button type is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 493
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCameraButtonPressed() - Camera button is already pressed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_2
    iput p1, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 499
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 502
    if-ne p1, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 503
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    const-string v2, "camera_shutter_btn_pressed"

    const v3, 0x7f020070

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/component/CaptureBar;->getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 507
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 509
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCameraButtonPressed() - Activate camera"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const/4 v1, 0x0

    invoke-direct {p0, v1, v5}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 511
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->activate()V

    goto :goto_0

    .line 516
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->takePicture()Z

    move-result v1

    if-nez v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCameraButtonPressed() - Cannot take picture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCameraButtonReleased(I)V
    .locals 4
    .parameter "buttonType"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onCameraButtonReleased("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 528
    iget v0, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eq v0, p1, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraButtonReleased() - Current active capture button type is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onCameraButtonReleased() - Camera button is not pressed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :cond_1
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/component/CaptureBar;->removeMessages(I)V

    .line 543
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private onCameraThreadRunning()V
    .locals 4

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 373
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, v0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/camera/component/CaptureBar$4;

    invoke-direct {v3, p0}, Lcom/android/camera/component/CaptureBar$4;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/PropertyUtility;->addChangedCallbackAsync(Lcom/android/camera/property/Property;Landroid/os/Handler;Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 389
    return-void
.end method

.method private onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyEvent"

    .prologue
    const/4 v0, 0x0

    .line 628
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 643
    :cond_0
    :goto_0
    return v0

    .line 633
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 635
    iget-boolean v1, p0, Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/component/CaptureBar;->onCameraButtonPressed(I)V

    .line 640
    const/4 v0, 0x1

    goto :goto_0

    .line 628
    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method private onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyEvent"

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 651
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 664
    :cond_0
    :goto_0
    return v0

    .line 656
    :pswitch_0
    iget v1, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-ne v1, v2, :cond_0

    .line 660
    invoke-direct {p0, v2}, Lcom/android/camera/component/CaptureBar;->onCameraButtonReleased(I)V

    .line 661
    const/4 v0, 0x1

    goto :goto_0

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method private onPopMenuOutsideTouched(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "mv"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 577
    iput-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    .line 580
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->getTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_PopupOutsideTouchedView:Landroid/view/View;

    .line 582
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_PopupOutsideTouchedView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 620
    :goto_0
    return v0

    .line 586
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 620
    goto :goto_0

    .line 591
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 592
    goto :goto_0

    .line 602
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    goto :goto_1

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 672
    iput-boolean v2, p0, Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z

    .line 673
    iput v2, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 674
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 675
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 676
    return-void
.end method

.method private resetCaptureButton(Landroid/view/View;Z)V
    .locals 5
    .parameter "button"
    .parameter "resetPressState"

    .prologue
    const/4 v4, 0x0

    .line 683
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "resetCaptureButton("

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 686
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 688
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 690
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPausing:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 693
    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 704
    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 706
    iput v4, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 707
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 708
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 711
    :cond_5
    iput-boolean v4, p0, Lcom/android/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    .line 712
    return-void

    .line 696
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 697
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 699
    :cond_7
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setupEventHandlers()V
    .locals 3

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 720
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CaptureBar$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$5;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 728
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CaptureBar$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$6;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 737
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->keyUpEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CaptureBar$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$7;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 746
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->popupOutsideTouchEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CaptureBar$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$8;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 755
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CaptureBar$9;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$9;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 763
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->selfTimerCountDownEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CaptureBar$10;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$10;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 776
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 784
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 787
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/CaptureBar$11;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/UIState;->Opening:Lcom/android/camera/UIState;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/CaptureBar$11;-><init>(Lcom/android/camera/component/CaptureBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$12;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$12;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 807
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$13;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$13;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 817
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$14;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$14;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 898
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/CaptureBar$15;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/CaptureBar$15;-><init>(Lcom/android/camera/component/CaptureBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/CaptureBar$16;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/CaptureBar$16;-><init>(Lcom/android/camera/component/CaptureBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/CaptureBar$17;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/CaptureBar$17;-><init>(Lcom/android/camera/component/CaptureBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$18;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$18;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 987
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$19;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$19;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 997
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$20;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$20;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1010
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$21;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$21;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1038
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$22;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$22;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1078
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$23;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$23;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1094
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$24;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$24;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1138
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isMirrorMode:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$25;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$25;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1148
    return-void
.end method

.method private showFakeUIRotation()V
    .locals 2

    .prologue
    .line 1155
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/android/camera/component/CaptureBar;->removeMessages(I)V

    .line 1156
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1157
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1158
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1159
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1160
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1161
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1162
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1163
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsFakeRotation:Z

    .line 1165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsFakeRotationTimeout:Z

    .line 1166
    return-void
.end method

.method private showRecordingTimer(Z)V
    .locals 10
    .parameter "isVisible"

    .prologue
    const v9, 0x7f080037

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1174
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v3, :cond_0

    .line 1232
    :goto_0
    return-void

    .line 1178
    :cond_0
    if-nez p1, :cond_1

    .line 1180
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v3, v5, v5}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    .line 1181
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v3, v5, v5}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1186
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v2

    .line 1187
    .local v2, rotation:Lcom/android/camera/rotate/UIRotation;
    invoke-virtual {v2}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1189
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v9}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v4, 0x7f080038

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1192
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1193
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerEmptyArea:Landroid/view/View;

    const v4, 0x7f0b0023

    invoke-virtual {p0, v4}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 1209
    :goto_1
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1212
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1213
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1215
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1216
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1217
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextView:Landroid/widget/TextView;

    const v4, 0x7f0b0025

    invoke-virtual {p0, v4}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1218
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1227
    :goto_2
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1228
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1231
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v3, v8, v8}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1197
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v4, 0x7f080038

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1198
    .local v1, recTextView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v9}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1199
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1200
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1201
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1202
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerEmptyArea:Landroid/view/View;

    const v4, 0x7f0b0024

    invoke-virtual {p0, v4}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 1204
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->isSlowMotionMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1205
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 1207
    :cond_3
    const v3, 0x7f0b0022

    invoke-virtual {p0, v3}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v3

    invoke-virtual {v1, v5, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 1222
    .end local v1           #recTextView:Landroid/widget/TextView;
    .restart local v0       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1223
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1224
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextView:Landroid/widget/TextView;

    const v4, 0x7f0b0026

    invoke-virtual {p0, v4}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1225
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextView:Landroid/widget/TextView;

    const v4, 0x7f0b0029

    invoke-virtual {p0, v4}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v4

    invoke-virtual {v3, v5, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2
.end method

.method private showSelfTimer(Z)V
    .locals 8
    .parameter "isVisible"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 1240
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_0

    .line 1286
    :goto_0
    return-void

    .line 1244
    :cond_0
    if-nez p1, :cond_1

    .line 1246
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    const v3, 0x7f020071

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1247
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1252
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1253
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    .line 1254
    .local v1, rotation:Lcom/android/camera/rotate/UIRotation;
    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1256
    const v2, 0x7f0b002a

    invoke-virtual {p0, v2}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1257
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1258
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1259
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1260
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1268
    :goto_1
    sget-object v3, Lcom/android/camera/component/CaptureBar$26;->$SwitchMap$com$android$camera$SelfTimerValue:[I

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v2}, Lcom/android/camera/SelfTimerValue;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 1277
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1280
    :goto_2
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1281
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1284
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1285
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v2, v5, v5}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1264
    :cond_2
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1265
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1266
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1271
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    const v3, 0x7f020051

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1274
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    const v3, 0x7f02004f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showSelfTimerIndicator(ZZ)V
    .locals 5
    .parameter "updateIcon"
    .parameter "isVisible"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1294
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicatorContainer:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1322
    :goto_0
    return-void

    .line 1298
    :cond_0
    if-nez p2, :cond_1

    .line 1300
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1305
    :cond_1
    if-eqz p1, :cond_2

    .line 1307
    sget-object v2, Lcom/android/camera/component/CaptureBar$26;->$SwitchMap$com$android$camera$SelfTimerValue:[I

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v1}, Lcom/android/camera/SelfTimerValue;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1319
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    .line 1320
    .local v0, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0, v0, v4}, Lcom/android/camera/component/CaptureBar;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;I)V

    .line 1321
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1310
    .end local v0           #rotation:Lcom/android/camera/rotate/UIRotation;
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1313
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    const v2, 0x7f02004e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showSlowMotionIcon(Z)V
    .locals 3
    .parameter "isVisible"

    .prologue
    .line 1330
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIcon:Lcom/android/camera/rotate/RotateImageView;

    if-nez v1, :cond_0

    .line 1350
    :goto_0
    return-void

    .line 1334
    :cond_0
    if-nez p1, :cond_1

    .line 1336
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIcon:Lcom/android/camera/rotate/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 1341
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    .line 1348
    .local v0, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIcon:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1349
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIcon:Lcom/android/camera/rotate/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSlowMotionIndicator(Z)V
    .locals 4
    .parameter "isVisible"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1358
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicatorContainer:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1374
    :goto_0
    return-void

    .line 1362
    :cond_0
    if-nez p1, :cond_1

    .line 1364
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1369
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    .line 1370
    .local v0, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;

    invoke-virtual {p0, v1, v0, v0, v3}, Lcom/android/camera/component/CaptureBar;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;I)V

    .line 1373
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private updateButtonEnableStates()V
    .locals 9

    .prologue
    const/16 v5, 0xff

    const/16 v6, 0x80

    .line 1382
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1383
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    const/4 v1, 0x1

    .line 1384
    .local v1, isPhotoButtonEnabled:Z
    sget-object v7, Lcom/android/camera/component/CaptureBar$26;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v4}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v4

    aget v4, v7, v4

    packed-switch v4, :pswitch_data_0

    .line 1416
    const/4 v1, 0x0

    .line 1421
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1422
    iget-object v7, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1425
    const/4 v2, 0x1

    .line 1426
    .local v2, isVideoButtonEnabled:Z
    sget-object v7, Lcom/android/camera/component/CaptureBar$26;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/RecordingState;

    invoke-virtual {v4}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v4

    aget v4, v7, v4

    packed-switch v4, :pswitch_data_1

    .line 1450
    :pswitch_1
    const/4 v2, 0x0

    .line 1455
    :cond_1
    :goto_2
    :pswitch_2
    iget-object v4, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1456
    iget-object v4, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1457
    return-void

    .line 1389
    .end local v2           #isVideoButtonEnabled:Z
    :pswitch_3
    sget-object v7, Lcom/android/camera/component/CaptureBar$26;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/RecordingState;

    invoke-virtual {v4}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v4

    aget v4, v7, v4

    packed-switch v4, :pswitch_data_2

    .line 1406
    :pswitch_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1394
    :pswitch_5
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v3

    .line 1395
    .local v3, videoResolution:Lcom/android/camera/Resolution;
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v4

    sget-object v7, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-ne v4, v7, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportVideoSnapshot()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v4, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v4, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1402
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .end local v3           #videoResolution:Lcom/android/camera/Resolution;
    :cond_3
    move v4, v6

    .line 1422
    goto :goto_1

    .line 1429
    .restart local v2       #isVideoButtonEnabled:Z
    :pswitch_6
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v4, v7}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1430
    const/4 v2, 0x0

    goto :goto_2

    .line 1437
    :pswitch_7
    sget-object v7, Lcom/android/camera/component/CaptureBar$26;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v4}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v4

    aget v4, v7, v4

    packed-switch v4, :pswitch_data_3

    .line 1444
    const/4 v2, 0x0

    .line 1445
    goto/16 :goto_2

    .line 1440
    :pswitch_8
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1441
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_4
    move v5, v6

    .line 1456
    goto/16 :goto_3

    .line 1384
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1426
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 1389
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1437
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 184
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 187
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 188
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 172
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 175
    :goto_0
    return-void

    .line 166
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/camera/component/CaptureBar;->onCameraButtonReleased(I)V

    .line 167
    invoke-direct {p0, v1}, Lcom/android/camera/component/CaptureBar;->onCamcorderButtonReleased(I)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 12

    .prologue
    const v11, 0x7f08003c

    const v10, 0x7f080031

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 231
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 234
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 235
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    iget-object v7, v0, Lcom/android/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v6, v7}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 236
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    iget-object v7, v0, Lcom/android/camera/HTCCamera;->isVideoCaptureButtonPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v6, v7}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 239
    const v6, 0x7f08002e

    invoke-virtual {v0, v6}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    .line 240
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f08003d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    .line 241
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080032

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    .line 242
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080034

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicatorContainer:Landroid/view/View;

    .line 243
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicatorContainer:Landroid/view/View;

    const v7, 0x7f080035

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;

    .line 245
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080036

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 246
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f08003a

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    .line 247
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f08003b

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    .line 248
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f080039

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerEmptyArea:Landroid/view/View;

    .line 249
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080044

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 250
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f080045

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextView:Landroid/widget/TextView;

    .line 251
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f08003e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicatorContainer:Landroid/view/View;

    .line 252
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicatorContainer:Landroid/view/View;

    const v7, 0x7f08003f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    .line 253
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080040

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 254
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f080041

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    .line 255
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f080042

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

    .line 256
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f080043

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

    .line 259
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 260
    .local v3, res:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIconsLandscape:[Landroid/graphics/drawable/Drawable;

    const v7, 0x7f02006d

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v8

    .line 261
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIconsLandscape:[Landroid/graphics/drawable/Drawable;

    const v7, 0x7f02006b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v9

    .line 262
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIconsPortrait:[Landroid/graphics/drawable/Drawable;

    const v7, 0x7f02006e

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v8

    .line 263
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIconsPortrait:[Landroid/graphics/drawable/Drawable;

    const v7, 0x7f02006c

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v9

    .line 266
    const/4 v6, 0x0

    invoke-direct {p0, v6, v8}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 269
    new-instance v2, Lcom/android/camera/component/CaptureBar$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$3;-><init>(Lcom/android/camera/component/CaptureBar;)V

    .line 320
    .local v2, listener:Landroid/view/View$OnTouchListener;
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 321
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 324
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v4

    .line 325
    .local v4, startMode:Lcom/android/camera/CameraStartMode;
    invoke-virtual {v4}, Lcom/android/camera/CameraStartMode;->supportsAllCameraModes()Z

    move-result v6

    if-nez v6, :cond_0

    .line 328
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080030

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f02006f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    iget-boolean v6, v4, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v6, :cond_1

    .line 334
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 335
    .local v5, visibleView:Landroid/view/View;
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 342
    .local v1, hiddenView:Landroid/view/View;
    :goto_0
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 343
    const v6, 0x7f0b0017

    invoke-virtual {p0, v6}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 347
    .end local v1           #hiddenView:Landroid/view/View;
    .end local v5           #visibleView:Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->setupEventHandlers()V

    .line 348
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->setupPropertyChangedCallbacks()V

    .line 351
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->updateButtonEnableStates()V

    .line 354
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->showFakeUIRotation()V

    .line 355
    return-void

    .line 339
    :cond_1
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 340
    .restart local v5       #visibleView:Landroid/view/View;
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .restart local v1       #hiddenView:Landroid/view/View;
    goto :goto_0
.end method
