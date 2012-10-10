.class public final Lcom/android/camera/effect/EffectControlUI;
.super Lcom/android/camera/component/UIComponent;
.source "EffectControlUI.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "Effect Control UI"


# instance fields
.field private final controlState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field private final effectCenter:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private m_ControlBar:Landroid/widget/SeekBar;

.field private m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

.field private m_DecreaseButton:Landroid/view/View;

.field private final m_EffectCenterPool:[Landroid/graphics/PointF;

.field private m_EffectCenterPoolIndex:I

.field private m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

.field private m_IncreaseButton:Landroid/view/View;

.field private m_IsControlsNeeded:Z

.field private m_IsToastShown:Z

.field private m_ShowingInitValues:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 5
    .parameter "cameraActivity"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    const-string v0, "Effect Control UI"

    const v1, 0x7f08004a

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 45
    new-array v0, v4, [Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPool:[Landroid/graphics/PointF;

    .line 68
    invoke-virtual {p0, v2}, Lcom/android/camera/effect/EffectControlUI;->autoInflateView(Z)V

    .line 69
    const-string v0, "EffectControlUI.ControlState"

    sget-object v1, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, v4, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->controlState:Lcom/android/camera/property/Property;

    .line 70
    const-string v0, "EffectControlUI.EffectCenter"

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->effectCenter:Lcom/android/camera/property/Property;

    .line 71
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/effect/EffectControlUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsToastShown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/effect/EffectControlUI;Lcom/android/camera/effect/EffectBase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectControlUI;->onEffectApplied(Lcom/android/camera/effect/EffectBase;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/effect/EffectControlUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_ShowingInitValues:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/effect/EffectControlUI;)[Landroid/graphics/PointF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPool:[Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/effect/EffectControlUI;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/camera/effect/EffectControlUI;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/effect/EffectBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->effectCenter:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/CameraSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/effect/EffectControlUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/effect/EffectControlUI;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectControlUI;->onControlBarProgressChanged(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/rotate/UIRotation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/effect/EffectControlUI;Lcom/android/camera/effect/EffectBase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectControlUI;->onEffectCanceled(Lcom/android/camera/effect/EffectBase;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/effect/EffectControlUI;Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/effect/EffectControlUI;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/effect/EffectControlUI;Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/effect/EffectControlUI;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/effect/EffectControlUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectControlUI;->showControls(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/effect/EffectControlUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/effect/EffectControlUI;->hideControls()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/effect/EffectControlUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_IncreaseButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/effect/EffectControlUI;Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/effect/EffectControlUI;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/effect/EffectControlUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_DecreaseButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/effect/EffectControlUI;Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/effect/EffectControlUI;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method private calcControlBarProgress(I)I
    .locals 8
    .parameter "effectRadius"

    .prologue
    const/16 v1, 0x64

    .line 82
    add-int/lit8 v2, p1, -0x28

    int-to-double v2, v2

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-double v4, v4

    const-wide v6, 0x400199999999999aL

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4044

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 83
    .local v0, progress:I
    if-lt v0, v1, :cond_1

    move v0, v1

    .line 87
    .end local v0           #progress:I
    :cond_0
    :goto_0
    return v0

    .line 85
    .restart local v0       #progress:I
    :cond_1
    if-gtz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calcEffectRadius(I)I
    .locals 6
    .parameter "controlBarProgress"

    .prologue
    const-wide/high16 v4, 0x4044

    .line 78
    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-double v0, v0

    const-wide v2, 0x400199999999999aL

    div-double/2addr v0, v2

    sub-double/2addr v0, v4

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    int-to-double v2, p1

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    double-to-int v0, v0

    return v0
.end method

.method private convertToUIEffectCenter(Landroid/graphics/PointF;)Landroid/graphics/Point;
    .locals 4
    .parameter "normalizedPoint"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/HTCCamera;->normalizedPointToScreenPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v0

    .line 96
    .local v0, point:Landroid/graphics/Point;
    sget-object v2, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v2}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int v1, v2, v3

    .line 99
    .local v1, y:I
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 100
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 102
    .end local v1           #y:I
    :cond_0
    return-object v0
.end method

.method private getCenterPointOnScreenForDriver()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/graphics/Point;

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private hideControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/effect/EffectControlUI;->showUI(Landroid/view/View;ZZ)V

    .line 131
    :cond_0
    return-void
.end method

.method private initializeUI()V
    .locals 5

    .prologue
    .line 243
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 362
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, baseLayout:Landroid/view/View;
    const v2, 0x7f080062

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/EffectControlCircle;

    iput-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    .line 251
    const v2, 0x7f080065

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    .line 252
    const v2, 0x7f080067

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_IncreaseButton:Landroid/view/View;

    .line 253
    const v2, 0x7f080066

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_DecreaseButton:Landroid/view/View;

    .line 256
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v2}, Lcom/android/camera/widget/EffectControlCircle;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 257
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    new-instance v3, Lcom/android/camera/effect/EffectControlUI$10;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectControlUI$10;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/EffectControlCircle;->setOnCenterPointChangedListener(Lcom/android/camera/widget/EffectControlCircle$OnCenterPointChangedListener;)V

    .line 289
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    new-instance v3, Lcom/android/camera/effect/EffectControlUI$11;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectControlUI$11;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/EffectControlCircle;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 325
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/android/camera/effect/EffectControlUI$12;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectControlUI$12;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/camera/effect/EffectControlUI$13;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectControlUI$13;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 351
    const v2, 0x7f080064

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 352
    .local v1, receiver:Landroid/view/View;
    new-instance v2, Lcom/android/camera/effect/EffectControlUI$14;

    invoke-direct {v2, p0}, Lcom/android/camera/effect/EffectControlUI$14;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private onControlBarProgressChanged(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 370
    iget-boolean v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_ShowingInitValues:Z

    if-eqz v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    instance-of v1, v1, Lcom/android/camera/effect/DistortionEffect;

    if-eqz v1, :cond_2

    .line 375
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    check-cast v1, Lcom/android/camera/effect/DistortionEffect;

    invoke-virtual {v1, p1}, Lcom/android/camera/effect/DistortionEffect;->setDistortion(I)V

    goto :goto_0

    .line 376
    :cond_2
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    instance-of v1, v1, Lcom/android/camera/effect/VignetteEffect;

    if-eqz v1, :cond_3

    .line 378
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectControlUI;->calcEffectRadius(I)I

    move-result v0

    .line 379
    .local v0, radius:I
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    check-cast v1, Lcom/android/camera/effect/VignetteEffect;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/VignetteEffect;->setRadius(I)V

    .line 380
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/EffectControlCircle;->setBorderRadius(I)V

    goto :goto_0

    .line 382
    .end local v0           #radius:I
    :cond_3
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    instance-of v1, v1, Lcom/android/camera/effect/DepthOfFieldEffect;

    if-eqz v1, :cond_4

    .line 384
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectControlUI;->calcEffectRadius(I)I

    move-result v0

    .line 385
    .restart local v0       #radius:I
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    check-cast v1, Lcom/android/camera/effect/DepthOfFieldEffect;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/DepthOfFieldEffect;->setRadius(I)V

    .line 386
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/EffectControlCircle;->setBorderRadius(I)V

    goto :goto_0

    .line 388
    .end local v0           #radius:I
    :cond_4
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    instance-of v1, v1, Lcom/android/camera/effect/DotsEffect;

    if-eqz v1, :cond_5

    .line 389
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    check-cast v1, Lcom/android/camera/effect/DotsEffect;

    invoke-virtual {v1, p1}, Lcom/android/camera/effect/DotsEffect;->setDotSize(I)V

    goto :goto_0

    .line 390
    :cond_5
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    instance-of v1, v1, Lcom/android/camera/effect/SplitToningMonoEffect;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    check-cast v1, Lcom/android/camera/effect/SplitToningMonoEffect;

    invoke-virtual {v1, p1}, Lcom/android/camera/effect/SplitToningMonoEffect;->setColorStrength(I)V

    goto :goto_0
.end method

.method private onEffectApplied(Lcom/android/camera/effect/EffectBase;)V
    .locals 10
    .parameter "effect"

    .prologue
    const/16 v6, 0x8

    const/high16 v9, 0x3f00

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 400
    const/4 v2, 0x1

    .line 401
    .local v2, showToast:Z
    iput-boolean v8, p0, Lcom/android/camera/effect/EffectControlUI;->m_ShowingInitValues:Z

    .line 402
    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    .line 403
    instance-of v5, p1, Lcom/android/camera/effect/DistortionEffect;

    if-eqz v5, :cond_6

    .line 405
    iput-boolean v8, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    .line 406
    invoke-direct {p0, v8}, Lcom/android/camera/effect/EffectControlUI;->showControls(Z)V

    .line 407
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v8}, Lcom/android/camera/widget/EffectControlCircle;->allowUserChangeCenterPoint(Z)V

    .line 408
    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    move-object v5, p1

    check-cast v5, Lcom/android/camera/effect/DistortionEffect;

    invoke-virtual {v5}, Lcom/android/camera/effect/DistortionEffect;->getCenter()Landroid/graphics/PointF;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/camera/effect/EffectControlUI;->convertToUIEffectCenter(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPoint(Landroid/graphics/Point;)V

    .line 409
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v8}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    .line 410
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v7}, Lcom/android/camera/widget/EffectControlCircle;->setBorderVisibility(Z)V

    .line 411
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v7}, Lcom/android/camera/widget/EffectControlCircle;->setVisibility(I)V

    .line 412
    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    move-object v5, p1

    check-cast v5, Lcom/android/camera/effect/DistortionEffect;

    invoke-virtual {v5}, Lcom/android/camera/effect/DistortionEffect;->getDistortion()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 462
    :goto_0
    iput-boolean v7, p0, Lcom/android/camera/effect/EffectControlUI;->m_ShowingInitValues:Z

    .line 465
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    if-eqz v5, :cond_0

    .line 467
    instance-of v5, p1, Lcom/android/camera/effect/SplitToningMonoEffect;

    if-eqz v5, :cond_b

    .line 468
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    const v6, 0x7f020080

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    .line 474
    :cond_0
    :goto_1
    iget-boolean v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    if-eqz v5, :cond_2

    .line 476
    if-eqz v2, :cond_1

    iget-boolean v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsToastShown:Z

    if-nez v5, :cond_1

    .line 477
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    const v6, 0x7f0a01a1

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->showToast(I)V

    .line 478
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/effect/EffectControlUI;->updateEffectCircleBounds()V

    .line 482
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsToastShown:Z

    .line 485
    iget-boolean v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    if-eqz v5, :cond_5

    .line 487
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->controlState:Lcom/android/camera/property/Property;

    sget-object v6, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    invoke-virtual {v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 488
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPool:[Landroid/graphics/PointF;

    iget v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I

    aget-object v0, v5, v6

    .line 489
    .local v0, point:Landroid/graphics/PointF;
    iget v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPool:[Landroid/graphics/PointF;

    array-length v6, v6

    rem-int/2addr v5, v6

    iput v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I

    .line 491
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5}, Lcom/android/camera/widget/EffectControlCircle;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v3

    .line 493
    .local v3, uiPoint:Landroid/graphics/Point;
    sget-object v5, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v5}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 495
    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int v4, v5, v6

    .line 496
    .local v4, x:I
    iget v5, v3, Landroid/graphics/Point;->x:I

    iput v5, v3, Landroid/graphics/Point;->y:I

    .line 497
    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 499
    .end local v4           #x:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/android/camera/HTCCamera;->screenPointToNormalizedPoint(IIZLandroid/graphics/PointF;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 500
    invoke-virtual {v0, v9, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 501
    :cond_4
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->effectCenter:Lcom/android/camera/property/Property;

    invoke-virtual {v5, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 503
    .end local v0           #point:Landroid/graphics/PointF;
    .end local v3           #uiPoint:Landroid/graphics/Point;
    :cond_5
    return-void

    .line 414
    :cond_6
    instance-of v5, p1, Lcom/android/camera/effect/VignetteEffect;

    if-eqz v5, :cond_7

    move-object v5, p1

    .line 416
    check-cast v5, Lcom/android/camera/effect/VignetteEffect;

    invoke-virtual {v5}, Lcom/android/camera/effect/VignetteEffect;->getRadius()I

    move-result v1

    .line 417
    .local v1, radius:I
    iput-boolean v8, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    .line 418
    invoke-direct {p0, v8}, Lcom/android/camera/effect/EffectControlUI;->showControls(Z)V

    .line 419
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v7}, Lcom/android/camera/widget/EffectControlCircle;->allowUserChangeCenterPoint(Z)V

    .line 420
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-direct {p0}, Lcom/android/camera/effect/EffectControlUI;->getCenterPointOnScreenForDriver()Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPoint(Landroid/graphics/Point;)V

    .line 421
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v7}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    .line 422
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v8}, Lcom/android/camera/widget/EffectControlCircle;->setBorderVisibility(Z)V

    .line 423
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v1}, Lcom/android/camera/widget/EffectControlCircle;->setBorderRadius(I)V

    .line 424
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v7}, Lcom/android/camera/widget/EffectControlCircle;->setVisibility(I)V

    .line 425
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v1}, Lcom/android/camera/effect/EffectControlUI;->calcControlBarProgress(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 427
    .end local v1           #radius:I
    :cond_7
    instance-of v5, p1, Lcom/android/camera/effect/DepthOfFieldEffect;

    if-eqz v5, :cond_8

    move-object v5, p1

    .line 429
    check-cast v5, Lcom/android/camera/effect/DepthOfFieldEffect;

    invoke-virtual {v5}, Lcom/android/camera/effect/DepthOfFieldEffect;->getRadius()I

    move-result v1

    .line 430
    .restart local v1       #radius:I
    iput-boolean v8, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    .line 431
    invoke-direct {p0, v8}, Lcom/android/camera/effect/EffectControlUI;->showControls(Z)V

    .line 432
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v8}, Lcom/android/camera/widget/EffectControlCircle;->allowUserChangeCenterPoint(Z)V

    .line 433
    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    move-object v5, p1

    check-cast v5, Lcom/android/camera/effect/DepthOfFieldEffect;

    invoke-virtual {v5}, Lcom/android/camera/effect/DepthOfFieldEffect;->getCenter()Landroid/graphics/PointF;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/camera/effect/EffectControlUI;->convertToUIEffectCenter(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPoint(Landroid/graphics/Point;)V

    .line 434
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v8}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    .line 435
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v8}, Lcom/android/camera/widget/EffectControlCircle;->setBorderVisibility(Z)V

    .line 436
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v1}, Lcom/android/camera/widget/EffectControlCircle;->setBorderRadius(I)V

    .line 437
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v7}, Lcom/android/camera/widget/EffectControlCircle;->setVisibility(I)V

    .line 438
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v1}, Lcom/android/camera/effect/EffectControlUI;->calcControlBarProgress(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 440
    .end local v1           #radius:I
    :cond_8
    instance-of v5, p1, Lcom/android/camera/effect/DotsEffect;

    if-eqz v5, :cond_9

    .line 442
    iput-boolean v8, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    .line 443
    invoke-direct {p0, v8}, Lcom/android/camera/effect/EffectControlUI;->showControls(Z)V

    .line 444
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v7}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    .line 445
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v6}, Lcom/android/camera/widget/EffectControlCircle;->setVisibility(I)V

    .line 446
    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    move-object v5, p1

    check-cast v5, Lcom/android/camera/effect/DotsEffect;

    invoke-virtual {v5}, Lcom/android/camera/effect/DotsEffect;->getDotSize()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 448
    :cond_9
    instance-of v5, p1, Lcom/android/camera/effect/SplitToningMonoEffect;

    if-eqz v5, :cond_a

    .line 450
    iput-boolean v8, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    .line 451
    invoke-direct {p0, v8}, Lcom/android/camera/effect/EffectControlUI;->showControls(Z)V

    .line 452
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v7}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    .line 453
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v5, v6}, Lcom/android/camera/widget/EffectControlCircle;->setVisibility(I)V

    .line 454
    iget-object v6, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    move-object v5, p1

    check-cast v5, Lcom/android/camera/effect/SplitToningMonoEffect;

    invoke-virtual {v5}, Lcom/android/camera/effect/SplitToningMonoEffect;->getColorStrength()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 458
    :cond_a
    iput-boolean v7, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    .line 459
    const/4 v2, 0x0

    .line 460
    invoke-direct {p0}, Lcom/android/camera/effect/EffectControlUI;->hideControls()V

    goto/16 :goto_0

    .line 470
    :cond_b
    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    const v6, 0x7f02007f

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method private onEffectCanceled(Lcom/android/camera/effect/EffectBase;)V
    .locals 3
    .parameter "effect"

    .prologue
    const/4 v2, 0x0

    .line 510
    iput-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    .line 511
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->controlState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 514
    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->effectCenter:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    .line 517
    :cond_0
    return-void
