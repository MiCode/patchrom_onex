.class public final Lcom/android/camera/component/PanoramaUI;
.super Lcom/android/camera/component/UIComponent;
.source "PanoramaUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/PanoramaUI$17;
    }
.end annotation


# static fields
.field public static final MSG_ABORTED:I = 0xc

.field private static final MSG_DEACTIVATE_SPINNER:I = 0x64

.field public static final MSG_DIRECTION_LOCKED:I = 0x9

.field public static final MSG_INTERMEDIATE_CAPTURE_START:I = 0x4

.field public static final MSG_INTERMEDIATE_CAPTURE_TIMER_CANCELED:I = 0x3

.field public static final MSG_INTERMEDIATE_CAPTURE_TIMER_STARTED:I = 0x2

.field public static final MSG_INTERMEDIATE_PHOTO:I = 0x6

.field public static final MSG_INTERMEDIATE_SHUTTER:I = 0x5

.field public static final MSG_PREVIEW_CREATED:I = 0x8

.field public static final MSG_REVIEW_IMAGE_CREATED:I = 0xd

.field public static final MSG_STITCH_COMPLETED:I = 0xb

.field public static final MSG_STITCH_STARTED:I = 0xa

.field public static final MSG_TRACKING:I = 0x7

.field public static final NAME:Ljava/lang/String; = "Panorama UI"

.field private static final SPINNER_ACTIVE_TIMEOUT:I


# instance fields
.field private m_ArrowsContainer:Landroid/view/View;

.field private m_CancelButton:Landroid/widget/ImageView;

.field private m_CenterIndicatorView:Landroid/widget/ImageView;

.field private m_CurrentCaptureIndex:I

.field private m_CurrentDeltaX:F

.field private m_CurrentDeltaY:F

.field private m_FrameIndexIndicatorContainer:Landroid/view/View;

.field private m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

.field private m_Indicator:Lcom/android/camera/rotate/RotateImageView;

.field private m_IndicatorContainer:Landroid/view/View;

.field private m_IndicatorTopPaddingView:Landroid/view/View;

.field private m_InitDirectionToast:Landroid/view/View;

.field private m_InitDirectionToastTextView:Landroid/widget/TextView;

.field private m_InitToast:Landroid/view/View;

.field private m_InitToastContent:Landroid/widget/TextView;

.field private m_IsCaptureUIOpen:Z

.field private m_IsCapturing:Z

.field private m_IsCapturingFrame:Z

.field private m_IsInternalExit:Z

.field private m_IsModeEntered:Z

.field private m_IsResolutionSyncBackNeeded:Z

.field private m_IsRestartingPreviewNeeded:Z

.field private m_IsSlowArrowShown:Z

.field private m_IsSpinnerActive:Z

.field private m_IsSweepPanorama:Z

.field private m_IsUIInitialized:Z

.field private m_LeftArrow:Landroid/widget/ImageView;

.field private m_PanoramaController:Lcom/android/camera/component/PanoramaController;

.field private m_PanoramaDirection:I

.field private m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

.field private m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_ReviewImageView:Landroid/widget/ImageView;

.field private m_RightArrow:Landroid/widget/ImageView;

.field private m_ShutterBar:Landroid/view/View;

.field private m_Spinner:Landroid/widget/ImageView;

.field private m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

.field private m_SweepIndicatorContainer:Landroid/view/View;

.field private m_Thumb:Landroid/widget/ImageView;

.field private m_ThumbBar:Landroid/view/View;

.field private m_ThumbnailHeight:I

.field private m_ThumbnailWidth:I

.field private m_ThumbnailWidthWide:I

