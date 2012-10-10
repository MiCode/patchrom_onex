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
.field private final isFocusKeyPressed:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 109
    const-string v0, "Capture Bar"

    invoke-direct {p0, v0, v3, p1, v4}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 76
    iput v4, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 82
    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIconsLandscape:[Landroid/graphics/drawable/Drawable;

    .line 83
    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIconsPortrait:[Landroid/graphics/drawable/Drawable;

    .line 112
    const-string v0, "CaptureBar.IsFocusKeyPressed"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/CaptureBar;->isFocusKeyPressed:Lcom/android/camera/property/Property;

    .line 113
    const-string v0, "CaptureBar.IsPhotoButtonPressed"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    .line 114
    const-string v0, "CaptureBar.IsVideoButtonClicked"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;

    .line 115
    const-string v0, "CaptureBar.IsVideoButtonPressed"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    .line 118
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->previewSurfaceCreatedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/component/CaptureBar$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CaptureBar$1;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/component/CaptureBar$2;

    iget-object v2, p1, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/component/CaptureBar$2;-><init>(Lcom/android/camera/component/CaptureBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const v0, 0x7f08002e

    invoke-virtual {p1, v0}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    .line 144
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraStartMode;->supportsAllCameraModes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v1, 0x7f08003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    .line 147
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    .line 148
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v0, v4}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 152
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->onCameraThreadRunning()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/CaptureBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/CaptureBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onCameraButtonReleased(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/component/CaptureBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onCamcorderButtonReleased(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->unlockAfAecAwb()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isFocusKeyPressed:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->reset()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/component/CaptureBar;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/CaptureBar;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/component/CaptureBar;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onPopMenuOutsideTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->showFakeUIRotation()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/component/CaptureBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/component/CaptureBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->hideCaptureBar()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/component/CaptureBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->isSlowMotionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/component/CaptureBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->showSlowMotionIndicator(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/component/CaptureBar;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIconsPortrait:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/component/CaptureBar;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIconsLandscape:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/component/CaptureBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->showSlowMotionIcon(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/component/CaptureBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/component/CaptureBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/component/CaptureBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->showRecordingTimer(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/component/CaptureBar;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/CaptureBar;->getRecordingTimeString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/component/CaptureBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/component/CaptureBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsFakeRotation:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/camera/component/CaptureBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/camera/component/CaptureBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/camera/component/CaptureBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PopupOutsideTouchedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/component/CaptureBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->updateButtonEnableStates()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/CaptureBar;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/camera/component/CaptureBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->showSelfTimer(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/camera/component/CaptureBar;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/CaptureBar;->showSelfTimerIndicator(ZZ)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/component/CaptureBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->hideFakeUIRotation()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/camera/component/CaptureBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsFakeRotationTimeout:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/CaptureBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/component/CaptureBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/CaptureBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->onCameraButtonPressed(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/CaptureBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
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

    .line 207
    div-long v2, p1, v4

    rem-long v0, v2, v4

    .line 208
    .local v0, minutes:J
    rem-long/2addr p1, v4

    .line 209
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
    .line 575
    const/4 v1, 0x0

    .line 577
    .local v1, view:Landroid/view/View;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 579
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

    .line 580
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "getTouchedView - m_PhotoCaptureButton"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    move-object v2, v1

    .line 591
    .end local v1           #view:Landroid/view/View;
    .local v2, view:Landroid/widget/ImageView;
    :goto_0
    return-object v2

    .line 585
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

    .line 586
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    .line 587
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "getTouchedView - m_VideoCaptureButton"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 588
    .restart local v2       #view:Landroid/widget/ImageView;
    goto :goto_0

    .line 590
    .end local v2           #view:Landroid/widget/ImageView;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "getTouchedView - null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 591
    .restart local v2       #view:Landroid/widget/ImageView;
    goto :goto_0
.end method

.method private hideCaptureBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    .line 218
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 219
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method private hideFakeUIRotation()V
    .locals 2

    .prologue
    .line 227
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/android/camera/component/CaptureBar;->removeMessages(I)V

    .line 228
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 229
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 230
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 231
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsFakeRotation:Z

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsFakeRotationTimeout:Z

    .line 234
    return-void
.end method

.method private isSlowMotionMode()Z
    .locals 2

    .prologue
    .line 378
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

    .line 420
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonPressed("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 423
    iget v1, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eqz v1, :cond_1

    .line 425
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

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 432
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonPressed() - Camcorder button is already pressed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_2
    iput p1, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 438
    if-ne p1, v5, :cond_3

    .line 440
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 441
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    const-string v2, "camera_video_btn_pressed"

    const v3, 0x7f02007c

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/component/CaptureBar;->getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 453
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonPressed() - Activate camera"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/4 v1, 0x0

    invoke-direct {p0, v1, v5}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 457
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->activate()V

    goto :goto_0

    .line 444
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 445
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    const v2, 0x7f02006b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 447
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

    .line 466
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonReleased("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 469
    iget v1, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eq v1, p1, :cond_0

    .line 471
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

    .line 498
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 476
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonReleased() - Camcorder button is not pressed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_1
    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/android/camera/component/CaptureBar;->removeMessages(I)V

    .line 484
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 488
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->prepareRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 489
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    .line 497
    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v5}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    goto :goto_0

    .line 492
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCamcorderButtonReleased() - Cannot start or stop recording"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
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

    .line 505
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCameraButtonPressed("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 508
    iget v1, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eqz v1, :cond_1

    .line 510
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

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 517
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCameraButtonPressed() - Camera button is already pressed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 520
    :cond_2
    iput p1, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 523
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 526
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

    .line 527
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    const-string v2, "camera_shutter_btn_pressed"

    const v3, 0x7f020070

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/component/CaptureBar;->getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 531
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 533
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCameraButtonPressed() - Activate camera"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const/4 v1, 0x0

    invoke-direct {p0, v1, v5}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 535
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->activate()V

    goto :goto_0

    .line 540
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->takePicture()Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onCameraButtonPressed() - Cannot take picture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCameraButtonReleased(I)V
    .locals 4
    .parameter "buttonType"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onCameraButtonReleased("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 552
    iget v0, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-eq v0, p1, :cond_0

    .line 554
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

    .line 568
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onCameraButtonReleased() - Camera button is not pressed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_1
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/component/CaptureBar;->removeMessages(I)V

    .line 567
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private onCameraThreadRunning()V
    .locals 2

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 389
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    new-instance v1, Lcom/android/camera/component/CaptureBar$4;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/component/CaptureBar$4;-><init>(Lcom/android/camera/component/CaptureBar;Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 413
    return-void
.end method

.method private onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyEvent"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 652
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 700
    :cond_0
    :goto_0
    return v1

    .line 657
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 658
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 660
    iget-boolean v3, p0, Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 662
    :cond_1
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/TakingPictureState;->Reviewing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/RecordingState;->Reviewing:Lcom/android/camera/RecordingState;

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 672
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/camera/component/CaptureBar;->onCameraButtonPressed(I)V

    move v1, v2

    .line 673
    goto :goto_0

    .line 678
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 681
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 685
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 686
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->setAutoFocusLock(Z)V

    .line 691
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->setAecAwbLock(Z)V

    .line 695
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->isFocusKeyPressed:Lcom/android/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    :cond_3
    move v1, v2

    .line 697
    goto :goto_0

    .line 688
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->startFocusFromLongPressKey()V

    goto :goto_1

    .line 652
    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyEvent"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 708
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 740
    :cond_0
    :goto_0
    return v1

    .line 713
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 714
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget v3, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    if-ne v3, v5, :cond_0

    .line 716
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/TakingPictureState;->Reviewing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/RecordingState;->Reviewing:Lcom/android/camera/RecordingState;

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 726
    invoke-direct {p0, v5}, Lcom/android/camera/component/CaptureBar;->onCameraButtonReleased(I)V

    move v1, v2

    .line 727
    goto :goto_0

    .line 733
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    :sswitch_1
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->isFocusKeyPressed:Lcom/android/camera/property/Property;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 736
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->unlockAfAecAwb()V

    move v1, v2

    .line 737
    goto :goto_0

    .line 708
    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private onPopMenuOutsideTouched(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "mv"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 601
    iput-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    .line 604
    invoke-direct {p0, p1}, Lcom/android/camera/component/CaptureBar;->getTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_PopupOutsideTouchedView:Landroid/view/View;

    .line 606
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_PopupOutsideTouchedView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 644
    :goto_0
    return v0

    .line 610
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 644
    goto :goto_0

    .line 615
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 616
    goto :goto_0

    .line 626
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    goto :goto_1

    .line 610
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

    .line 748
    iput-boolean v2, p0, Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z

    .line 749
    iput v2, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 750
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 751
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 752
    return-void
.end method

.method private resetCaptureButton(Landroid/view/View;Z)V
    .locals 5
    .parameter "button"
    .parameter "resetPressState"

    .prologue
    const/4 v4, 0x0

    .line 759
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "resetCaptureButton("

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 762
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

    .line 763
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 764
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 766
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

    .line 769
    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 780
    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 782
    iput v4, p0, Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I

    .line 783
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 784
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 787
    :cond_5
    iput-boolean v4, p0, Lcom/android/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z

    .line 788
    return-void

    .line 772
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 773
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 775
    :cond_7
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setupEventHandlers()V
    .locals 3

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 796
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CaptureBar$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$5;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 809
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CaptureBar$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$6;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 818
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->keyUpEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CaptureBar$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$7;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 827
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->popupOutsideTouchEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CaptureBar$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$8;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 836
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CaptureBar$9;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$9;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 844
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->selfTimerCountDownEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/CaptureBar$10;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$10;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 857
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 865
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 868
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/CaptureBar$11;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/UIState;->Opening:Lcom/android/camera/UIState;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/CaptureBar$11;-><init>(Lcom/android/camera/component/CaptureBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$12;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$12;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 893
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$13;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$13;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 908
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$14;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$14;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 989
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/CaptureBar$15;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/CaptureBar$15;-><init>(Lcom/android/camera/component/CaptureBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/CaptureBar$16;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/CaptureBar$16;-><init>(Lcom/android/camera/component/CaptureBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/CaptureBar$17;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/CaptureBar$17;-><init>(Lcom/android/camera/component/CaptureBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$18;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$18;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1082
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$19;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$19;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1092
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$20;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$20;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1105
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$21;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$21;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1133
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$22;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$22;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1173
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$23;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$23;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1189
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$24;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$24;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1233
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isMirrorMode:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/CaptureBar$25;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$25;-><init>(Lcom/android/camera/component/CaptureBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1243
    return-void
.end method

.method private showFakeUIRotation()V
    .locals 2

    .prologue
    .line 1250
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/android/camera/component/CaptureBar;->removeMessages(I)V

    .line 1251
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1252
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1253
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1254
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1255
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1256
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1257
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1258
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/camera/rotate/RotateImageView;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsFakeRotation:Z

    .line 1260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/CaptureBar;->m_IsFakeRotationTimeout:Z

    .line 1261
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

    .line 1269
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v3, :cond_0

    .line 1335
    :goto_0
    return-void

    .line 1273
    :cond_0
    if-nez p1, :cond_1

    .line 1275
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v3, v5, v5}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    .line 1276
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v3, v5, v5}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1281
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v2

    .line 1282
    .local v2, rotation:Lcom/android/camera/rotate/UIRotation;
    invoke-virtual {v2}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1284
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v9}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1285
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v4, 0x7f080038

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1286
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1287
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1288
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerEmptyArea:Landroid/view/View;

    const v4, 0x7f0b0023

    invoke-virtual {p0, v4}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 1304
    :goto_1
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1307
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1308
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1310
    sget-object v3, Lcom/android/camera/rotate/UIRotation;->InversePortrait:Lcom/android/camera/rotate/UIRotation;

    if-ne v2, v3, :cond_4

    .line 1311
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1315
    :goto_2
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1316
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextView:Landroid/widget/TextView;

    const v4, 0x7f0b0025

    invoke-virtual {p0, v4}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1317
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1330
    :goto_3
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1331
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1334
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v3, v8, v8}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto/16 :goto_0

    .line 1292
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v4, 0x7f080038

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1293
    .local v1, recTextView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v9}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1294
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1295
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1296
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1297
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerEmptyArea:Landroid/view/View;

    const v4, 0x7f0b0024

    invoke-virtual {p0, v4}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 1299
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->isSlowMotionMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1300
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 1302
    :cond_3
    const v3, 0x7f0b0022

    invoke-virtual {p0, v3}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v3

    invoke-virtual {v1, v5, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1313
    .end local v1           #recTextView:Landroid/widget/TextView;
    .restart local v0       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 1321
    :cond_5
    sget-object v3, Lcom/android/camera/rotate/UIRotation;->InverseLandscape:Lcom/android/camera/rotate/UIRotation;

    if-ne v2, v3, :cond_6

    .line 1322
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1326
    :goto_4
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1327
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextView:Landroid/widget/TextView;

    const v4, 0x7f0b0026

    invoke-virtual {p0, v4}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1328
    iget-object v3, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextView:Landroid/widget/TextView;

    const v4, 0x7f0b0029

    invoke-virtual {p0, v4}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v4

    invoke-virtual {v3, v5, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_3

    .line 1324
    :cond_6
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4
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

    .line 1343
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_0

    .line 1389
    :goto_0
    return-void

    .line 1347
    :cond_0
    if-nez p1, :cond_1

    .line 1349
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    const v3, 0x7f020071

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1350
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1355
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1356
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    .line 1357
    .local v1, rotation:Lcom/android/camera/rotate/UIRotation;
    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1359
    const v2, 0x7f0b002a

    invoke-virtual {p0, v2}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1360
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1361
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1362
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1363
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1371
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

    .line 1380
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1383
    :goto_2
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1384
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1387
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1388
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v2, v5, v5}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1367
    :cond_2
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1368
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1369
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1374
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    const v3, 0x7f020051

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1377
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    const v3, 0x7f02004f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1371
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

    .line 1397
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicatorContainer:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1425
    :goto_0
    return-void

    .line 1401
    :cond_0
    if-nez p2, :cond_1

    .line 1403
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1408
    :cond_1
    if-eqz p1, :cond_2

    .line 1410
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

    .line 1422
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    .line 1423
    .local v0, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0, v0, v4}, Lcom/android/camera/component/CaptureBar;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;I)V

    .line 1424
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1413
    .end local v0           #rotation:Lcom/android/camera/rotate/UIRotation;
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1416
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    const v2, 0x7f02004e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1410
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
    .line 1433
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIcon:Lcom/android/camera/rotate/RotateImageView;

    if-nez v1, :cond_0

    .line 1453
    :goto_0
    return-void

    .line 1437
    :cond_0
    if-nez p1, :cond_1

    .line 1439
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIcon:Lcom/android/camera/rotate/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 1444
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    .line 1451
    .local v0, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIcon:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1452
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

    .line 1461
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicatorContainer:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1477
    :goto_0
    return-void

    .line 1465
    :cond_0
    if-nez p1, :cond_1

    .line 1467
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1472
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    .line 1473
    .local v0, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;

    invoke-virtual {p0, v1, v0, v0, v3}, Lcom/android/camera/component/CaptureBar;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;I)V

    .line 1476
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/camera/component/CaptureBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private unlockAfAecAwb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1485
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 1486
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1487
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread;->setAutoFocusLock(Z)V

    .line 1490
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread;->setAecAwbLock(Z)V

    .line 1491
    return-void
.end method

.method private updateButtonEnableStates()V
    .locals 9

    .prologue
    const/16 v5, 0xff

    const/16 v6, 0x80

    .line 1499
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1500
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    const/4 v1, 0x1

    .line 1501
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

    .line 1533
    const/4 v1, 0x0

    .line 1538
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1539
    iget-object v7, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1542
    const/4 v2, 0x1

    .line 1543
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

    .line 1567
    :pswitch_1
    const/4 v2, 0x0

    .line 1572
    :cond_1
    :goto_2
    :pswitch_2
    iget-object v4, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1573
    iget-object v4, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1574
    return-void

    .line 1506
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

    .line 1523
    :pswitch_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1511
    :pswitch_5
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v3

    .line 1512
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

    .line 1519
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .end local v3           #videoResolution:Lcom/android/camera/Resolution;
    :cond_3
    move v4, v6

    .line 1539
    goto :goto_1

    .line 1546
    .restart local v2       #isVideoButtonEnabled:Z
    :pswitch_6
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v4, v7}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1547
    const/4 v2, 0x0

    goto :goto_2

    .line 1554
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

    .line 1561
    const/4 v2, 0x0

    .line 1562
    goto/16 :goto_2

    .line 1557
    :pswitch_8
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isInMirrorMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1558
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_4
    move v5, v6

    .line 1573
    goto/16 :goto_3

    .line 1501
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1543
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 1506
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1554
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 196
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 199
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 200
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 184
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 187
    :goto_0
    return-void

    .line 178
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/camera/component/CaptureBar;->onCameraButtonReleased(I)V

    .line 179
    invoke-direct {p0, v1}, Lcom/android/camera/component/CaptureBar;->onCamcorderButtonReleased(I)V

    goto :goto_0

    .line 160
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

    .line 243
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 246
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 247
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->isFocusKeyPressed:Lcom/android/camera/property/Property;

    iget-object v7, v0, Lcom/android/camera/HTCCamera;->isFocusKeyPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v6, v7}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 248
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;

    iget-object v7, v0, Lcom/android/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v6, v7}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 249
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;

    iget-object v7, v0, Lcom/android/camera/HTCCamera;->isVideoCaptureButtonPressed:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v6, v7}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 252
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    if-nez v6, :cond_0

    .line 253
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f08003d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    .line 254
    :cond_0
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    if-nez v6, :cond_1

    .line 255
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080032

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    .line 256
    :cond_1
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080034

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicatorContainer:Landroid/view/View;

    .line 257
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicatorContainer:Landroid/view/View;

    const v7, 0x7f080035

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;

    .line 259
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080036

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 260
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f08003a

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewPortrait:Landroid/widget/TextView;

    .line 261
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f08003b

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerTextViewLandscape:Landroid/widget/TextView;

    .line 262
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f080039

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingTimerEmptyArea:Landroid/view/View;

    .line 263
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080044

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 264
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f080045

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingHourTextView:Landroid/widget/TextView;

    .line 265
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f08003e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicatorContainer:Landroid/view/View;

    .line 266
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicatorContainer:Landroid/view/View;

    const v7, 0x7f08003f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    .line 267
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080040

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 268
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f080041

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerIcon:Landroid/widget/ImageView;

    .line 269
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f080042

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewPortrait:Landroid/widget/TextView;

    .line 270
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v7, 0x7f080043

    invoke-virtual {v6, v7}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_SelfTimerTextViewLandscape:Landroid/widget/TextView;

    .line 273
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 274
    .local v3, res:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIconsLandscape:[Landroid/graphics/drawable/Drawable;

    const v7, 0x7f02006d

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v8

    .line 275
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIconsLandscape:[Landroid/graphics/drawable/Drawable;

    const v7, 0x7f02006b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v9

    .line 276
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIconsPortrait:[Landroid/graphics/drawable/Drawable;

    const v7, 0x7f02006e

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v8

    .line 277
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_RecordingButtonIconsPortrait:[Landroid/graphics/drawable/Drawable;

    const v7, 0x7f02006c

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v9

    .line 280
    const/4 v6, 0x0

    invoke-direct {p0, v6, v8}, Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V

    .line 283
    new-instance v2, Lcom/android/camera/component/CaptureBar$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/CaptureBar$3;-><init>(Lcom/android/camera/component/CaptureBar;)V

    .line 336
    .local v2, listener:Landroid/view/View$OnTouchListener;
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 337
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 340
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v4

    .line 341
    .local v4, startMode:Lcom/android/camera/CameraStartMode;
    invoke-virtual {v4}, Lcom/android/camera/CameraStartMode;->supportsAllCameraModes()Z

    move-result v6

    if-nez v6, :cond_2

    .line 344
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    const v7, 0x7f080030

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f02006f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    iget-boolean v6, v4, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v6, :cond_3

    .line 350
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 351
    .local v5, visibleView:Landroid/view/View;
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 358
    .local v1, hiddenView:Landroid/view/View;
    :goto_0
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 359
    const v6, 0x7f0b0017

    invoke-virtual {p0, v6}, Lcom/android/camera/component/CaptureBar;->getDimension(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 363
    .end local v1           #hiddenView:Landroid/view/View;
    .end local v5           #visibleView:Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->setupEventHandlers()V

    .line 364
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->setupPropertyChangedCallbacks()V

    .line 367
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->updateButtonEnableStates()V

    .line 370
    invoke-direct {p0}, Lcom/android/camera/component/CaptureBar;->showFakeUIRotation()V

    .line 371
    return-void

    .line 355
    :cond_3
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 356
    .restart local v5       #visibleView:Landroid/view/View;
    iget-object v6, p0, Lcom/android/camera/component/CaptureBar;->m_CaptureBar:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .restart local v1       #hiddenView:Landroid/view/View;
    goto :goto_0
.end method
