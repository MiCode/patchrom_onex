.class public final Lcom/android/camera/component/ZoomBar;
.super Lcom/android/camera/component/UIComponent;
.source "ZoomBar.java"


# static fields
.field private static final MSG_CHANGE_ZOOM:I = 0x2712

.field private static final MSG_SHOW_ZOOM_BAR:I = 0x2713

.field private static final MSG_ZOOM_RANGE_CHANGED:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Zoom Bar"


# instance fields
.field private m_IsUpdatingZoom:Z

.field private m_ZoomBar:Landroid/widget/SeekBar;

.field private m_ZoomBarContainer:Landroid/view/View;

.field private m_ZoomInButton:Landroid/view/View;

.field private m_ZoomOutButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 54
    const-string v0, "Zoom Bar"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ZoomBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ZoomBar;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/ZoomBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/component/ZoomBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/ZoomBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->cancelAutoFocus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/ZoomBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->syncFromCurrentZoom()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/ZoomBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->hideZoomBar()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/ZoomBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->showZoomBar()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/component/ZoomBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomInButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/ZoomBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomOutButton:Landroid/view/View;

    return-object v0
.end method

.method private cancelAutoFocus()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 63
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFocusingState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 72
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 68
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 70
    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideZoomBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/component/ZoomBar;->showUI(Landroid/view/View;ZZ)V

    .line 126
    :cond_0
    const/16 v0, 0x2713

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ZoomBar;->removeMessages(I)V

    .line 127
    return-void
.end method

.method private showZoomBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 348
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 351
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v1

    if-gtz v1, :cond_0

    .line 367
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isZoomLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->syncFromCurrentZoom()V

    .line 378
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/camera/component/ZoomBar;->showUI(Landroid/view/View;ZZ)V

    .line 379
    const/16 v1, 0x2713

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ZoomBar;->removeMessages(I)V

    goto :goto_0
.end method

.method private syncFromCurrentZoom()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 387
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "syncFromCurrentZoom()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 391
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v2, v0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Range;

    .line 392
    .local v1, range:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    .line 393
    if-eqz v1, :cond_1

    .line 395
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncFromCurrentZoom() - ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    iget-object v2, v1, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v1, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, v4, v2

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 397
    iget-object v3, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    iget-object v2, v0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 404
    :goto_0
    iput-boolean v5, p0, Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z

    .line 406
    .end local v0           #cameraThread:Lcom/android/camera/CameraThread;
    .end local v1           #range:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    :cond_0
    return-void

    .line 401
    .restart local v0       #cameraThread:Lcom/android/camera/CameraThread;
    .restart local v1       #range:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "syncFromCurrentZoom() - No zoom range"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 82
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 114
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 89
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-ne v1, v2, :cond_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->cancelAutoFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->isCaptureUIBlocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->showZoomBar()V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 106
    .end local v0           #cameraActivity:Lcom/android/camera/HTCCamera;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->showZoomBar()V

    goto :goto_0

    .line 110
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->syncFromCurrentZoom()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 137
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 140
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 141
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v4

    const v5, 0x7f080166

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    .line 142
    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v5, 0x7f080168

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    .line 143
    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v5, 0x7f080167

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomInButton:Landroid/view/View;

    .line 144
    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v5, 0x7f080169

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomOutButton:Landroid/view/View;

    .line 147
    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBarContainer:Landroid/view/View;

    const v5, 0x7f08016a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 148
    .local v3, zoomBarReceiver:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v4

    if-nez v4, :cond_1

    .line 149
    sget-object v4, Lcom/android/camera/rotate/UIRotation;->InverseLandscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 152
    :goto_0
    new-instance v4, Lcom/android/camera/component/ZoomBar$1;

    invoke-direct {v4, p0}, Lcom/android/camera/component/ZoomBar$1;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v4

    if-nez v4, :cond_2

    .line 167
    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v5, Lcom/android/camera/rotate/UIRotation;->InverseLandscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 170
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/component/ZoomBar;->syncFromCurrentZoom()V

    .line 171
    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    new-instance v5, Lcom/android/camera/component/ZoomBar$2;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$2;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 203
    invoke-static {}, Lcom/android/camera/FeatureConfig;->canChangeZoomByVolumeKeys()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/component/ZoomBar$3;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$3;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 225
    :cond_0
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->restartingCameraEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/component/ZoomBar$4;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$4;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/camera/component/ZoomBar;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    .line 236
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    new-instance v4, Lcom/android/camera/component/ZoomBar$5;

    invoke-direct {v4, p0, v1}, Lcom/android/camera/component/ZoomBar$5;-><init>(Lcom/android/camera/component/ZoomBar;Lcom/android/camera/CameraThread;)V

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 253
    new-instance v2, Lcom/android/camera/component/ZoomBar$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ZoomBar$6;-><init>(Lcom/android/camera/component/ZoomBar;)V

    .line 261
    .local v2, modeChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v4, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 262
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v4, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 263
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    new-instance v5, Lcom/android/camera/component/ZoomBar$7;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$7;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 272
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    new-instance v5, Lcom/android/camera/component/ZoomBar$8;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$8;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 283
    iget-object v4, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/camera/component/ZoomBar$9;

    iget-object v6, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/camera/component/ZoomBar$9;-><init>(Lcom/android/camera/component/ZoomBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v5, Lcom/android/camera/component/ZoomBar$10;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$10;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 303
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v5, Lcom/android/camera/component/ZoomBar$11;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$11;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 312
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->isZoomLocked:Lcom/android/camera/property/Property;

    new-instance v5, Lcom/android/camera/component/ZoomBar$12;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$12;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 323
    iget-object v4, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/camera/component/ZoomBar$13;

    iget-object v6, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-direct {v5, p0, v6, v7}, Lcom/android/camera/component/ZoomBar$13;-><init>(Lcom/android/camera/component/ZoomBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v5, Lcom/android/camera/component/ZoomBar$14;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBar$14;-><init>(Lcom/android/camera/component/ZoomBar;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 340
    return-void

    .line 151
    .end local v1           #cameraThread:Lcom/android/camera/CameraThread;
    .end local v2           #modeChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;
    :cond_1
    sget-object v4, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto/16 :goto_0

    .line 169
    :cond_2
    iget-object v4, p0, Lcom/android/camera/component/ZoomBar;->m_ZoomBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/camera/rotate/RotateRelativeLayout;

    sget-object v5, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto/16 :goto_1
.end method
