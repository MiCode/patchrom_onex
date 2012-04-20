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

.field private m_IsFocusing:Z

.field private m_ModeAssigned:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    .line 76
    const-string v0, "Auto-Focus Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 65
    sget-object v0, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusMode:Lcom/android/camera/AutoFocusMode;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/AutoFocusController;[Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)Z
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

.method static synthetic access$100(Lcom/android/camera/component/AutoFocusController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/component/AutoFocusController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/component/AutoFocusController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/component/AutoFocusController;->m_ModeAssigned:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/component/AutoFocusController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->cancelAutoFocusDirectly()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/AutoFocusController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private autoFocus(Lcom/android/camera/component/AutoFocusController$FocusInfo;)Z
    .locals 14
    .parameter "focusInfo"

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/android/camera/component/AutoFocusController$FocusInfo;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 330
    :goto_0
    return v0

    .line 146
    :cond_0
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_1

    .line 147
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    invoke-virtual {v0}, [Landroid/graphics/RectF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/RectF;

    check-cast v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusAreas:[Landroid/graphics/RectF;

    .line 148
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusMode:Lcom/android/camera/AutoFocusMode;

    .line 150
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->startAutoFocusDirectly()V

    .line 151
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    array-length v0, v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    .local v9, focusAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    array-length v0, v0

    if-ge v10, v0, :cond_8

    .line 158
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    aget-object v0, v0, v10

    invoke-static {v0}, Lcom/android/camera/imaging/ImageUtility;->mapToCameraArea(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v12

    .line 161
    .local v12, rect:Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v0

    rsub-int v7, v0, 0x1f4

    .line 162
    .local v7, diffX:I
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v0

    rsub-int v8, v0, 0x1f4

    .line 163
    .local v8, diffY:I
    if-eqz v7, :cond_2

    .line 165
    iget v0, v12, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v7, 0x2

    sub-int/2addr v0, v1

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 166
    iget v0, v12, Landroid/graphics/Rect;->left:I

    add-int/lit16 v0, v0, 0x1f4

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 168
    :cond_2
    if-eqz v8, :cond_3

    .line 170
    iget v0, v12, Landroid/graphics/Rect;->top:I

    div-int/lit8 v1, v8, 0x2

    sub-int/2addr v0, v1

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 171
    iget v0, v12, Landroid/graphics/Rect;->top:I

    add-int/lit16 v0, v0, 0x1f4

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    .line 175
    :cond_3
    iget v0, v12, Landroid/graphics/Rect;->left:I

    const/16 v1, -0x3e8

    if-ge v0, v1, :cond_6

    .line 177
    iget v0, v12, Landroid/graphics/Rect;->right:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    rsub-int v1, v1, -0x3e8

    add-int/2addr v0, v1

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 178
    const/16 v0, -0x3e8

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 185
    :cond_4
    :goto_2
    iget v0, v12, Landroid/graphics/Rect;->top:I

    const/16 v1, -0x3e8

    if-ge v0, v1, :cond_7

    .line 187
    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    iget v1, v12, Landroid/graphics/Rect;->top:I

    rsub-int v1, v1, -0x3e8

    add-int/2addr v0, v1

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    .line 188
    const/16 v0, -0x3e8

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 196
    :cond_5
    :goto_3
    new-instance v0, Landroid/hardware/Camera$Area;

    const/4 v1, 0x1

    invoke-direct {v0, v12, v1}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocus() - Area = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 156
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 180
    :cond_6
    iget v0, v12, Landroid/graphics/Rect;->right:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_4

    .line 182
    iget v0, v12, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->right:I

    add-int/lit16 v1, v1, -0x3e8

    sub-int/2addr v0, v1

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 183
    const/16 v0, 0x3e8

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 190
    :cond_7
    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_5

    .line 192
    iget v0, v12, Landroid/graphics/Rect;->top:I

    iget v1, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v1, v1, -0x3e8

    sub-int/2addr v0, v1

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 193
    const/16 v0, 0x3e8

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 201
    .end local v7           #diffX:I
    .end local v8           #diffY:I
    .end local v12           #rect:Landroid/graphics/Rect;
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v6

    .line 202
    .local v6, controller:Lcom/android/camera/CameraController;
    if-nez v6, :cond_9

    .line 204
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - No camera controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 210
    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    .line 218
    iget-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_ModeAssigned:Z

    if-nez v0, :cond_a

    .line 219
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_e

    .line 220
    const-string v0, "continuous-picture"

    invoke-virtual {v6, v0}, Lcom/android/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    .line 223
    :goto_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_ModeAssigned:Z

    .line 227
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

    .line 229
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_b

    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/android/camera/component/AutoFocusController;->isInCenter([Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 231
    :cond_b
    invoke-virtual {v6, v9}, Lcom/android/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 232
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Face:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_12

    .line 234
    new-instance v11, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    array-length v0, v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .local v11, meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    const/4 v10, 0x0

    :goto_5
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    array-length v0, v0

    if-ge v10, v0, :cond_11

    .line 237
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    aget-object v0, v0, v10

    invoke-static {v0}, Lcom/android/camera/imaging/ImageUtility;->mapToCameraArea(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v12

    .line 240
    .restart local v12       #rect:Landroid/graphics/Rect;
    iget v0, v12, Landroid/graphics/Rect;->left:I

    const/16 v1, -0x3e8

    if-ge v0, v1, :cond_f

    .line 242
    iget v0, v12, Landroid/graphics/Rect;->right:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    rsub-int v1, v1, -0x3e8

    add-int/2addr v0, v1

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 243
    const/16 v0, -0x3e8

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 250
    :cond_c
    :goto_6
    iget v0, v12, Landroid/graphics/Rect;->top:I

    const/16 v1, -0x3e8

    if-ge v0, v1, :cond_10

    .line 252
    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    iget v1, v12, Landroid/graphics/Rect;->top:I

    rsub-int v1, v1, -0x3e8

    add-int/2addr v0, v1

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    .line 253
    const/16 v0, -0x3e8

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 261
    :cond_d
    :goto_7
    new-instance v0, Landroid/hardware/Camera$Area;

    const/4 v1, 0x1

    invoke-direct {v0, v12, v1}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocus() - Metering area = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 222
    .end local v11           #meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    .end local v12           #rect:Landroid/graphics/Rect;
    :cond_e
    const-string v0, "continuous-video"

    invoke-virtual {v6, v0}, Lcom/android/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 245
    .restart local v11       #meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    .restart local v12       #rect:Landroid/graphics/Rect;
    :cond_f
    iget v0, v12, Landroid/graphics/Rect;->right:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_c

    .line 247
    iget v0, v12, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->right:I

    add-int/lit16 v1, v1, -0x3e8

    sub-int/2addr v0, v1

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 248
    const/16 v0, 0x3e8

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto :goto_6

    .line 255
    :cond_10
    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_d

    .line 257
    iget v0, v12, Landroid/graphics/Rect;->top:I

    iget v1, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v1, v1, -0x3e8

    sub-int/2addr v0, v1

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 258
    const/16 v0, 0x3e8

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_7

    .line 264
    .end local v12           #rect:Landroid/graphics/Rect;
    :cond_11
    invoke-virtual {v6, v11}, Lcom/android/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    .line 276
    .end local v11           #meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    :goto_8
    invoke-virtual {v6}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 277
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->autoFocusStartedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/AutoFocusEventArgs;

    iget-object v2, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    iget-wide v4, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;J)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

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

    invoke-virtual {v13, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 281
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    invoke-virtual {v0}, [Landroid/graphics/RectF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/RectF;

    check-cast v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusAreas:[Landroid/graphics/RectF;

    .line 282
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusMode:Lcom/android/camera/AutoFocusMode;

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    .line 287
    iget-wide v0, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    .line 290
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->triggerFocusInQueue()V

    .line 291
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 267
    :cond_12
    invoke-virtual {v6, v9}, Lcom/android/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_8

    .line 272
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 273
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_8

    .line 295
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    .line 299
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    if-eq v0, v1, :cond_15

    .line 301
    invoke-virtual {v6, v9}, Lcom/android/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 302
    invoke-virtual {v6, v9}, Lcom/android/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    .line 303
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    .line 304
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - Enable touch AEC"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :goto_9
    const-string v0, "auto"

    invoke-virtual {v6, v0}, Lcom/android/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v6}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 322
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    invoke-virtual {v0}, [Landroid/graphics/RectF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/RectF;

    check-cast v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusAreas:[Landroid/graphics/RectF;

    .line 323
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusMode:Lcom/android/camera/AutoFocusMode;

    .line 326
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->autoFocusStartingEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/AutoFocusEventArgs;

    iget-object v2, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    iget-wide v4, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;J)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 329
    const/16 v0, 0x2711

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/camera/component/AutoFocusController;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    .line 330
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 309
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 310
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_9
.end method

.method private autoFocus([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)Z
    .locals 4
    .parameter "focusAreas"
    .parameter "focusMode"

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v2, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Focus Queue is null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x32

    if-ne v2, v3, :cond_2

    .line 92
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Focus Queue is full, drop this focus"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_2
    new-instance v0, Lcom/android/camera/component/AutoFocusController$FocusInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/component/AutoFocusController$FocusInfo;-><init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)V

    .line 99
    .local v0, info:Lcom/android/camera/component/AutoFocusController$FocusInfo;
    invoke-virtual {v0}, Lcom/android/camera/component/AutoFocusController$FocusInfo;->isNull()Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    iget-boolean v1, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    const/4 v1, 0x1

    goto :goto_0

    .line 105
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/camera/component/AutoFocusController;->autoFocus(Lcom/android/camera/component/AutoFocusController$FocusInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method private cancelAutoFocus()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "cancelAutoFocus()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/component/AutoFocusController;->removeMessages(I)V

    .line 357
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/android/camera/component/AutoFocusController;->removeMessages(I)V

    .line 358
    iget-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->cancelAutoFocusDirectly()V

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    .line 363
    :cond_0
    return-void
.end method

.method private cancelAutoFocusDirectly()V
    .locals 3

    .prologue
    .line 370
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "cancelAutoFocusDirectly()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "this.getCamera().cancelAutoFocus();"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 379
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "autoFocus() - Failed to cancel auto-focus"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/component/AutoFocusController;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto :goto_0
.end method

.method private isInCenter([Landroid/graphics/RectF;)Z
    .locals 6
    .parameter "areas"

    .prologue
    const/16 v5, 0xfa

    const/16 v4, -0xfa

    const/4 v1, 0x0

    .line 343
    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v1

    .line 346
    :cond_1
    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/android/camera/imaging/ImageUtility;->mapToCameraArea(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    .line 347
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
    .line 589
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusFinished"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/android/camera/component/AutoFocusController;->removeMessages(I)V

    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    .line 598
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

    .line 599
    iget-wide v0, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    .line 602
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->triggerFocusInQueue()V

    .line 603
    return-void
.end method

.method private startAutoFocus()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 527
    sget-object v0, Lcom/android/camera/TIME;->AutoFocusCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "this.getCamera().autoFocus(this)"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 538
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

    .line 541
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
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

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v9

    .line 546
    .local v9, ex:Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "startAutoFocus() - Failed to start auto-focus"

    invoke-static {v0, v1, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 547
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lcom/android/camera/component/AutoFocusController;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto :goto_0
.end method

.method private startAutoFocusDirectly()V
    .locals 3

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startAutoFocusDirectly()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "this.getCamera().autoFocus(this)"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 569
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "startAutoFocus() - Failed to start auto-focus"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 570
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

    .line 114
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Focus Queue is null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Focsuing, wait for AutoFinished callback to triggger next focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "No more focus in queue"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/AutoFocusController$FocusInfo;

    .line 130
    .local v0, info:Lcom/android/camera/component/AutoFocusController$FocusInfo;
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 131
    invoke-direct {p0, v0}, Lcom/android/camera/component/AutoFocusController;->autoFocus(Lcom/android/camera/component/AutoFocusController$FocusInfo;)Z

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 391
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 400
    invoke-super {p0, p1}, Lcom/android/camera/component/CameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 403
    :goto_0
    return-void

    .line 394
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/component/AutoFocusController;->onAutoFocusFinished(Z)V

    goto :goto_0

    .line 397
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->startAutoFocus()V

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 412
    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    .line 415
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_FocusQueue:Ljava/util/ArrayList;

    .line 416
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/component/AutoFocusController;->focusID:J

    .line 419
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 420
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, v0, Lcom/android/camera/CameraThread;->requestAutoFocusEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoFocusController$1;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 429
    iget-object v1, v0, Lcom/android/camera/CameraThread;->requestCancelAutoFocusEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoFocusController$2;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 449
    iget-object v1, v0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoFocusController$3;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 461
    iget-object v1, v0, Lcom/android/camera/CameraThread;->previewStoppingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoFocusController$4;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 473
    iget-object v1, v0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoFocusController$5;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 494
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportVideoSnapshot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$6;

    iget-object v3, v0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/AutoFocusController$6;-><init>(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_0
    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .parameter "isSuccessful"
    .parameter "camera"

    .prologue
    .line 580
    sget-object v0, Lcom/android/camera/TIME;->AutoFocusCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->End()V

    .line 581
    invoke-direct {p0, p1}, Lcom/android/camera/component/AutoFocusController;->onAutoFocusFinished(Z)V

    .line 582
    return-void
.end method
