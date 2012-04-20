.class final Lcom/android/camera/component/CameraModeScreen;
.super Lcom/android/camera/component/UIComponent;
.source "CameraModeScreen.java"


# static fields
.field static final NAME:Ljava/lang/String; = "Camera Mode Screen"


# instance fields
.field private final m_InitialModeImageView:Landroid/widget/ImageView;

.field private final m_ModeImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    const v2, 0x7f080029

    .line 38
    const-string v0, "Camera Mode Screen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 41
    const v0, 0x7f08002b

    invoke-virtual {p1, v0}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_InitialModeImageView:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p1, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    .line 45
    iget-object v0, p1, Lcom/android/camera/HTCCamera;->previewSurfaceCreatedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/component/CameraModeScreen$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CameraModeScreen$1;-><init>(Lcom/android/camera/component/CameraModeScreen;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 56
    iget-object v0, p1, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/component/CameraModeScreen$2;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CameraModeScreen$2;-><init>(Lcom/android/camera/component/CameraModeScreen;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 64
    iget-object v0, p1, Lcom/android/camera/HTCCamera;->isKeyguardLocked:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/component/CameraModeScreen$3;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CameraModeScreen$3;-><init>(Lcom/android/camera/component/CameraModeScreen;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 73
    iget-object v0, p1, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/component/CameraModeScreen$4;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CameraModeScreen$4;-><init>(Lcom/android/camera/component/CameraModeScreen;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/CameraModeScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_InitialModeImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/CameraModeScreen;Lcom/android/camera/CameraMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/camera/component/CameraModeScreen;->showModeIcon(Lcom/android/camera/CameraMode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/CameraModeScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private showModeIcon(Lcom/android/camera/CameraMode;)V
    .locals 1
    .parameter "cameraMode"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/camera/component/CameraModeScreen;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/camera/component/CameraModeScreen;->showModeIcon(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/CameraMode;)V

    .line 93
    return-void
.end method

.method private showModeIcon(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/CameraMode;)V
    .locals 3
    .parameter "rotation"
    .parameter "cameraMode"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne p2, v0, :cond_0

    const v0, 0x7f020059

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 99
    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 100
    iget-object v0, p0, Lcom/android/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/component/CameraModeScreen;->showUI(Landroid/view/View;ZZ)V

    .line 101
    return-void

    .line 96
    :cond_0
    const/high16 v0, 0x7f02

    goto :goto_0
.end method
