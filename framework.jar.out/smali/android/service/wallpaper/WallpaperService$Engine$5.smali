.class Landroid/service/wallpaper/WallpaperService$Engine$5;
.super Lcom/android/internal/view/BaseIWindow;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final COMMAND_WALLPAPER_JANK:Ljava/lang/String; = "android.wallpaper.jank"


# instance fields
.field private EGL_SWAP_DELAY_DIS:I

.field private EGL_SWAP_DELAY_EN:I

.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 1
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    .line 334
    const v0, 0xff00

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->EGL_SWAP_DELAY_EN:I

    .line 335
    const v0, 0xfe00

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->EGL_SWAP_DELAY_DIS:I

    return-void
.end method


# virtual methods
.method public EGLSwapEnWithDelay(I)I
    .locals 1
    .parameter "delay"

    .prologue
    .line 339
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->EGL_SWAP_DELAY_EN:I

    or-int/2addr v0, p1

    return v0
.end method

.method public dispatchAppVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 305
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v1, v1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-nez v1, :cond_0

    .line 306
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x271a

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 308
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 310
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 306
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 7
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    const/4 v6, 0x1

    .line 345
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v4, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 347
    :try_start_0
    const-string v3, "android.wallpaper.stop.render"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mRosieOff:Z

    .line 353
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x4e2a

    invoke-virtual {v3, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 354
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 397
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    monitor-exit v4

    .line 398
    return-void

    .line 357
    :cond_1
    const-string v3, "android.wallpaper.resume.render"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 360
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mRosieOff:Z

    .line 363
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x4e2a

    invoke-virtual {v3, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 364
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 397
    .end local v2           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 368
    :cond_2
    :try_start_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x26

    if-ne v3, v5, :cond_4

    const-string v3, "android.wallpaper.jank"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 371
    if-ne p2, v6, :cond_3

    .line 372
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 373
    .local v1, mEgl:Ljavax/microedition/khronos/egl/EGL10;
    if-eqz v1, :cond_0

    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Landroid/service/wallpaper/WallpaperService$Engine$5;->EGLSwapEnWithDelay(I)I

    move-result v3

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v3, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitNative(ILjava/lang/Object;)Z

    goto :goto_0

    .line 374
    .end local v1           #mEgl:Ljavax/microedition/khronos/egl/EGL10;
    :cond_3
    if-nez p2, :cond_0

    .line 375
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 376
    .restart local v1       #mEgl:Ljavax/microedition/khronos/egl/EGL10;
    if-eqz v1, :cond_0

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->EGL_SWAP_DELAY_DIS:I

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v3, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitNative(ILjava/lang/Object;)Z

    goto :goto_0

    .line 384
    .end local v1           #mEgl:Ljavax/microedition/khronos/egl/EGL10;
    :cond_4
    new-instance v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    invoke-direct {v0}, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;-><init>()V

    .line 385
    .local v0, cmd:Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    iput-object p1, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    .line 386
    iput p2, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    .line 387
    iput p3, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    .line 388
    iput p4, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    .line 389
    iput-object p5, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    .line 390
    iput-boolean p6, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    .line 391
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x2729

    invoke-virtual {v3, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 392
    .restart local v2       #msg:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 393
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public dispatchWallpaperOffsets(FFFFZ)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "sync"

    .prologue
    .line 315
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 317
    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 318
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    .line 319
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 320
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    .line 321
    if-eqz p5, :cond_0

    .line 322
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 324
    :cond_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    if-nez v1, :cond_1

    .line 325
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 326
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x2724

    invoke-virtual {v1, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 327
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 329
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    monitor-exit v2

    .line 330
    return-void

    .line 329
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"

    .prologue
    .line 296
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x272e

    if-eqz p5, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 298
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$5;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 299
    return-void

    .line 296
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
