.class public final Lcom/android/camera/component/ViewFinder;
.super Lcom/android/camera/component/UIComponent;
.source "ViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ViewFinder$20;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_ANIMATION:I = 0x0

.field private static final ACTION_DRAW_FLIP_ANIMATION:I = 0x1

.field private static final ACTION_DRAW_REAL_TIME_PREVIEW:I = 0x2

.field private static final ACTION_DRAW_REVIEW_IMAGE:I = 0x3

.field private static final FLIP_DURATION:I = 0x12c

.field private static final FLIP_SCALE_RATIO:D = 0.7

.field private static final FLIP_STAGE_FIRST:I = 0x1

.field private static final FLIP_STAGE_NONE:I = 0x0

.field private static final FLIP_STAGE_SECOND:I = 0x2

.field private static final MSG_DO_FLIP_ANIMATION:I = 0x2713

.field private static final MSG_DRAW_REAL_TIME_PREVIEW:I = 0x2717

.field private static final MSG_FIRST_PREVIEW_FRAME_RETRIEVED:I = 0x2710

.field private static final MSG_HIDE_REVIEW_IMAGE:I = 0x2719

.field private static final MSG_HIDE_SURFACE:I = 0x271a

.field private static final MSG_PREVIEW_SIZE_CHANGED:I = 0x2716

.field private static final MSG_PREVIEW_STARTED:I = 0x2715

.field private static final MSG_SHOW_LAST_PREVIEW_FRAME:I = 0x2711

.field private static final MSG_SHOW_REVIEW_IMAGE:I = 0x2718

.field private static final MSG_START_FLIP_ANIMATION:I = 0x2712

.field private static final MSG_STOP_FLIP_ANIMATION:I = 0x2714

.field public static final NAME:Ljava/lang/String; = "View Finder"

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_WAITING_FOR_PREVIEW_FRAME:I = 0x2

.field private static final STATE_WAITING_FOR_PREVIEW_START:I = 0x1

.field static final SUPPORT_FLIP_ANIMATION:Z

.field static final SUPPORT_REAL_TIME_PREVIEW:Z

.field static final SUPPORT_REVIEW_IMAGE:Z


# instance fields
.field private volatile m_AnimationSurfaceHolder:Landroid/view/SurfaceHolder;

.field private m_AnimationSurfaceView:Landroid/view/SurfaceView;

.field private final m_CameraThreadTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/trigger/TriggerBase;",
            ">;"
        }
    .end annotation
.end field

.field private m_EffectPreviewBitmap:Landroid/graphics/Bitmap;

.field private m_EffectPreviewRgbBuffer:Ljava/nio/ByteBuffer;

.field private m_FirstPreviewBitmap:Landroid/graphics/Bitmap;

.field private m_FlipImage:Landroid/graphics/Bitmap;

.field private m_FlipImageBounds:Landroid/graphics/Rect;

.field private m_FlipMaskOffset:I

.field private m_FlipStage:I

.field private m_FlipStartTime:J

.field private m_InitialFlipImageBounds:Landroid/graphics/Rect;

.field private m_IsReviewImageShown:Z

.field private m_LastPreviewBitmap:Landroid/graphics/Bitmap;

.field private m_PostViewBitmap:Landroid/graphics/Bitmap;

.field private m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

.field private m_PreviewBitmap:Landroid/graphics/Bitmap;

.field private m_PreviewFilterColor:I

.field private m_PreviewFrameCameraType:Lcom/android/camera/CameraType;

.field private m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

.field private final m_PreviewFrameSyncRoot:Ljava/lang/Object;

.field private m_PreviewRgbBuffer:Ljava/nio/ByteBuffer;

.field private m_PreviewSurfaceView:Landroid/view/SurfaceView;

.field private m_PreviewThread:Lcom/android/camera/WorkerThread;

.field private m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;

.field private m_ReviewBitmap:Landroid/graphics/Bitmap;

.field private m_State:I