.field private m_Thumbs:[Landroid/widget/ImageView;

.field private m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 140
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 142
    :cond_0
    const/16 v0, 0x3e8

    sput v0, Lcom/android/camera/component/PanoramaUI;->SPINNER_ACTIVE_TIMEOUT:I

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_1
    const/16 v0, 0x258

    sput v0, Lcom/android/camera/component/PanoramaUI;->SPINNER_ACTIVE_TIMEOUT:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4
    .parameter "cameraActivity"

    .prologue
    const/4 v3, 0x0

    .line 152
    const-string v0, "Panorama UI"

    const/4 v1, 0x1

    const v2, 0x7f08004c

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 83
    iput v3, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    .line 153
    new-instance v0, Lcom/android/camera/component/PanoramaResolutionHandler;

    invoke-direct {v0}, Lcom/android/camera/component/PanoramaResolutionHandler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    .line 154
    invoke-virtual {p0, v3}, Lcom/android/camera/component/PanoramaUI;->autoInflateView(Z)V

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/PanoramaUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/PanoramaUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/PanoramaUI;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->getVirtualDeviceOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/widget/PanoramaIndicatorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/PanoramaUI;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/PanoramaUI;->showIndicator(ZZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideThumbnailBar()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideReviewScreen()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/PanoramaUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->updateCancelButtonImage(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/rotate/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->openCaptureUI()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->closeCaptureUI()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/component/PanoramaUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->updateIndicatorLocation(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/component/PanoramaUI;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->updateToastRotation(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/component/PanoramaUI;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/PanoramaUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/PanoramaUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/PanoramaUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturingFrame:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/component/PanoramaUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsResolutionSyncBackNeeded:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/component/PanoramaResolutionHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/PanoramaUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private activateSpinner()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 162
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_Spinner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 166
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    iget v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v0, v8

    :goto_0
    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    .line 168
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v8}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorActivity(Z)V

    .line 169
    iput-boolean v8, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    .line 170
    const/16 v2, 0x64

    const/4 v5, 0x0

    sget v0, Lcom/android/camera/component/PanoramaUI;->SPINNER_ACTIVE_TIMEOUT:I

    int-to-long v6, v0

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/PanoramaUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 172
    :cond_0
    return-void

    .line 166
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private closeCaptureUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 191
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private deactivateSpinner()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner(Z)V

    .line 200
    return-void
.end method

.method private deactivateSpinner(Z)V
    .locals 7
    .parameter "forceDeactivate"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 203
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    if-eqz v1, :cond_3

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v1, v4}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorActivity(Z)V

    .line 208
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    if-ge v1, v6, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v1, v4}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorUpdateType(I)V

    .line 211
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    iget v2, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaY:F

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    .line 212
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v1, v5}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorUpdateType(I)V

    .line 214
    :cond_1
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    .line 215
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/camera/component/PanoramaUI;->removeMessages(I)V

    .line 218
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    if-eqz v1, :cond_4

    .line 220
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    if-ge v1, v6, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->showDirectionIndicator()V

    .line 263
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSlowArrowShown:Z

    .line 265
    :cond_3
    return-void

    .line 226
    :cond_4
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 227
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    if-eqz v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    .line 235
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 236
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    :cond_6
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 240
    :cond_7
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 241
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    .line 249
    .local v0, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    instance-of v1, v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_8

    .line 250
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 253
    :cond_8
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToastTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f0a0048

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 254
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToastTextView:Landroid/widget/TextView;

    const-string v2, "com.htc.R.drawable.popup_full_dark"

    invoke-static {v2}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 257
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    invoke-virtual {p0, v1, v5, v5}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 253
    :cond_9
    const v1, 0x7f0a0049

    goto :goto_1
.end method

.method private getVirtualDeviceOrientation()I
    .locals 3

    .prologue
    .line 454
    const/4 v0, -0x1

    .line 455
    .local v0, orientation:I
    const-class v2, Lcom/android/camera/IUIRotationManager;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/PanoramaUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IUIRotationManager;

    .line 456
    .local v1, rotationManager:Lcom/android/camera/IUIRotationManager;
    if-eqz v1, :cond_0

    .line 457
    invoke-interface {v1}, Lcom/android/camera/IUIRotationManager;->getAvailableDeviceOrientation()I

    move-result v0

    .line 460
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/component/PanoramaUI;->getVirtualDeviceOrientation(I)I

    move-result v2

    return v2

    .line 459
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVirtualDeviceOrientation(I)I
    .locals 3
    .parameter "deviceOrientation"

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    iget v2, v2, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5a

    add-int v0, p1, v1

    .line 465
    .local v0, virtualOrientation:I
    if-gez v0, :cond_0

    .line 466
    add-int/lit16 v0, v0, 0x168

    .line 467
    :cond_0
    return v0
.end method

.method private hideArrows()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 544
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 554
    :cond_1
    return-void
.end method

.method private hideCenterIndicator()V
    .locals 3

    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 567
    .local v0, currentIndicator:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 571
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0           #currentIndicator:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method private hideReviewScreen()V
    .locals 4

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Lcom/android/camera/component/PanoramaUI$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/PanoramaUI$1;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/imaging/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 596
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 597
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideSweepIndicator()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 608
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 617
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner()V

    .line 613
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v3}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorActivity(Z)V

    .line 615
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    .line 616
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v3}, Lcom/android/camera/widget/PanoramaIndicatorView;->setPanoramaDirection(I)V

    goto :goto_0
