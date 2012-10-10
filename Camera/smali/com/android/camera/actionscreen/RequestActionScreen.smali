.class public Lcom/android/camera/actionscreen/RequestActionScreen;
.super Lcom/android/camera/actionscreen/ActionScreen;
.source "RequestActionScreen.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "Request Action Screen"


# instance fields
.field private m_DoneButton:Landroid/view/View;

.field private m_IsLayoutLoaded:Z

.field private m_IsRequestLayoutOpen:Z

.field private m_ReCaptureButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2
    .parameter "cameraActivity"

    .prologue
    .line 38
    const-string v0, "Request Action Screen"

    const v1, 0x7f030028

    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/actionscreen/ActionScreen;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;I)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/actionscreen/RequestActionScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/actionscreen/RequestActionScreen;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/actionscreen/RequestActionScreen;->getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/actionscreen/RequestActionScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->onDoneClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/actionscreen/RequestActionScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/actionscreen/RequestActionScreen;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/actionscreen/RequestActionScreen;->getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/actionscreen/RequestActionScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->onReCaptureClicked()V

    return-void
.end method

.method private onDoneClicked()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onDoneClicked() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->returnRequestedMedia()V

    .line 72
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onDoneClicked() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onReCaptureClicked()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onReCaptureClicked() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, close later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->deleteLatestMedia()V

    .line 136
    sget-object v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->DeleteMedia:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/actionscreen/RequestActionScreen;->close(Lcom/android/camera/actionscreen/ActionScreenCloseReason;Z)V

    .line 138
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onReCaptureClicked() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openRequestLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 157
    iget-boolean v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_IsRequestLayoutOpen:Z

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/actionscreen/RequestActionScreen;->showUI(Landroid/view/View;ZZ)V

    .line 162
    iput-boolean v1, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_IsRequestLayoutOpen:Z

    .line 165
    iget-object v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 166
    iget-object v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    goto :goto_0
.end method


# virtual methods
.method protected closeActionScreen(Z)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getLayout()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_IsRequestLayoutOpen:Z

    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->completeCloseActionScreen()V

    .line 56
    :cond_0
    return-void
.end method

.method protected onKeyDown(ILcom/android/camera/input/KeyEventArgs;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 81
    iget v0, p2, Lcom/android/camera/input/KeyEventArgs;->repeatCount:I

    if-nez v0, :cond_0

    .line 83
    packed-switch p1, :pswitch_data_0

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/actionscreen/ActionScreen;->onKeyDown(ILcom/android/camera/input/KeyEventArgs;)Z

    move-result v0

    :goto_0
    return v0

    .line 86
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->onReCaptureClicked()V

    .line 87
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onMediaSaveCompleted(Lcom/android/camera/MediaEventArgs;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->onMediaSaveCompleted(Lcom/android/camera/MediaEventArgs;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/MediaEventArgs;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media save failed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->openRequestLayout()V

    goto :goto_0
.end method

.method protected openActionScreen()V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->isMediaSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->openRequestLayout()V

    .line 149
    :cond_0
    return-void
.end method

.method protected prepareActionScreen()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 176
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getLayout()Landroid/view/View;

    move-result-object v0

    .line 177
    .local v0, baseLayout:Landroid/view/View;
    const v2, 0x7f0800d6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 178
    .local v1, footer:Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_IsLayoutLoaded:Z

    if-nez v2, :cond_1

    .line 181
    instance-of v2, v1, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 182
    check-cast v2, Lcom/htc/widget/HtcFooter;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 183
    :cond_0
    const v2, 0x7f0800d8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    .line 184
    const v2, 0x7f0800d7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    .line 187
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 189
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    new-instance v3, Lcom/android/camera/actionscreen/RequestActionScreen$1;

    invoke-direct {v3, p0}, Lcom/android/camera/actionscreen/RequestActionScreen$1;-><init>(Lcom/android/camera/actionscreen/RequestActionScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 249
    :goto_0
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    .line 251
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    new-instance v3, Lcom/android/camera/actionscreen/RequestActionScreen$4;

    invoke-direct {v3, p0}, Lcom/android/camera/actionscreen/RequestActionScreen$4;-><init>(Lcom/android/camera/actionscreen/RequestActionScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    :goto_1
    iput-boolean v4, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_IsLayoutLoaded:Z

    .line 293
    :cond_1
    instance-of v2, v1, Lcom/htc/widget/HtcFooter;

    if-nez v2, :cond_2

    .line 303
    :cond_2
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 305
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020031

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 308
    :cond_3
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 310
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02002e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 315
    :cond_4
    instance-of v2, v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v2, :cond_5

    move-object v2, v0

    .line 316
    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/RequestActionScreen;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 317
    :cond_5
    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 318
    return-void

    .line 217
    :cond_6
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    new-instance v3, Lcom/android/camera/actionscreen/RequestActionScreen$2;

    invoke-direct {v3, p0}, Lcom/android/camera/actionscreen/RequestActionScreen$2;-><init>(Lcom/android/camera/actionscreen/RequestActionScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;

    new-instance v3, Lcom/android/camera/actionscreen/RequestActionScreen$3;

    invoke-direct {v3, p0}, Lcom/android/camera/actionscreen/RequestActionScreen$3;-><init>(Lcom/android/camera/actionscreen/RequestActionScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 279
    :cond_7
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;

    new-instance v3, Lcom/android/camera/actionscreen/RequestActionScreen$5;

    invoke-direct {v3, p0}, Lcom/android/camera/actionscreen/RequestActionScreen$5;-><init>(Lcom/android/camera/actionscreen/RequestActionScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
