.class public final Lcom/android/camera/component/AutoFocusController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "AutoFocusController.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/AutoFocusController$FocusInfo;
    }
.end annotation


# static fields
.field private static final FOCUS_QUEUE_SIZE:I = 0x32

.field private static final MSG_RECORDING_FINISH_AUTO_FOCUS:I = 0x2712

.field private static final MSG_START_FOCUS:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Auto-Focus Controller"


# instance fields
.field private focusID:J

.field private m_FocusAreas:[Landroid/graphics/RectF;

.field private m_FocusMode:Lcom/android/camera/AutoFocusMode;

.field private m_FocusQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/component/AutoFocusController$FocusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsFocusLocked:Z

.field private m_IsFocusLocking:Z

.field private m_IsFocusing:Z

.field private m_LastFocusInfo:Lcom/android/camera/component/AutoFocusController$FocusInfo;

.field private m_ModeAssigned:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    .line 89
    const-string v0, "Auto-Focus Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 75
    sget-object v0, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusMode:Lcom/android/camera/AutoFocusMode;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/AutoFocusController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/AutoFocusController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/AutoFocusController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->cancelAutoFocusDirectly()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/component/AutoFocusController;)Lcom/android/camera/component/AutoFocusController$FocusInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_LastFocusInfo:Lcom/android/camera/component/AutoFocusController$FocusInfo;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/component/AutoFocusController$FocusInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/camera/component/AutoFocusController;->autoFocus(Lcom/android/camera/component/AutoFocusController$FocusInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/AutoFocusController;[Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/AutoFocusController;->autoFocus([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/AutoFocusController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/AutoFocusController;[Landroid/graphics/RectF;[Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/AutoFocusController;->autoFocus([Landroid/graphics/RectF;[Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/component/AutoFocusController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/component/AutoFocusController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/component/AutoFocusController;->m_ModeAssigned:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/component/AutoFocusController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocked:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/component/AutoFocusController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocked:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/AutoFocusController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/component/AutoFocusController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    return p1
.end method

.method private autoFocus(Lcom/android/camera/component/AutoFocusController$FocusInfo;)Z
    .locals 12
    .parameter "focusInfo"

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/android/camera/component/AutoFocusController$FocusInfo;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 435
    :goto_0
    return v0

    .line 191
    :cond_0
    iput-object p1, p0, Lcom/android/camera/component/AutoFocusController;->m_LastFocusInfo:Lcom/android/camera/component/AutoFocusController$FocusInfo;

    .line 193
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_3

    .line 195
    iget-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocked:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    if-nez v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - Start locking auto-focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    invoke-virtual {v0}, [Landroid/graphics/RectF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/RectF;

    check-cast v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusAreas:[Landroid/graphics/RectF;

    .line 199
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusMode:Lcom/android/camera/AutoFocusMode;

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    .line 201
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->startAutoFocusDirectly()V

    .line 215
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 203
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocked:Z

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - Aotu-focus is already locked"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/component/AutoFocusController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/component/AutoFocusController$1;-><init>(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/component/AutoFocusController$FocusInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 219
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    array-length v0, v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    .local v7, focusAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    array-length v0, v0

    if-ge v8, v0, :cond_8

    .line 222
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    aget-object v0, v0, v8

    invoke-static {v0}, Lcom/android/camera/imaging/ImageUtility;->mapToCameraArea(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v10

    .line 241
    .local v10, rect:Landroid/graphics/Rect;
    iget v0, v10, Landroid/graphics/Rect;->left:I

    const/16 v1, -0x3e8

    if-ge v0, v1, :cond_6

    .line 243
    iget v0, v10, Landroid/graphics/Rect;->right:I

    iget v1, v10, Landroid/graphics/Rect;->left:I

    rsub-int v1, v1, -0x3e8

    add-int/2addr v0, v1

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 244
    const/16 v0, -0x3e8

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 251
    :cond_4
    :goto_3
    iget v0, v10, Landroid/graphics/Rect;->top:I

    const/16 v1, -0x3e8

    if-ge v0, v1, :cond_7

    .line 253
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    iget v1, v10, Landroid/graphics/Rect;->top:I

    rsub-int v1, v1, -0x3e8

    add-int/2addr v0, v1

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 254
    const/16 v0, -0x3e8

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 262
    :cond_5
    :goto_4
    new-instance v0, Landroid/hardware/Camera$Area;

    const/4 v1, 0x1

    invoke-direct {v0, v10, v1}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocus() - Area = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 246
    :cond_6
    iget v0, v10, Landroid/graphics/Rect;->right:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_4

    .line 248
    iget v0, v10, Landroid/graphics/Rect;->left:I

    iget v1, v10, Landroid/graphics/Rect;->right:I

    add-int/lit16 v1, v1, -0x3e8

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 249
    const/16 v0, 0x3e8

    iput v0, v10, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 256
    :cond_7
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_5

    .line 258
    iget v0, v10, Landroid/graphics/Rect;->top:I

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v1, v1, -0x3e8

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 259
    const/16 v0, 0x3e8

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 267
    .end local v10           #rect:Landroid/graphics/Rect;
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v6

    .line 268
    .local v6, controller:Lcom/android/camera/CameraController;
    if-nez v6, :cond_9

    .line 270
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - No camera controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 276
    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    .line 283
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_e

    .line 284
    const-string v0, "caf-focus-mode"

    const-string v1, "touch"

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :goto_5
    iget-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_ModeAssigned:Z

    if-nez v0, :cond_a

    .line 289
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_f

    .line 290
    const-string v0, "continuous-picture"

    invoke-virtual {v6, v0}, Lcom/android/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    .line 293
    :goto_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_ModeAssigned:Z

    .line 297
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->autoFocusStartingEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/AutoFocusEventArgs;

    iget-object v2, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    iget-wide v4, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;J)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 299
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_b

    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/android/camera/component/AutoFocusController;->isInCenter([Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 301
    :cond_b
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 303
    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->meteringAreas:[Landroid/graphics/RectF;

    array-length v0, v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    .local v9, meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    const/4 v8, 0x0

    :goto_7
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->meteringAreas:[Landroid/graphics/RectF;

    array-length v0, v0

    if-ge v8, v0, :cond_12

    .line 306
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->meteringAreas:[Landroid/graphics/RectF;

    aget-object v0, v0, v8

    invoke-static {v0}, Lcom/android/camera/imaging/ImageUtility;->mapToCameraArea(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v10

    .line 309
    .restart local v10       #rect:Landroid/graphics/Rect;
    iget v0, v10, Landroid/graphics/Rect;->left:I

    const/16 v1, -0x3e8

    if-ge v0, v1, :cond_10

    .line 311
    iget v0, v10, Landroid/graphics/Rect;->right:I

    iget v1, v10, Landroid/graphics/Rect;->left:I

    rsub-int v1, v1, -0x3e8

    add-int/2addr v0, v1

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 312
    const/16 v0, -0x3e8

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 319
    :cond_c
    :goto_8
    iget v0, v10, Landroid/graphics/Rect;->top:I

    const/16 v1, -0x3e8

    if-ge v0, v1, :cond_11

    .line 321
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    iget v1, v10, Landroid/graphics/Rect;->top:I

    rsub-int v1, v1, -0x3e8

    add-int/2addr v0, v1

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 322
    const/16 v0, -0x3e8

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 330
    :cond_d
    :goto_9
    new-instance v0, Landroid/hardware/Camera$Area;

    const/4 v1, 0x1

    invoke-direct {v0, v10, v1}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocus() - Metering area = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 286
    .end local v9           #meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    .end local v10           #rect:Landroid/graphics/Rect;
    :cond_e
    const-string v0, "caf-focus-mode"

    const-string v1, "default"

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 292
    :cond_f
    const-string v0, "continuous-video"

    invoke-virtual {v6, v0}, Lcom/android/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 314
    .restart local v9       #meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    .restart local v10       #rect:Landroid/graphics/Rect;
    :cond_10
    iget v0, v10, Landroid/graphics/Rect;->right:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_c

    .line 316
    iget v0, v10, Landroid/graphics/Rect;->left:I

    iget v1, v10, Landroid/graphics/Rect;->right:I

    add-int/lit16 v1, v1, -0x3e8

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 317
    const/16 v0, 0x3e8

    iput v0, v10, Landroid/graphics/Rect;->right:I

    goto :goto_8

    .line 324
    :cond_11
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_d

    .line 326
    iget v0, v10, Landroid/graphics/Rect;->top:I

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v1, v1, -0x3e8

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 327
    const/16 v0, 0x3e8

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_9

    .line 333
    .end local v10           #rect:Landroid/graphics/Rect;
    :cond_12
    invoke-virtual {v6, v9}, Lcom/android/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    .line 381
    .end local v9           #meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    :goto_a
    invoke-virtual {v6}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 382
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->autoFocusStartedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/AutoFocusEventArgs;

    iget-object v2, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    iget-wide v4, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;J)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    new-instance v0, Lcom/android/camera/AutoFocusEventArgs;

    iget-object v1, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    invoke-virtual {v1}, [Landroid/graphics/RectF;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/RectF;

    check-cast v1, [Landroid/graphics/RectF;

    iget-object v2, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    iget-wide v3, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;JZ)V

    invoke-virtual {v11, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 386
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    invoke-virtual {v0}, [Landroid/graphics/RectF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/RectF;

    check-cast v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusAreas:[Landroid/graphics/RectF;

    .line 387
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusMode:Lcom/android/camera/AutoFocusMode;

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    .line 392
    iget-wide v0, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    .line 395
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->triggerFocusInQueue()V

    .line 396
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 377
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 378
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_a

    .line 400
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    .line 404
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    if-eq v0, v1, :cond_15

    .line 406
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 407
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    .line 408
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    .line 409
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - Enable touch AEC"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :goto_b
    const-string v0, "auto"

    invoke-virtual {v6, v0}, Lcom/android/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v6}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 427
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    invoke-virtual {v0}, [Landroid/graphics/RectF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/RectF;

    check-cast v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusAreas:[Landroid/graphics/RectF;

    .line 428
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusMode:Lcom/android/camera/AutoFocusMode;

    .line 431
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->autoFocusStartingEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/AutoFocusEventArgs;

    iget-object v2, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    iget-wide v4, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;J)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 434
    const/16 v0, 0x2711

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/camera/component/AutoFocusController;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    .line 435
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 414
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 415
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_b
.end method

.method private autoFocus([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)Z
    .locals 1
    .parameter "focusAreas"
    .parameter "focusMode"

    .prologue
    .line 97
    invoke-direct {p0, p1, p1, p2}, Lcom/android/camera/component/AutoFocusController;->autoFocus([Landroid/graphics/RectF;[Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)Z

    move-result v0

    return v0
.end method

.method private autoFocus([Landroid/graphics/RectF;[Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)Z
    .locals 4
    .parameter "focusAreas"
    .parameter "meteringAreas"
    .parameter "focusMode"

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Focus Queue is null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_0
    return v1

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x32

    if-ne v2, v3, :cond_2

    .line 136
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Focus Queue is full, drop this focus"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_2
    new-instance v0, Lcom/android/camera/component/AutoFocusController$FocusInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/camera/component/AutoFocusController$FocusInfo;-><init>([Landroid/graphics/RectF;[Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)V

    .line 144
    .local v0, info:Lcom/android/camera/component/AutoFocusController$FocusInfo;
    invoke-virtual {v0}, Lcom/android/camera/component/AutoFocusController$FocusInfo;->isNull()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    iget-boolean v1, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 148
    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    const/4 v1, 0x1

    goto :goto_0

    .line 150
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/camera/component/AutoFocusController;->autoFocus(Lcom/android/camera/component/AutoFocusController$FocusInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 460
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "cancelAutoFocus()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/component/AutoFocusController;->removeMessages(I)V

    .line 462
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/android/camera/component/AutoFocusController;->removeMessages(I)V

    .line 463
    iget-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    if-eqz v0, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->cancelAutoFocusDirectly()V

    .line 466
    iput-boolean v2, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    .line 467
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->triggerFocusInQueue()V

    .line 471
    :goto_0
    return-void

    .line 470
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    goto :goto_0
.end method

.method private cancelAutoFocusDirectly()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 478
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "cancelAutoFocusDirectly()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iput-boolean v3, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "this.getCamera().cancelAutoFocus();"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 488
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "autoFocus() - Failed to cancel auto-focus"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 489
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/android/camera/component/AutoFocusController;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto :goto_0
.end method

.method private isInCenter([Landroid/graphics/RectF;)Z
    .locals 6
    .parameter "areas"

    .prologue
    const/16 v5, 0xfa

    const/16 v4, -0xfa

    const/4 v1, 0x0

    .line 448
    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v1

    .line 451
    :cond_1
    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/android/camera/imaging/ImageUtility;->mapToCameraArea(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    .line 452
    .local v0, rect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private onAutoFocusFinished(Z)V
    .locals 7
    .parameter "isSuccessful"

    .prologue
    const/4 v2, 0x0

    .line 763
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusFinished"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/android/camera/component/AutoFocusController;->removeMessages(I)V

    .line 769
    iput-boolean v2, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    .line 770
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusFinished() - Auto-focus locked"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocked:Z

    .line 775
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    .line 778
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v6, v0, Lcom/android/camera/CameraThread;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    new-instance v0, Lcom/android/camera/AutoFocusEventArgs;

    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusAreas:[Landroid/graphics/RectF;

    invoke-virtual {v1}, [Landroid/graphics/RectF;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusMode:Lcom/android/camera/AutoFocusMode;

    iget-wide v3, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;JZ)V

    invoke-virtual {v6, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 779
    iget-wide v0, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    .line 782
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->triggerFocusInQueue()V

    .line 783
    return-void
.end method

.method private startAutoFocus()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 701
    sget-object v0, Lcom/android/camera/TIME;->AutoFocusCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "this.getCamera().autoFocus(this)"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 712
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->autoFocusStartedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/AutoFocusEventArgs;

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusAreas:[Landroid/graphics/RectF;

    invoke-virtual {v0}, [Landroid/graphics/RectF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusMode:Lcom/android/camera/AutoFocusMode;

    iget-wide v4, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;J)V

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 715
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    const/16 v2, 0x2712

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x1f4

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/AutoFocusController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 718
    :catch_0
    move-exception v9

    .line 720
    .local v9, ex:Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "startAutoFocus() - Failed to start auto-focus"

    invoke-static {v0, v1, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 721
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lcom/android/camera/component/AutoFocusController;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto :goto_0
.end method

.method private startAutoFocusDirectly()V
    .locals 3

    .prologue
    .line 730
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startAutoFocusDirectly()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "this.getCamera().autoFocus(this)"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :goto_0
    return-void

    .line 741
    :catch_0
    move-exception v0

    .line 743
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startAutoFocus() - Failed to start auto-focus"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 744
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/component/AutoFocusController;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto :goto_0
.end method

.method private triggerFocusInQueue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Focus Queue is null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Focsuing, wait for AutoFinished callback to triggger next focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "No more focus in queue"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/AutoFocusController$FocusInfo;

    .line 175
    .local v0, info:Lcom/android/camera/component/AutoFocusController$FocusInfo;
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 176
    invoke-direct {p0, v0}, Lcom/android/camera/component/AutoFocusController;->autoFocus(Lcom/android/camera/component/AutoFocusController$FocusInfo;)Z

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 500
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 509
    invoke-super {p0, p1}, Lcom/android/camera/component/CameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 512
    :goto_0
    return-void

    .line 503
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/component/AutoFocusController;->onAutoFocusFinished(Z)V

    goto :goto_0

    .line 506
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->startAutoFocus()V

    goto :goto_0

    .line 500
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 521
    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    .line 524
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    .line 525
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    .line 528
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 529
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, v0, Lcom/android/camera/CameraThread;->cameraClosedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoFocusController$2;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 539
    iget-object v1, v0, Lcom/android/camera/CameraThread;->requestAutoFocusEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoFocusController$3;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 548
    iget-object v1, v0, Lcom/android/camera/CameraThread;->requestCancelAutoFocusEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoFocusController$4;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 568
    iget-object v1, v0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoFocusController$5;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 587
    iget-object v1, v0, Lcom/android/camera/CameraThread;->previewStoppingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoFocusController$6;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 599
    iget-object v1, v0, Lcom/android/camera/CameraThread;->isAutoFocusLocked:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoFocusController$7;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 642
    iget-object v1, v0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoFocusController$8;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 663
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportVideoSnapshot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$9;

    iget-object v3, v0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/AutoFocusController$9;-><init>(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_0
    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .parameter "isSuccessful"
    .parameter "camera"

    .prologue
    .line 754
    sget-object v0, Lcom/android/camera/TIME;->AutoFocusCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->End()V

    .line 755
    invoke-direct {p0, p1}, Lcom/android/camera/component/AutoFocusController;->onAutoFocusFinished(Z)V

    .line 756
    return-void
.end method