.end method

.method private hideThumbnailBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 625
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 626
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 629
    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 631
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 633
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    aget-object v2, v3, v1

    .line 634
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 635
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 636
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 637
    invoke-static {v0}, Lcom/android/camera/imaging/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 631
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 640
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #i:I
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 641
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 642
    :cond_2
    return-void
.end method

.method private initializeUI()V
    .locals 10

    .prologue
    const v9, 0x7f0800ba

    const v8, 0x7f0800b9

    const v7, 0x7f0800b8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 684
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->prepareContentLayout()Landroid/view/View;

    move-result-object v0

    .line 687
    .local v0, baseLayout:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsUIInitialized:Z

    if-eqz v1, :cond_0

    .line 799
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v1, :cond_1

    .line 694
    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    .line 695
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    const v2, 0x7f0800c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToastContent:Landroid/widget/TextView;

    .line 696
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->updateToastRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 697
    const v1, 0x7f0800c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    .line 698
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    const v2, 0x7f0800c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToastTextView:Landroid/widget/TextView;

    .line 701
    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    .line 702
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    const v2, 0x7f0800c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    .line 703
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    const v2, 0x7f0800c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    .line 704
    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/UIRotation;)V

    .line 707
    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    .line 708
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const v2, 0x7f0800bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/PanoramaIndicatorView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    .line 709
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v1, v5}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorVisibility(Z)V

    .line 711
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 714
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    .line 715
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    .line 716
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    const v2, 0x7f0800c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    .line 717
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    .line 718
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 721
    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 722
    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    .line 762
    :goto_1
    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    .line 763
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    const v2, 0x7f0800bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    .line 764
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$2;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 795
    invoke-direct {p0, v6}, Lcom/android/camera/component/PanoramaUI;->updateCancelButtonImage(Z)V

    .line 798
    iput-boolean v5, p0, Lcom/android/camera/component/PanoramaUI;->m_IsUIInitialized:Z

    goto/16 :goto_0

    .line 727
    :cond_1
    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/PanoramaTrackingView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    .line 730
    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    .line 731
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    const v2, 0x7f0800c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToastContent:Landroid/widget/TextView;

    .line 732
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->updateToastRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 735
    const v1, 0x7f0800b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    .line 736
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 737
    const/4 v1, 0x5

    new-array v2, v1, [Lcom/android/camera/widget/ColorMultiplyImageView;

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    const v3, 0x7f0800b3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/ColorMultiplyImageView;

    aput-object v1, v2, v6

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    const v3, 0x7f0800b4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/ColorMultiplyImageView;

    aput-object v1, v2, v5

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    const v4, 0x7f0800b5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/ColorMultiplyImageView;

    aput-object v1, v2, v3

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    const v4, 0x7f0800b6

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/ColorMultiplyImageView;

    aput-object v1, v2, v3

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    const v4, 0x7f0800b7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/ColorMultiplyImageView;

    aput-object v1, v2, v3

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    .line 746
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    .line 747
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 748
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    .line 749
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    .line 752
    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 753
    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    .line 756
    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    .line 757
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const v2, 0x7f0800bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/PanoramaIndicatorView;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    .line 758
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto/16 :goto_1
.end method

.method private linkToController()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 814
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    if-eqz v0, :cond_0

    move v0, v1

    .line 822
    :goto_0
    return v0

    .line 816
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    const-string v2, "Panorama Controller"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/PanoramaController;

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    .line 817
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v0, p0}, Lcom/android/camera/component/PanoramaController;->link(Lcom/android/camera/component/PanoramaUI;)V

    move v0, v1

    .line 820
    goto :goto_0

    .line 822
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAborted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 831
    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    .line 834
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PanoramaTrackingView;->setPanoramaDirection(I)V

    .line 838
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideThumbnailBar()V

    .line 841
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideCenterIndicator()V

    .line 847
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->completeTakingPicture()V

    .line 849
    return-void