.field private final m_StateSyncRoot:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 121
    invoke-static {}, Lcom/android/camera/CameraNativeLibrary;->initialize()V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 130
    const-string v0, "View Finder"

    const/4 v1, 0x1

    const v2, 0x7f080025

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_CameraThreadTriggers:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_InitialFlipImageBounds:Landroid/graphics/Rect;

    .line 105
    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameCameraType:Lcom/android/camera/CameraType;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ViewFinder;->m_State:I

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_StateSyncRoot:Ljava/lang/Object;

    .line 133
    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->initialize()V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ViewFinder;Landroid/os/Message;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/camera/component/ViewFinder;->handlePreviewThreadMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/ViewFinder;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/ViewFinder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/camera/component/ViewFinder;->sendPreviewThreadMessage(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/ViewFinder;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_StateSyncRoot:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/camera/component/ViewFinder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/camera/component/ViewFinder;->m_State:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/camera/component/ViewFinder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/camera/component/ViewFinder;->m_IsReviewImageShown:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/component/ViewFinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->setupCameraThreadEventHandlers()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/component/ViewFinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->updateViewFinderSize()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/ViewFinder;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_CameraThreadTriggers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/ViewFinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->clearPostViewBitmap()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/ViewFinder;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/component/ViewFinder;Lcom/android/camera/imaging/Size;)Lcom/android/camera/imaging/Size;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/camera/component/ViewFinder;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clearPostViewBitmap()V
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    .line 148
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

    .line 149
    monitor-exit v1

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createPreviewFrameBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const v12, 0x7ffffffc

    const/4 v10, 0x0

    .line 157
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "createPreviewFrameBitmap()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v11, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    monitor-enter v11

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 162
    const/4 v7, 0x0

    .line 167
    .local v7, bitmap:Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    iget v0, v0, Lcom/android/camera/imaging/Size;->width:I

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    iget v0, v0, Lcom/android/camera/imaging/Size;->height:I

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    if-le v0, v1, :cond_1

    .line 169
    :cond_0
    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget-object v2, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    iget v2, v2, Lcom/android/camera/imaging/Size;->width:I

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    iget v6, v6, Lcom/android/camera/imaging/Size;->height:I

    invoke-static {v0, v1, v2, v6}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchSize(IIII)Lcom/android/camera/imaging/Size;

    move-result-object v8

    .line 174
    .local v8, bitmapSize:Lcom/android/camera/imaging/Size;
    iget v0, v8, Lcom/android/camera/imaging/Size;->width:I

    and-int/2addr v0, v12

    iput v0, v8, Lcom/android/camera/imaging/Size;->width:I

    .line 175
    iget v0, v8, Lcom/android/camera/imaging/Size;->height:I

    and-int/2addr v0, v12

    iput v0, v8, Lcom/android/camera/imaging/Size;->height:I

    .line 181
    :goto_0
    iget v5, v8, Lcom/android/camera/imaging/Size;->width:I

    .line 182
    .local v5, yuvWidth:I
    iget v4, v8, Lcom/android/camera/imaging/Size;->height:I

    .line 183
    .local v4, yuvHeight:I
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 187
    mul-int v0, v5, v4

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 188
    .local v3, rgbBuffer:Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    iget v1, v1, Lcom/android/camera/imaging/Size;->width:I

    iget-object v2, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    iget v2, v2, Lcom/android/camera/imaging/Size;->height:I

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameCameraType:Lcom/android/camera/CameraType;

    invoke-virtual {v6}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/android/camera/component/ViewFinder;->preparePreviewFrame(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot prepare preview frame"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v10

    .line 216
    .end local v3           #rgbBuffer:Ljava/nio/ByteBuffer;
    .end local v4           #yuvHeight:I
    .end local v5           #yuvWidth:I
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #bitmapSize:Lcom/android/camera/imaging/Size;
    :goto_1
    return-object v7

    .line 178
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    :try_start_3
    new-instance v8, Lcom/android/camera/imaging/Size;

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    iget v0, v0, Lcom/android/camera/imaging/Size;->width:I

    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;

    iget v1, v1, Lcom/android/camera/imaging/Size;->height:I

    invoke-direct {v8, v0, v1}, Lcom/android/camera/imaging/Size;-><init>(II)V

    .restart local v8       #bitmapSize:Lcom/android/camera/imaging/Size;
    goto :goto_0

    .line 203
    .restart local v3       #rgbBuffer:Ljava/nio/ByteBuffer;
    .restart local v4       #yuvHeight:I
    .restart local v5       #yuvWidth:I
    :cond_2
    invoke-virtual {v7, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 206
    :try_start_4
    monitor-exit v11

    goto :goto_1

    .line 217
    .end local v3           #rgbBuffer:Ljava/nio/ByteBuffer;
    .end local v4           #yuvHeight:I
    .end local v5           #yuvWidth:I
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #bitmapSize:Lcom/android/camera/imaging/Size;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 208
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 210
    .local v9, ex:Ljava/lang/Throwable;
    :try_start_5
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot create preview frame bitmap"

    invoke-static {v0, v1, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    if-eqz v7, :cond_3

    .line 212
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 213
    :cond_3
    monitor-exit v11

    move-object v7, v10

    goto :goto_1

    .line 216
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #ex:Ljava/lang/Throwable;
    :cond_4
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v7, v10

    goto :goto_1
.end method

.method private doFlipAnimation()V
    .locals 17

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    if-nez v13, :cond_0

    .line 327
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/camera/component/ViewFinder;->m_FlipStartTime:J

    sub-long/2addr v13, v15

    long-to-double v13, v13

    const-wide v15, 0x4072c00000000000L

    div-double v11, v13, v15

    .line 247
    .local v11, time:D
    const-wide/high16 v13, 0x3ff0

    cmpl-double v13, v11, v13

    if-ltz v13, :cond_1

    .line 249
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/component/ViewFinder;->stopFlipAnimation()V

    goto :goto_0

    .line 254
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    const-wide/high16 v13, 0x3fe0

    cmpl-double v13, v11, v13

    if-ltz v13, :cond_2

    .line 256
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    .line 257
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_FirstPreviewBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_2

    .line 260
    new-instance v10, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget v15, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v16, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    move/from16 v0, v16

    invoke-direct {v10, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 261
    .local v10, screenBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_InitialFlipImageBounds:Landroid/graphics/Rect;

    new-instance v14, Lcom/android/camera/imaging/Size;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/android/camera/imaging/Size;-><init>(II)V

    const/4 v15, 0x1

    invoke-static {v10, v14, v15}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchBounds(Landroid/graphics/Rect;Lcom/android/camera/imaging/Size;Z)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 266
    .end local v10           #screenBounds:Landroid/graphics/Rect;
    :cond_2
    const-wide/high16 v8, 0x3ff0

    .line 277
    .local v8, scaleRatio:D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_InitialFlipImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v13, v8

    double-to-int v2, v13

    .line 278
    .local v2, flipImageWidth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_InitialFlipImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v13, v8

    double-to-int v1, v13

    .line 291
    .local v1, flipImageHeight:I
    const-wide/high16 v13, 0x3fe0

    cmpg-double v13, v11, v13

    if-gtz v13, :cond_3

    .line 292
    const-wide v13, 0x400921fb54442d18L

    mul-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 297
    .local v5, flipRatio:D
    :goto_1
    int-to-double v13, v1

    mul-double/2addr v13, v5

    double-to-int v1, v13

    .line 300
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    sget v14, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sub-int/2addr v14, v2

    div-int/lit8 v14, v14, 0x2

    iput v14, v13, Landroid/graphics/Rect;->left:I

    .line 301
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    sget v14, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sub-int/2addr v14, v1

    div-int/lit8 v14, v14, 0x2

    iput v14, v13, Landroid/graphics/Rect;->top:I

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v2

    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 303
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v1

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 315
    const-wide/high16 v13, 0x3fe0

    cmpg-double v13, v11, v13

    if-gtz v13, :cond_4

    .line 316
    const-wide v13, 0x400921fb54442d18L

    mul-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 319
    .local v3, flipMaskRatio:D
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-double v13, v13

    const-wide v15, 0x3fd3333333333333L

    mul-double/2addr v13, v15

    double-to-int v7, v13

    .line 320
    .local v7, maxMaskOffset:I
    int-to-double v13, v7

    mul-double/2addr v13, v3

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/component/ViewFinder;->m_FlipMaskOffset:I

    .line 323
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/camera/component/ViewFinder;->drawAnimationSurface(I)V

    .line 326
    const/16 v13, 0x2713

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/camera/component/ViewFinder;->sendPreviewThreadMessage(I)V

    goto/16 :goto_0

    .line 294
    .end local v3           #flipMaskRatio:D
    .end local v5           #flipRatio:D
    .end local v7           #maxMaskOffset:I
    :cond_3
    const-wide/high16 v13, 0x3ff0

    sub-double v13, v11, v13

    const-wide v15, 0x400921fb54442d18L

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .restart local v5       #flipRatio:D
    goto :goto_1

    .line 318
    :cond_4
    const-wide/high16 v13, 0x3ff0

    sub-double/2addr v13, v11

    const-wide v15, 0x400921fb54442d18L

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .restart local v3       #flipMaskRatio:D
    goto :goto_2
.end method

.method private drawAnimationSurface(I)V
    .locals 4
    .parameter "action"

    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_AnimationSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 335
    .local v1, holder:Landroid/view/SurfaceHolder;
    if-eqz v1, :cond_2

    .line 337
    monitor-enter v1

    .line 339
    const/4 v0, 0x0

    .line 342
    .local v0, canvas:Landroid/graphics/Canvas;
    :try_start_0
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    .line 345
    packed-switch p1, :pswitch_data_0

    .line 361
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->drawPreviewFilter(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    if-eqz v0, :cond_1

    .line 368
    :try_start_1
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 370
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :cond_2
    return-void

    .line 348
    .restart local v0       #canvas:Landroid/graphics/Canvas;
    :pswitch_0
    const/4 v2, 0x0

    :try_start_2
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v2

    .line 367
    if-eqz v0, :cond_1

    .line 368
    :try_start_3
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 370
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 351
    :pswitch_1
    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->drawFlipAnimation(Landroid/graphics/Canvas;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 367
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    .line 368
    :try_start_5
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_3
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 354
    :pswitch_2
    :try_start_6
    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->drawRealtimePreview(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 357
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->drawReviewImage(Landroid/graphics/Canvas;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private drawFlipAnimation(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/high16 v7, -0x100

    const/4 v6, 0x0

    .line 380
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 383
    iget v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    if-eqz v4, :cond_4

    .line 386
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 388
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 389
    .local v3, srcRect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v3, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 399
    .end local v3           #srcRect:Landroid/graphics/Rect;
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 400
    .local v0, maskPaint:Landroid/graphics/Paint;
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 401
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 404
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 405
    .local v2, path:Landroid/graphics/Path;
    iget v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    if-ne v4, v8, :cond_2

    .line 407
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 408
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 409
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipMaskOffset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 425
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 426
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 429
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 430
    iget v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    if-ne v4, v8, :cond_3

    .line 432
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 433
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 434
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipMaskOffset:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 450
    :goto_2
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 451
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 462
    .end local v0           #maskPaint:Landroid/graphics/Paint;
    .end local v2           #path:Landroid/graphics/Path;
    :cond_0
    :goto_3
    return-void

    .line 393
    :cond_1
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 394
    .local v1, paint:Landroid/graphics/Paint;
    const v4, -0x777778

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 413
    .end local v1           #paint:Landroid/graphics/Paint;
    .restart local v0       #maskPaint:Landroid/graphics/Paint;
    .restart local v2       #path:Landroid/graphics/Path;
    :cond_2
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 414
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 415
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipMaskOffset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1

    .line 438
    :cond_3
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 439
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 440
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipMaskOffset:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImageBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 456
    .end local v0           #maskPaint:Landroid/graphics/Paint;
    .end local v2           #path:Landroid/graphics/Path;
    :cond_4
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 458
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 459
    .restart local v3       #srcRect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_InitialFlipImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v3, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method private drawPreviewFilter(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 470
    sget-object v3, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$CameraStartMode:[I

    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraStartMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 489
    :goto_0
    return-void

    .line 480
    :pswitch_0
    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 481
    .local v0, filterSize:I
    new-instance v2, Landroid/graphics/Rect;

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-direct {v2, v5, v5, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 482
    .local v2, rect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 483
    .local v1, paint:Landroid/graphics/Paint;
    iget v3, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFilterColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 484
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 485
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 486
    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 487
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 488
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private drawRealtimePreview(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 499
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 500
    monitor-exit v19

    .line 571
    :goto_0
    return-void

    .line 503
    :cond_0
    const/4 v1, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 506
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 507
    .local v13, paint:Landroid/graphics/Paint;
    const/high16 v1, -0x100

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 510
    const/4 v14, 0x3

    .line 511
    .local v14, rowCount:I
    const/4 v8, 0x3

    .line 512
    .local v8, columnCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 513
    .local v2, bitmapWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 514
    .local v3, bitmapHeight:I
    add-int/lit8 v11, v2, 0x2

    .line 515
    .local v11, frameWidth:I
    add-int/lit8 v10, v3, 0x2

    .line 516
    .local v10, frameHeight:I
    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int v4, v11, v8

    sub-int/2addr v1, v4

    div-int/lit8 v12, v1, 0x2

    .line 517
    .local v12, left:I
    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    mul-int v4, v10, v14

    sub-int/2addr v1, v4

    div-int/lit8 v16, v1, 0x2

    .line 518
    .local v16, top:I
    new-instance v15, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {v15, v1, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 519
    .local v15, srcRect:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 520
    .local v9, destRect:Landroid/graphics/Rect;
    const/16 v18, 0x0

    .local v18, y:I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v14, :cond_7

    .line 522
    mul-int v1, v18, v10

    add-int v1, v1, v16

    iput v1, v9, Landroid/graphics/Rect;->top:I

    .line 523
    iget v1, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v10

    iput v1, v9, Landroid/graphics/Rect;->bottom:I

    .line 524
    const/16 v17, 0x0

    .local v17, x:I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v8, :cond_6

    .line 526
    mul-int v1, v17, v11

    add-int/2addr v1, v12

    iput v1, v9, Landroid/graphics/Rect;->left:I

    .line 527
    iget v1, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v11

    iput v1, v9, Landroid/graphics/Rect;->right:I

    .line 528
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 529
    iget v1, v9, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/graphics/Rect;->left:I

    .line 530
    iget v1, v9, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/graphics/Rect;->top:I

    .line 531
    iget v1, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v9, Landroid/graphics/Rect;->right:I

    .line 532
    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v9, Landroid/graphics/Rect;->bottom:I

    .line 534
    const/4 v7, 0x0

    .line 535
    .local v7, applyEffect:Z
    if-nez v18, :cond_2

    .line 537
    const/4 v7, 0x1

    .line 538
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewRgbBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ViewFinder;->m_EffectPreviewRgbBuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v17, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/camera/effect/RealtimeEffect;->channelFilter(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;I)Z

    .line 556
    :cond_1
    :goto_3
    if-eqz v7, :cond_5

    .line 558
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_EffectPreviewBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/ViewFinder;->m_EffectPreviewRgbBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_EffectPreviewBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v15, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 564
    :goto_4
    iget v1, v9, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v9, Landroid/graphics/Rect;->left:I

    .line 565
    iget v1, v9, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v9, Landroid/graphics/Rect;->top:I

    .line 566
    iget v1, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/graphics/Rect;->right:I

    .line 567
    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/graphics/Rect;->bottom:I

    .line 524
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 540
    :cond_2
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_3

    if-nez v17, :cond_3

    .line 542
    const/4 v7, 0x1

    .line 543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewRgbBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ViewFinder;->m_EffectPreviewRgbBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x4

    invoke-static/range {v1 .. v6}, Lcom/android/camera/effect/RealtimeEffect;->channelFilter(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;I)Z

    goto :goto_3

    .line 570
    .end local v2           #bitmapWidth:I
    .end local v3           #bitmapHeight:I
    .end local v7           #applyEffect:Z
    .end local v8           #columnCount:I
    .end local v9           #destRect:Landroid/graphics/Rect;
    .end local v10           #frameHeight:I
    .end local v11           #frameWidth:I
    .end local v12           #left:I
    .end local v13           #paint:Landroid/graphics/Paint;
    .end local v14           #rowCount:I
    .end local v15           #srcRect:Landroid/graphics/Rect;
    .end local v16           #top:I
    .end local v17           #x:I
    .end local v18           #y:I
    :catchall_0
    move-exception v1

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 545
    .restart local v2       #bitmapWidth:I
    .restart local v3       #bitmapHeight:I
    .restart local v7       #applyEffect:Z
    .restart local v8       #columnCount:I
    .restart local v9       #destRect:Landroid/graphics/Rect;
    .restart local v10       #frameHeight:I
    .restart local v11       #frameWidth:I
    .restart local v12       #left:I
    .restart local v13       #paint:Landroid/graphics/Paint;
    .restart local v14       #rowCount:I
    .restart local v15       #srcRect:Landroid/graphics/Rect;
    .restart local v16       #top:I
    .restart local v17       #x:I
    .restart local v18       #y:I
    :cond_3
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_4

    const/4 v1, 0x2

    move/from16 v0, v17

    if-ne v0, v1, :cond_4

    .line 547
    const/4 v7, 0x1

    .line 548
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewRgbBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ViewFinder;->m_EffectPreviewRgbBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x5

    invoke-static/range {v1 .. v6}, Lcom/android/camera/effect/RealtimeEffect;->channelFilter(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;I)Z

    goto :goto_3

    .line 550
    :cond_4
    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_1

    .line 552
    const/4 v7, 0x1

    .line 553
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewRgbBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/component/ViewFinder;->m_EffectPreviewRgbBuffer:Ljava/nio/ByteBuffer;

    rsub-int/lit8 v6, v17, 0x3

    invoke-static/range {v1 .. v6}, Lcom/android/camera/effect/RealtimeEffect;->channelFilter(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;I)Z

    goto :goto_3

    .line 562
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/ViewFinder;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v15, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 520
    .end local v7           #applyEffect:Z
    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 570
    .end local v17           #x:I
    :cond_7
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private drawReviewImage(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 579
    const/high16 v2, -0x100

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 582
    iget-object v3, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    monitor-enter v3

    .line 585
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 586
    monitor-exit v3

    .line 596
    :goto_0
    return-void

    .line 589
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 590
    .local v1, srcRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v7, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Lcom/android/camera/imaging/Size;

    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/camera/imaging/Size;-><init>(II)V

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchBounds(Landroid/graphics/Rect;Lcom/android/camera/imaging/Size;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 594
    .local v0, destRect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v1, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 595
    monitor-exit v3

    goto :goto_0

    .end local v0           #destRect:Landroid/graphics/Rect;
    .end local v1           #srcRect:Landroid/graphics/Rect;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getPreviewSizeInUI(Lcom/android/camera/imaging/Size;)Lcom/android/camera/imaging/Size;
    .locals 5
    .parameter "previewSize"

    .prologue
    const/4 v4, 0x0

    .line 603
    new-instance v1, Landroid/graphics/Rect;

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Lcom/android/camera/imaging/Size;

    iget v3, p1, Lcom/android/camera/imaging/Size;->height:I

    iget v4, p1, Lcom/android/camera/imaging/Size;->width:I

    invoke-direct {v2, v3, v4}, Lcom/android/camera/imaging/Size;-><init>(II)V

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchBounds(Landroid/graphics/Rect;Lcom/android/camera/imaging/Size;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 607
    .local v0, bounds:Landroid/graphics/Rect;
    new-instance v1, Lcom/android/camera/imaging/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/imaging/Size;-><init>(II)V

    return-object v1
.end method

.method private getRealtimePreviewSize(Lcom/android/camera/imaging/Size;)Lcom/android/camera/imaging/Size;
    .locals 4
    .parameter "previewSize"

    .prologue
    const v3, 0x7ffffffc

    .line 615
    if-nez p1, :cond_0

    .line 616
    const/4 v0, 0x0

    .line 620
    :goto_0
    return-object v0

    .line 617
    :cond_0
    new-instance v0, Lcom/android/camera/imaging/Size;

    const/16 v1, 0x136

    const/16 v2, 0xaa

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    invoke-static {v0, p1}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchSize(Lcom/android/camera/imaging/Size;Lcom/android/camera/imaging/Size;)Lcom/android/camera/imaging/Size;

    move-result-object p1

    .line 618
    iget v0, p1, Lcom/android/camera/imaging/Size;->width:I

    and-int/2addr v0, v3

    iput v0, p1, Lcom/android/camera/imaging/Size;->width:I

    .line 619
    iget v0, p1, Lcom/android/camera/imaging/Size;->height:I

    and-int/2addr v0, v3

    iput v0, p1, Lcom/android/camera/imaging/Size;->height:I

    move-object v0, p1

    .line 620
    goto :goto_0
.end method

.method private handlePreviewThreadMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 654
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 678
    :pswitch_0
    const/4 v0, 0x0

    .line 680
    :goto_0
    return v0

    .line 657
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->doFlipAnimation()V

    .line 680
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 660
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->drawAnimationSurface(I)V

    goto :goto_1

    .line 663
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->hideReviewImage()V

    goto :goto_1

    .line 666
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->showLastPreviewFrame(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 669
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->showReviewImage(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 672
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->startFlipAnimation(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 675
    :pswitch_7
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->stopFlipAnimation()V

    goto :goto_1

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_4
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method private hideReviewImage()V
    .locals 2

    .prologue
    .line 689
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 691
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    .line 696
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->drawAnimationSurface(I)V

    .line 700
    return-void

    .line 696
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private hideSurfaceView()V
    .locals 3

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1403
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "hideSurfaceView  "

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1407
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1408
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "hideSurfaceView  m_PreviewSurfaceView INVISIBLE"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1411
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "hideSurfaceView  m_PreviewSurfaceView VISIBLE"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    :cond_0
    return-void
.end method

.method private onFirstPreviewFrameRetrieved(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "previewFrame"

    .prologue
    .line 803
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_StateSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 805
    :try_start_0
    iget v0, p0, Lcom/android/camera/component/ViewFinder;->m_State:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 808
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ViewFinder;->m_State:I

    .line 811
    const/16 v0, 0x2712

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/camera/component/ViewFinder;->sendPreviewThreadMessage(IIILjava/lang/Object;)V

    .line 813
    :cond_0
    monitor-exit v1

    .line 814
    return-void

    .line 813
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onPostviewImageRetrieved(Lcom/android/camera/imaging/RawImageEventArgs;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 821
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 825
    :cond_0
    iput-object p1, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

    .line 826
    monitor-exit v1

    .line 827
    return-void

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onPreviewFrameRetrieved(Lcom/android/camera/imaging/RawImageEventArgs;)V
    .locals 8
    .parameter "e"

    .prologue
    .line 834
    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    monitor-enter v6

    .line 839
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSize:Lcom/android/camera/imaging/Size;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 840
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    :goto_0
    return-void

    .line 843
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p1, Lcom/android/camera/imaging/RawImageEventArgs;->rawImage:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 844
    :cond_1
    iget-object v0, p1, Lcom/android/camera/imaging/RawImageEventArgs;->rawImage:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;

    .line 845
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 846
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewYuvBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/android/camera/imaging/RawImageEventArgs;->rawImage:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 849
    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameCameraType:Lcom/android/camera/CameraType;

    .line 869
    iget-object v7, p0, Lcom/android/camera/component/ViewFinder;->m_StateSyncRoot:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 871
    :try_start_3
    iget v0, p0, Lcom/android/camera/component/ViewFinder;->m_State:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 873
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Got first preview frame"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->createPreviewFrameBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 879
    .local v5, previewFrame:Landroid/graphics/Bitmap;
    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ViewFinder;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 881
    .end local v5           #previewFrame:Landroid/graphics/Bitmap;
    :cond_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 885
    :goto_1
    :try_start_4
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 881
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 883
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private onPreviewSizeChanged(Lcom/android/camera/imaging/Size;)V
    .locals 4
    .parameter "previewSize"

    .prologue
    .line 894
    invoke-direct {p0, p1}, Lcom/android/camera/component/ViewFinder;->getPreviewSizeInUI(Lcom/android/camera/imaging/Size;)Lcom/android/camera/imaging/Size;

    move-result-object v0

    .line 897
    .local v0, viewSize:Lcom/android/camera/imaging/Size;
    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    iget v2, v0, Lcom/android/camera/imaging/Size;->width:I

    iget v3, v0, Lcom/android/camera/imaging/Size;->height:I

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->setSize(Landroid/view/View;II)V

    .line 901
    :goto_0
    return-void

    .line 900
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    iget v2, v0, Lcom/android/camera/imaging/Size;->height:I

    iget v3, v0, Lcom/android/camera/imaging/Size;->width:I

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->setSize(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private onPreviewStarted()V
    .locals 3

    .prologue
    .line 908
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_StateSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 910
    :try_start_0
    iget v0, p0, Lcom/android/camera/component/ViewFinder;->m_State:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 911
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/component/ViewFinder;->m_State:I

    .line 912
    :cond_0
    monitor-exit v1

    .line 913
    return-void

    .line 912
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native preparePreviewFrame(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIZ)Z
.end method

.method private sendPreviewThreadMessage(I)V
    .locals 2
    .parameter "what"

    .prologue
    const/4 v1, 0x0

    .line 925
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/android/camera/component/ViewFinder;->sendPreviewThreadMessage(IIILjava/lang/Object;)V

    .line 926
    return-void
.end method

.method private sendPreviewThreadMessage(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewThread:Lcom/android/camera/WorkerThread;

    .line 930
    .local v0, previewThread:Lcom/android/camera/WorkerThread;
    if-eqz v0, :cond_0

    .line 934
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 936
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setupCameraThreadEventHandlers()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 947
    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 950
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, v0, Lcom/android/camera/CameraThread;->exitingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ViewFinder$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ViewFinder$4;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 962
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_CameraThreadTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/ViewFinder$5;

    iget-object v3, v0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/ViewFinder$5;-><init>(Lcom/android/camera/component/ViewFinder;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_CameraThreadTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/ViewFinder$6;

    iget-object v3, v0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/ViewFinder$6;-><init>(Lcom/android/camera/component/ViewFinder;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    iget-object v1, v0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/ViewFinder$9;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ViewFinder$9;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1034
    iget-object v1, v0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ViewFinder$10;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ViewFinder$10;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1043
    iget-object v1, v0, Lcom/android/camera/CameraThread;->previewStoppedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ViewFinder$11;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ViewFinder$11;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1053
    return-void
.end method

.method private setupUIEventHandlers(Lcom/android/camera/HTCCamera;)V
    .locals 2
    .parameter "cameraActivity"

    .prologue
    .line 1061
    iget-object v0, p1, Lcom/android/camera/HTCCamera;->queryPreviewSurfaceHitRectEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/component/ViewFinder$12;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ViewFinder$12;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1072
    iget-object v0, p1, Lcom/android/camera/HTCCamera;->selfFinishingEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/component/ViewFinder$13;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ViewFinder$13;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1087
    iget-object v0, p1, Lcom/android/camera/HTCCamera;->stoppingEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/component/ViewFinder$14;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ViewFinder$14;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1100
    iget-object v0, p1, Lcom/android/camera/HTCCamera;->newIntentEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/component/ViewFinder$15;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ViewFinder$15;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 1110
    return-void
.end method

.method private setupUIPropertyChangedCallbacks(Lcom/android/camera/HTCCamera;)V
    .locals 4
    .parameter "cameraActivity"

    .prologue
    .line 1141
    iget-object v0, p1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/component/ViewFinder$17;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ViewFinder$17;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1180
    iget-object v0, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/component/ViewFinder$18;

    iget-object v2, p1, Lcom/android/camera/HTCCamera;->isCameraThreadRunning:Lcom/android/camera/property/Property;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/component/ViewFinder$18;-><init>(Lcom/android/camera/component/ViewFinder;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    iget-object v0, p1, Lcom/android/camera/HTCCamera;->previewSize:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/component/ViewFinder$19;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ViewFinder$19;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 1211
    return-void
.end method

.method private showLastPreviewFrame(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "previewFrame"

    .prologue
    const/4 v3, 0x0

    .line 1219
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->stopFlipAnimation()V

    .line 1222
    if-eqz p1, :cond_0

    .line 1224
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1225
    .local v0, screenBounds:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_InitialFlipImageBounds:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/camera/imaging/Size;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/imaging/Size;-><init>(II)V

    invoke-static {v0, v2}, Lcom/android/camera/imaging/ImageUtility;->getRatioStretchBounds(Landroid/graphics/Rect;Lcom/android/camera/imaging/Size;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1229
    .end local v0           #screenBounds:Landroid/graphics/Rect;
    :goto_0
    iput-object p1, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    .line 1232
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/component/ViewFinder;->drawAnimationSurface(I)V

    .line 1233
    return-void

    .line 1228
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_InitialFlipImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method private showReviewImage()V
    .locals 10

    .prologue
    .line 1241
    iget-boolean v4, p0, Lcom/android/camera/component/ViewFinder;->m_IsReviewImageShown:Z

    if-eqz v4, :cond_0

    .line 1294
    :goto_0
    return-void

    .line 1245
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1246
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/TakingPictureState;

    .line 1247
    .local v3, takingPictureState:Lcom/android/camera/TakingPictureState;
    iget-object v4, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/RecordingState;

    .line 1250
    .local v1, recordingState:Lcom/android/camera/RecordingState;
    sget-object v4, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$TakingPictureState:[I

    invoke-virtual {v3}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1259
    :pswitch_0
    sget-object v4, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$RecordingState:[I

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 1270
    :pswitch_1
    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    monitor-enter v5

    .line 1272
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1273
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->createPreviewFrameBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1288
    .local v2, reviewBitmap:Landroid/graphics/Bitmap;
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    invoke-direct {p0, v2}, Lcom/android/camera/component/ViewFinder;->showReviewImage(Landroid/graphics/Bitmap;)V

    .line 1293
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/component/ViewFinder;->m_IsReviewImageShown:Z

    goto :goto_0

    .line 1274
    .end local v2           #reviewBitmap:Landroid/graphics/Bitmap;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

    if-eqz v4, :cond_2

    .line 1276
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

    iget-object v4, v4, Lcom/android/camera/imaging/RawImageEventArgs;->rawImage:[B

    iget-object v6, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

    iget v6, v6, Lcom/android/camera/imaging/RawImageEventArgs;->imageWidth:I

    iget-object v7, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

    iget v7, v7, Lcom/android/camera/imaging/RawImageEventArgs;->imageHeight:I

    const/16 v8, 0x5a

    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v9

    invoke-static {v4, v6, v7, v8, v9}, Lcom/android/camera/imaging/ImageUtility;->yvu420spToBitmap([BIIIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    .line 1282
    iget-object v2, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    .line 1283
    .restart local v2       #reviewBitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    .line 1284
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

    goto :goto_1

    .line 1288
    .end local v2           #reviewBitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1287
    :cond_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1259
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showReviewImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "reviewBitmap"

    .prologue
    .line 1302
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFrameSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 1304
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/component/ViewFinder;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    .line 1305
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->drawAnimationSurface(I)V

    .line 1309
    return-void

    .line 1305
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startFlipAnimation(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "previewFrame"

    .prologue
    .line 1317
    iget v0, p0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    if-eqz v0, :cond_0

    .line 1328
    :goto_0
    return-void

    .line 1321
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    .line 1322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/component/ViewFinder;->m_FlipStartTime:J

    .line 1323
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    .line 1324
    iput-object p1, p0, Lcom/android/camera/component/ViewFinder;->m_FirstPreviewBitmap:Landroid/graphics/Bitmap;

    .line 1327
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->doFlipAnimation()V

    goto :goto_0
.end method

.method private stopFlipAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1336
    iget v1, p0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    if-nez v1, :cond_0

    .line 1367
    :goto_0
    return-void

    .line 1340
    :cond_0
    iput v3, p0, Lcom/android/camera/component/ViewFinder;->m_FlipStage:I

    .line 1341
    iput-object v2, p0, Lcom/android/camera/component/ViewFinder;->m_FlipImage:Landroid/graphics/Bitmap;

    .line 1342
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1344
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1345
    iput-object v2, p0, Lcom/android/camera/component/ViewFinder;->m_LastPreviewBitmap:Landroid/graphics/Bitmap;

    .line 1347
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_FirstPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1349
    iget-object v1, p0, Lcom/android/camera/component/ViewFinder;->m_FirstPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1350
    iput-object v2, p0, Lcom/android/camera/component/ViewFinder;->m_FirstPreviewBitmap:Landroid/graphics/Bitmap;

    .line 1354
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewThread:Lcom/android/camera/WorkerThread;

    .line 1355
    .local v0, previewThread:Lcom/android/camera/WorkerThread;
    if-eqz v0, :cond_3

    .line 1359
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2713

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1366
    :cond_3
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/camera/component/ViewFinder;->drawAnimationSurface(I)V

    goto :goto_0

    .line 1361
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private updateViewFinderSize()V
    .locals 6

    .prologue
    .line 1375
    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v4, v5, :cond_4

    .line 1378
    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1379
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1382
    .local v0, isWideRatio:Z
    :goto_0
    if-eqz v0, :cond_3

    const/4 v3, -0x1

    .line 1395
    .end local v0           #isWideRatio:Z
    .local v3, width:I
    :goto_1
    sget-object v4, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v4}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1396
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    invoke-static {v4, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 1399
    .end local v3           #width:I
    :cond_1
    :goto_2
    return-void

    .line 1381
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #isWideRatio:Z
    goto :goto_0

    .line 1382
    :cond_3
    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v3, v4, 0x3

    goto :goto_1

    .line 1386
    .end local v0           #isWideRatio:Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/imaging/Size;

    .line 1387
    .local v1, previewSize:Lcom/android/camera/imaging/Size;
    if-eqz v1, :cond_1

    .line 1389
    iget v4, v1, Lcom/android/camera/imaging/Size;->width:I

    int-to-float v4, v4

    iget v5, v1, Lcom/android/camera/imaging/Size;->height:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 1390
    .local v2, ratio:F
    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v3, v4

    .line 1391
    .restart local v3       #width:I
    goto :goto_1

    .line 1398
    .end local v1           #previewSize:Lcom/android/camera/imaging/Size;
    .end local v2           #ratio:F
    :cond_5
    iget-object v4, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    invoke-static {v4, v3}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    goto :goto_2
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v0}, Lcom/android/camera/WorkerThread;->exit()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewThread:Lcom/android/camera/WorkerThread;

    .line 231
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 232
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 629
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 644
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 647
    :goto_0
    return-void

    .line 632
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->onFirstPreviewFrameRetrieved(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 635
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/imaging/Size;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ViewFinder;->onPreviewSizeChanged(Lcom/android/camera/imaging/Size;)V

    goto :goto_0

    .line 638
    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->onPreviewStarted()V

    goto :goto_0

    .line 641
    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->hideSurfaceView()V

    goto :goto_0

    .line 629
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x2715 -> :sswitch_2
        0x2716 -> :sswitch_1
        0x271a -> :sswitch_3
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 7

    .prologue
    .line 709
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 712
    new-instance v5, Lcom/android/camera/component/ViewFinder$1;

    const-string v6, "Preview Thread"

    invoke-direct {v5, p0, v6}, Lcom/android/camera/component/ViewFinder$1;-><init>(Lcom/android/camera/component/ViewFinder;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewThread:Lcom/android/camera/WorkerThread;

    .line 721
    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v5}, Lcom/android/camera/WorkerThread;->start()V

    .line 724
    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    .line 725
    .local v0, baseLayout:Landroid/view/View;
    const v5, 0x7f080026

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceView;

    iput-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    .line 726
    const v5, 0x7f080027

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceView;

    iput-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_AnimationSurfaceView:Landroid/view/SurfaceView;

    .line 727
    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_AnimationSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_AnimationSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 730
    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 731
    .local v2, holder:Landroid/view/SurfaceHolder;
    new-instance v5, Lcom/android/camera/component/ViewFinder$2;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ViewFinder$2;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-interface {v2, v5}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 752
    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_AnimationSurfaceView:Landroid/view/SurfaceView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 753
    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_AnimationSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v6, -0x3

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 754
    iget-object v5, p0, Lcom/android/camera/component/ViewFinder;->m_AnimationSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v6, Lcom/android/camera/component/ViewFinder$3;

    invoke-direct {v6, p0}, Lcom/android/camera/component/ViewFinder$3;-><init>(Lcom/android/camera/component/ViewFinder;)V

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 769
    invoke-virtual {p0}, Lcom/android/camera/component/ViewFinder;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    .line 770
    .local v1, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/android/camera/component/ViewFinder;->m_PreviewFilterColor:I

    .line 773
    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v3

    .line 774
    .local v3, startMode:Lcom/android/camera/CameraStartMode;
    sget-object v5, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$CameraStartMode:[I

    invoke-virtual {v3}, Lcom/android/camera/CameraStartMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 789
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/component/ViewFinder;->setupUIEventHandlers(Lcom/android/camera/HTCCamera;)V

    .line 792
    invoke-direct {p0, v1}, Lcom/android/camera/component/ViewFinder;->setupUIPropertyChangedCallbacks(Lcom/android/camera/HTCCamera;)V

    .line 795
    invoke-direct {p0}, Lcom/android/camera/component/ViewFinder;->updateViewFinderSize()V

    .line 796
    return-void

    .line 779
    :pswitch_0
    const v5, 0x7f080028

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0800cb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 780
    .local v4, view:Landroid/view/View;
    sget-object v5, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v5}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 781
    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-static {v4, v5}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    goto :goto_0

    .line 783
    :cond_0
    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-static {v4, v5}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    goto :goto_0

    .line 774
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