.end method

.method private showControls(Z)V
    .locals 4
    .parameter "forceInitUI"

    .prologue
    const/4 v3, 0x1

    .line 525
    if-eqz p1, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/android/camera/effect/EffectControlUI;->initializeUI()V

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 530
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-boolean v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    if-nez v1, :cond_2

    .line 542
    :cond_1
    :goto_0
    return-void

    .line 532
    :cond_2
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 534
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    invoke-direct {p0}, Lcom/android/camera/effect/EffectControlUI;->initializeUI()V

    .line 541
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/camera/effect/EffectControlUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private updateEffectCircleBounds()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 550
    iget-object v3, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    if-nez v3, :cond_0

    .line 560
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 557
    .local v0, isWideRatio:Z
    if-eqz v0, :cond_1

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 558
    .local v1, newWidth:I
    :goto_1
    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sub-int/2addr v3, v1

    div-int/lit8 v2, v3, 0x2

    .line 559
    .local v2, padding:I
    iget-object v3, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v3, v2, v4, v2, v4}, Lcom/android/camera/widget/EffectControlCircle;->setPadding(IIII)V

    goto :goto_0

    .line 557
    .end local v1           #newWidth:I
    .end local v2           #padding:I
    :cond_1
    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v1, v3, 0x3

    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 111
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    .line 113
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 114
    return-void
.end method

.method protected initializeOverride()V
    .locals 6

    .prologue
    .line 140
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 144
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->controlState:Lcom/android/camera/property/Property;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->effectControlState:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 145
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->effectCenter:Lcom/android/camera/property/Property;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->effectCenter:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 148
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/effect/EffectControlUI$1;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectControlUI$1;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 156
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->effectAppliedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/effect/EffectControlUI$2;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectControlUI$2;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 165
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->effectCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/effect/EffectControlUI$3;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectControlUI$3;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 176
    new-instance v1, Lcom/android/camera/effect/EffectControlUI$4;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/EffectControlUI$4;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    .line 187
    .local v1, popupStateChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<Lcom/android/camera/UIState;>;"
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/effect/EffectControlUI$5;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectControlUI$5;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 195
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/effect/EffectControlUI$6;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectControlUI$6;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 203
    iget-object v2, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/effect/EffectControlUI$7;

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/camera/effect/EffectControlUI$7;-><init>(Lcom/android/camera/effect/EffectControlUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/effect/EffectControlUI$8;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectControlUI$8;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 225
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/effect/EffectControlUI$9;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectControlUI$9;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 234
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 235
    return-void
.end method