.end method

.method private onDirectionLocked(I)V
    .locals 4
    .parameter "direction"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 857
    iput p1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    .line 860
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->updatePreviewThumbnailDirection()V

    .line 899
    :goto_0
    return-void

    .line 867
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v1, :cond_2

    .line 870
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v1, p1}, Lcom/android/camera/widget/PanoramaIndicatorView;->setPanoramaDirection(I)V

    .line 873
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideArrows()V

    .line 876
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 877
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 880
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->showDirectionIndicator()V

    goto :goto_0

    .line 885
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v1, p1}, Lcom/android/camera/widget/PanoramaTrackingView;->setPanoramaDirection(I)V

    .line 888
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 890
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 891
    .local v0, indicatorIndex:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    aget-object v1, v1, v0

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ColorMultiplyImageView;->setImageResource(I)V

    .line 892
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/android/camera/widget/ColorMultiplyImageView;->applyColorMultiplication(Z)V

    .line 893
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 897
    .end local v0           #indicatorIndex:I
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideArrows()V

    goto :goto_0

    .line 890
    :cond_4
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method private onIntermediateCaptureStart(I)V
    .locals 6
    .parameter "captureIndex"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 907
    if-nez p1, :cond_0

    .line 910
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    .line 911
    iput v4, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    .line 914
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    if-eqz v2, :cond_0

    .line 916
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 918
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    aget-object v2, v2, v0

    const v3, 0x7f020056

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ColorMultiplyImageView;->setImageResource(I)V

    .line 919
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Lcom/android/camera/widget/ColorMultiplyImageView;->applyColorMultiplication(Z)V

    .line 916
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 923
    .end local v0           #i:I
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturingFrame:Z

    .line 924
    iput p1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    .line 925
    iput v5, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    .line 926
    iput v5, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaY:F

    .line 929
    if-lez p1, :cond_3

    .line 930
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->activateSpinner()V

    .line 938
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v2, :cond_2

    .line 940
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    :goto_2
    int-to-float v1, v1

    invoke-virtual {v2, v1, v5}, Lcom/android/camera/widget/PanoramaTrackingView;->setDeltaXY(FF)V

    .line 944
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 945
    return-void

    .line 933
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    if-eqz v2, :cond_1

    .line 934
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v2, v1}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorActivity(Z)V

    goto :goto_1

    .line 940
    :cond_4
    const/4 v1, -0x1

    goto :goto_2
.end method

.method private onIntermediateCaptureTimerCanceled(I)V
    .locals 1
    .parameter "captureIndex"

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v0}, Lcom/android/camera/widget/PanoramaTrackingView;->deactivateTrackingBox()V

    .line 955
    :cond_0
    return-void
.end method

.method private onIntermediateCaptureTimerStarted(I)V
    .locals 2
    .parameter "captureIndex"

    .prologue
    .line 963
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 966
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 967
    .local v0, currentIndicator:Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 968
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0           #currentIndicator:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 975
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v1, :cond_1

    .line 976
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v1}, Lcom/android/camera/widget/PanoramaTrackingView;->activateTrackingBox()V

    .line 977
    :cond_1
    return-void
.end method

.method private onIntermediatePhoto(ILandroid/graphics/Bitmap;)V
    .locals 9
    .parameter "captureIndex"
    .parameter "image"

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 985
    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    if-eq v3, p1, :cond_1

    .line 987
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current capture index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but receive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in onIntermediatePhoto()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    iput-boolean v8, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturingFrame:Z

    .line 995
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 998
    iget-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v3, :cond_6

    .line 1001
    if-nez p1, :cond_5

    .line 1004
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1006
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Camera is paused or idle, stop capturing panorama picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->stopCapture()V

    goto :goto_0

    .line 1012
    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1015
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1016
    .local v2, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1017
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1018
    invoke-direct {p0, v8, v5}, Lcom/android/camera/component/PanoramaUI;->updatePreviewThumbnailSize(IF)V

    .line 1021
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1022
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1023
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1024
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1025
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1026
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {p0, v3, v7, v7}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1027
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/camera/component/PanoramaUI;->onPreviewCreated(Landroid/graphics/Bitmap;)V

    .line 1033
    .end local v2           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    invoke-direct {p0, v7}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    goto :goto_0

    .line 1030
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner(Z)V

    goto :goto_1

    .line 1035
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1036
    invoke-direct {p0, p1, v5}, Lcom/android/camera/component/PanoramaUI;->updatePreviewThumbnailSize(IF)V

    goto :goto_0

    .line 1041
    :cond_6
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v3, :cond_7

    .line 1043
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v3}, Lcom/android/camera/widget/PanoramaTrackingView;->resetDeltaXY()V

    .line 1044
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    iget v5, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    iget v6, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaY:F

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/widget/PanoramaTrackingView;->setDeltaXY(FF)V

    .line 1045
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v3}, Lcom/android/camera/widget/PanoramaTrackingView;->deactivateTrackingBox()V

    .line 1046
    const/4 v3, 0x4

    if-ne p1, v3, :cond_7

    .line 1047
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v3, v8}, Lcom/android/camera/widget/PanoramaTrackingView;->setPanoramaDirection(I)V

    .line 1051
    :cond_7
    if-lez p1, :cond_8

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    if-eqz v3, :cond_8

    .line 1053
    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_a

    move v0, p1

    .line 1054
    .local v0, indicatorIndex:I
    :goto_2
    if-ltz v0, :cond_8

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 1056
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    aget-object v3, v3, v0

    const v5, 0x7f020058

    invoke-virtual {v3, v5}, Lcom/android/camera/widget/ColorMultiplyImageView;->setImageResource(I)V

    .line 1057
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v7}, Lcom/android/camera/widget/ColorMultiplyImageView;->applyColorMultiplication(Z)V

    .line 1062
    .end local v0           #indicatorIndex:I
    :cond_8
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1065
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v3, :cond_9

    .line 1067
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    const-string v5, "pref_camera_image_ratio"

    invoke-static {v3, v5, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1068
    .local v1, isWideScreen:Z
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v3}, Lcom/android/camera/widget/PanoramaTrackingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1069
    .local v2, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_b

    move v3, v4

    :goto_3
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1070
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v3}, Lcom/android/camera/widget/PanoramaTrackingView;->requestLayout()V

    .line 1074
    .end local v1           #isWideScreen:Z
    .end local v2           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v7, v7}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1075
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v7, v7}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1076
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1077
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1080
    invoke-direct {p0, v7}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    .line 1083
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v3, v8, v8}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    goto/16 :goto_0

    .line 1053
    :cond_a
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicators:[Lcom/android/camera/widget/ColorMultiplyImageView;

    array-length v3, v3

    sub-int/2addr v3, p1

    add-int/lit8 v0, v3, -0x1

    goto :goto_2

    .line 1069
    .restart local v1       #isWideScreen:Z
    .restart local v2       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_b
    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    goto :goto_3
.end method

.method private onIntermediateShutter(I)V
    .locals 0
    .parameter "captureIndex"

    .prologue
    .line 1148
    return-void
.end method

.method private onPreviewCreated(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "previewThumb"

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1159
    iget v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/PanoramaUI;->updatePreviewThumbnailSize(IF)V

    .line 1160
    return-void
.end method

.method private onReviewImageCreated(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 1168
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_2

    .line 1170
    :cond_0
    if-eqz p1, :cond_1

    .line 1171
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1177
    :cond_1
    :goto_0
    return-void

    .line 1176
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private onStitchCompleted()V
    .locals 1

    .prologue
    .line 1185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/component/PanoramaUI;->showProcessingDialog(Z)V

    .line 1188
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->completeTakingPicture()V

    .line 1189
    return-void
.end method

.method private onStitchStarted(Z)V
    .locals 4
    .parameter "isErrorHandling"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1197
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v0

    .line 1200
    .local v0, isIdleOrPaused:Z
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    .line 1201
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSlowArrowShown:Z

    .line 1204
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideThumbnailBar()V

    .line 1207
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1208
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_FrameIndexIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1211
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideArrows()V

    .line 1214
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1215
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1218
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideCenterIndicator()V

    .line 1221
    if-nez v0, :cond_3

    move v1, v2

    :goto_0
    invoke-direct {p0, v3, v1}, Lcom/android/camera/component/PanoramaUI;->showIndicator(ZZ)V

    .line 1224
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v1, :cond_2

    .line 1225
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v1, v3}, Lcom/android/camera/widget/PanoramaTrackingView;->setPanoramaDirection(I)V

    .line 1228
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideSweepIndicator()V

    .line 1231
    if-nez v0, :cond_5

    .line 1232
    if-nez p1, :cond_4

    const v1, 0x7f0a004b

    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/android/camera/component/PanoramaUI;->showProcessingDialog(ZI)V

    .line 1237
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    .line 1240
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->notifyProcessingTakenPictures()V

    .line 1241
    return-void

    :cond_3
    move v1, v3

    .line 1221
    goto :goto_0

    .line 1232
    :cond_4
    const v1, 0x7f0a004c

    goto :goto_1

    .line 1234
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Camera is paused or idle, will not show processing dialog"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onTracking(FF)V
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1249
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1280
    :cond_0
    :goto_0
    return-void

    .line 1253
    :cond_1
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 1257
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v1, :cond_4

    .line 1259
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    if-nez v1, :cond_2

    .line 1260
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    .line 1269
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSlowArrowShown:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    if-eqz v1, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f00

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 1271
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const v0, 0x7f02009b

    .line 1272
    .local v0, resId:I
    :goto_2
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1273
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1274
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSlowArrowShown:Z

    .line 1278
    .end local v0           #resId:I
    :cond_3
    iput p1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    .line 1279
    iput p2, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaY:F

    goto :goto_0

    .line 1264
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturingFrame:Z

    if-nez v1, :cond_2

    .line 1265
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/widget/PanoramaTrackingView;->setDeltaXY(FF)V

    goto :goto_1

    .line 1271
    :cond_5
    const v0, 0x7f020099

    goto :goto_2
.end method

.method private openCaptureUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 1288
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v2, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1290
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCaptureUIOpen:Z

    if-nez v2, :cond_0

    .line 1294
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1295
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1299
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    move v1, v3

    .line 1300
    .local v1, isMenuClosed:Z
    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v2, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1302
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1303
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1307
    :cond_2
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v2, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1308
    invoke-direct {p0, v3, v3}, Lcom/android/camera/component/PanoramaUI;->showIndicator(ZZ)V

    .line 1311
    :cond_3
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 1312
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1315
    :cond_4
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 1317
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideSweepIndicator()V

    .line 1318
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v2, v5, v5}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    .line 1319
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->getVirtualDeviceOrientation()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera/widget/PanoramaIndicatorView;->setDeviceOrientation(I)V

    .line 1320
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1324
    :cond_5
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCaptureUIOpen:Z

    goto :goto_0

    .line 1299
    .end local v1           #isMenuClosed:Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private registerEventListeners()V
    .locals 3

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1383
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$3;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1393
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$4;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1416
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->resolutionSelectedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$5;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1432
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->thumbnailButtonClickedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$6;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1445
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 5

    .prologue
    .line 1453
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1456
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$7;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1475
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->deviceOrientation:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$8;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1493
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$9;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$9;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1527
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$10;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$10;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1539
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$11;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/PanoramaUI$11;-><init>(Lcom/android/camera/component/PanoramaUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$12;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$12;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1595
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$13;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$13;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1608
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$14;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$14;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1618
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isNonLandscapeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1620
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$15;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$15;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1665
    :cond_0
    return-void
.end method

.method private showCancelButton(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1672
    if-eqz p1, :cond_1

    .line 1675
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1676
    .local v0, container:Landroid/view/View;
    instance-of v1, v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_0

    .line 1677
    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    .end local v0           #container:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1680
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    new-instance v2, Lcom/android/camera/component/PanoramaUI$16;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$16;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {p0, v1, v4, v4, v2}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 1695
    :goto_0
    return-void

    .line 1691
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1692
    invoke-direct {p0, v3}, Lcom/android/camera/component/PanoramaUI;->updateCancelButtonImage(Z)V

    .line 1693
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private showDirectionIndicator()V
    .locals 2

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    if-nez v0, :cond_1

    .line 1719
    :cond_0
    :goto_0
    return-void

    .line 1707
    :cond_1
    iget v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1713
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1718
    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 1710
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1707
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showIndicator(ZZ)V
    .locals 0
    .parameter "visible"
    .parameter "animation"

    .prologue
    .line 1728
    return-void
.end method

.method private syncResolutionBack()V
    .locals 0

    .prologue
    .line 1773
    return-void
.end method

.method private updateCancelButtonImage(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 1780
    if-nez p1, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1784
    :goto_0
    return-void

    .line 1783
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    const-string v1, "camera_stop_btn_pressed"

    const v2, 0x7f020078

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/component/PanoramaUI;->getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateIndicatorLocation(Z)V
    .locals 4
    .parameter "isSelfTimerOn"

    .prologue
    .line 1792
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    if-nez v2, :cond_1

    .line 1806
    :cond_0
    :goto_0
    return-void

    .line 1796
    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1798
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    .line 1799
    .local v1, rotation:Lcom/android/camera/rotate/UIRotation;
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1800
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1801
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    const v3, 0x7f0b008c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 1804
    :goto_1
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1803
    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    const v3, 0x7f0b008b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    goto :goto_1

    .line 1804
    :cond_3
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private updateIndicatorOrientation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 1814
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    if-nez v2, :cond_0

    .line 1837
    :goto_0
    return-void

    .line 1818
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1819
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1820
    .local v0, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1822
    const v2, 0x7f0b0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1823
    const v2, 0x7f0b0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1830
    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1833
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v2}, Lcom/android/camera/SelfTimerValue;->isOn()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/component/PanoramaUI;->updateIndicatorLocation(Z)V

    .line 1836
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {v2, p1}, Lcom/android/camera/rotate/RotateImageView;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 1827
    :cond_1
    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1828
    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method private updatePreviewThumbnailDirection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1845
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1846
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    packed-switch v1, :pswitch_data_0

    .line 1855
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1858
    :goto_0
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1859
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1862
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v1, :cond_0

    .line 1863
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideArrows()V

    .line 1864
    :cond_0
    return-void

    .line 1849
    :pswitch_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 1852
    :pswitch_1
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 1846
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePreviewThumbnailSize(IF)V
    .locals 3
    .parameter "captureIndex"
    .parameter "delta"

    .prologue
    .line 1872
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    packed-switch v1, :pswitch_data_0

    .line 1879
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 1880
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getThumbnailWidth()I

    move-result v1

    int-to-float v1, v1

    add-int/lit8 v2, p1, 0x1

    int-to-float v2, v2

    add-float/2addr v2, p2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1883
    .local v0, height:I
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 1884
    return-void

    .line 1876
    .end local v0           #height:I
    :pswitch_1
    neg-float p2, p2

    goto :goto_0

    .line 1872
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateToastRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 7
    .parameter "rotation"

    .prologue
    const v6, 0x7f0b005f

    const v5, 0x7f0b005d

    const/16 v4, 0xc

    const/16 v3, 0xa

    const/4 v2, -0x2

    .line 1892
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToastContent:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1921
    :cond_0
    :goto_0
    return-void

    .line 1896
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1899
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1900
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v1, Lcom/android/camera/component/PanoramaUI$17;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1919
    :goto_1
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1920
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToastContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1903
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToastContent:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/camera/component/PanoramaUI;->getDimension(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1904
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 1907
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToastContent:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/camera/component/PanoramaUI;->getDimension(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1908
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 1911
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToastContent:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/camera/component/PanoramaUI;->getDimension(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1912
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 1915
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToastContent:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/camera/component/PanoramaUI;->getDimension(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1916
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 1900
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->syncResolutionBack()V

    .line 278
    :cond_0
    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    .line 279
    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    .line 282
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 283
    return-void
.end method

.method public enterPanoramaMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 290
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enterPanoramaMode() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-eqz v1, :cond_0

    .line 294
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Re-enter panorama mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    .line 298
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->linkToController()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {p0, v1, v3}, Lcom/android/camera/component/PanoramaUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 317
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 318
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isZoomingSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->lockZoom()V

    .line 322
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->initializeUI()V

    .line 325
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->openCaptureUI()V

    .line 328
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    .line 331
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableSelfTimer()V

    .line 333
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enterPanoramaMode() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void

    .line 301
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot link to panorama controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exitPanoramaMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 341
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "exitPanoramaMode() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Re-exit panorama mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 363
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner()V

    .line 364
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/camera/component/PanoramaUI;->removeMessages(I)V

    .line 368
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsInternalExit:Z

    if-eqz v1, :cond_2

    .line 370
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Panorama InternalExit, return directly"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsInternalExit:Z

    .line 372
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    goto :goto_0

    .line 377
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->closeCaptureUI()V

    .line 380
    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lcom/android/camera/component/PanoramaUI;->showIndicator(ZZ)V

    .line 383
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideThumbnailBar()V

    .line 386
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 387
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    .line 390
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableSelfTimer()V

    .line 393
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    .line 394
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    if-eqz v1, :cond_4

    .line 395
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/component/PanoramaUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 400
    :goto_1
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isZoomingSupported()Z

    move-result v1

    if-nez v1, :cond_3

    .line 401
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->unlockZoom()V

    .line 404
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->collapseContentLayout()V

    .line 406
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "exitPanoramaMode() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot exit panorama mode because there is no panorama controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getContentLayoutID()I
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-nez v0, :cond_0

    .line 418
    const v0, 0x7f030020

    .line 419
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030021

    goto :goto_0
.end method

.method public final getResolutionHandler()Lcom/android/camera/IResolutionHandler;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    return-object v0
.end method

.method public getThumbnailHeight()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHeight:I

    return v0
.end method

.method public getThumbnailWidth()I
    .locals 3

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_image_ratio"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 446
    .local v0, isWideScreenPhoto:Z
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidthWide:I

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidth:I

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 476
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 534
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 537
    :goto_0
    return-void

    .line 479
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->onAborted()V

    goto :goto_0

    .line 483
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner()V

    goto :goto_0

    .line 487
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onDirectionLocked(I)V

    goto :goto_0

    .line 491
    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediateCaptureStart(I)V

    goto :goto_0

    .line 495
    :sswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediateCaptureTimerCanceled(I)V

    goto :goto_0

    .line 499
    :sswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediateCaptureTimerStarted(I)V

    goto :goto_0

    .line 503
    :sswitch_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediatePhoto(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 507
    :sswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediateShutter(I)V

    goto :goto_0

    .line 511
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onPreviewCreated(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 515
    :sswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onReviewImageCreated(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 519
    :sswitch_a
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->onStitchCompleted()V

    goto :goto_0

    .line 523
    :sswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onStitchStarted(Z)V

    goto :goto_0

    .line 528
    :sswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 529
    .local v0, array:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/android/camera/component/PanoramaUI;->onTracking(FF)V

    goto :goto_0

    .line 476
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_7
        0x6 -> :sswitch_6
        0x7 -> :sswitch_c
        0x8 -> :sswitch_8
        0x9 -> :sswitch_2
        0xa -> :sswitch_b
        0xb -> :sswitch_a
        0xc -> :sswitch_0
        0xd -> :sswitch_9
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 651
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 654
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->getPanoramaType()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    .line 657
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 658
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_1

    .line 660
    const v1, 0x7f0b008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidth:I

    .line 661
    const v1, 0x7f0b008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidthWide:I

    .line 662
    const v1, 0x7f0b008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHeight:I

    .line 672
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->registerEventListeners()V

    .line 675
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->setupPropertyChangedCallbacks()V

    .line 676
    return-void

    .line 654
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 666
    .restart local v0       #res:Landroid/content/res/Resources;
    :cond_1
    const v1, 0x7f0b0090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidth:I

    .line 667
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidth:I

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidthWide:I

    .line 668
    const v1, 0x7f0b0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHeight:I

    goto :goto_1
.end method

.method public isPanoramaModeEntered()Z
    .locals 1

    .prologue
    .line 806
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    return v0
.end method

.method public final prepareEnteringPanoramaMode(Z)V
    .locals 3
    .parameter "restartPreview"

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareEnteringPanoramaMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    .line 1351
    :cond_0
    return-void
.end method

.method public final prepareExitingPanoramaMode(Z)V
    .locals 3
    .parameter "restartPreview"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareExitingPanoramaMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 1372
    :goto_0
    return-void

    .line 1365
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->syncResolutionBack()V

    .line 1368
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->closeCaptureUI()V

    goto :goto_0
.end method

.method public final stopCapture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1736
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 1751
    :goto_0
    return-void

    .line 1740
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    .line 1743
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideSweepIndicator()V

    .line 1746
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    .line 1747
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    if-eqz v0, :cond_1

    .line 1748
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/PanoramaUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    .line 1750
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot stop capturing because there is no panorama controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
