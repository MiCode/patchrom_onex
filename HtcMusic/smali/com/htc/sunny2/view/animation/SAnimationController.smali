.class public Lcom/htc/sunny2/view/animation/SAnimationController;
.super Ljava/lang/Object;
.source "SAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/view/animation/SAnimationController$1;,
        Lcom/htc/sunny2/view/animation/SAnimationController$Layout;,
        Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;,
        Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;
    }
.end annotation


# instance fields
.field protected mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

.field protected mCurrentTime:J

.field protected mDelayTime:J

.field protected mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

.field protected mEndTime:J

.field private mHasMore:Z

.field protected mInterpolator:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

.field private mIsAlphaAnimation:Z

.field private mIsEnded:Z

.field protected mIsFileAfter:Z

.field protected mIsFileBefore:Z

.field private mIsPosAnimation:Z

.field private mIsReady:Z

.field private mIsRotateAnimation:Z

.field private mIsScaleAnimation:Z

.field private mIsStarted:Z

.field protected mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

.field protected mOffset:J

.field protected mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

.field protected mStartTime:J

.field protected mTotalTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    .line 62
    sget-object v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mInterpolator:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    .line 68
    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsReady:Z

    .line 69
    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsStarted:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsEnded:Z

    .line 71
    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mHasMore:Z

    .line 73
    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsPosAnimation:Z

    .line 74
    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsAlphaAnimation:Z

    .line 75
    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsScaleAnimation:Z

    .line 76
    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsRotateAnimation:Z

    .line 78
    iput-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartTime:J

    .line 79
    iput-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    .line 80
    iput-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndTime:J

    .line 81
    iput-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mDelayTime:J

    .line 82
    iput-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    .line 83
    iput-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentTime:J

    .line 85
    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsFileBefore:Z

    .line 86
    iput-boolean v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsFileAfter:Z

    .line 88
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;-><init>(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    .line 89
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;-><init>(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    .line 90
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;-><init>(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    .line 94
    return-void
.end method


# virtual methods
.method public animate()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentTime:J

    .line 321
    iget-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mDelayTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndTime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 326
    iput-boolean v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mHasMore:Z

    .line 328
    invoke-virtual {p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->animationEnd()V

    .line 330
    iput-boolean v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsStarted:Z

    .line 331
    iput-boolean v8, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsEnded:Z

    .line 332
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v2}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    goto :goto_0

    .line 338
    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsStarted:Z

    if-nez v2, :cond_4

    .line 339
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v2, :cond_3

    .line 340
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v2}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 342
    :cond_3
    iput-boolean v8, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsStarted:Z

    .line 345
    :cond_4
    iget-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mDelayTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    .line 347
    iget-boolean v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsPosAnimation:Z

    if-ne v8, v2, :cond_5

    .line 348
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    .line 349
    .local v1, start:Lcom/htc/sunny2/view/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    .line 351
    .local v0, end:Lcom/htc/sunny2/view/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 352
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 353
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 356
    .end local v0           #end:Lcom/htc/sunny2/view/Vector3F;
    .end local v1           #start:Lcom/htc/sunny2/view/Vector3F;
    :cond_5
    iget-boolean v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsScaleAnimation:Z

    if-ne v8, v2, :cond_6

    .line 357
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    .line 358
    .restart local v1       #start:Lcom/htc/sunny2/view/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    .line 360
    .restart local v0       #end:Lcom/htc/sunny2/view/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 361
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 362
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 365
    .end local v0           #end:Lcom/htc/sunny2/view/Vector3F;
    .end local v1           #start:Lcom/htc/sunny2/view/Vector3F;
    :cond_6
    iget-boolean v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsRotateAnimation:Z

    if-ne v8, v2, :cond_7

    .line 366
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    .line 367
    .restart local v1       #start:Lcom/htc/sunny2/view/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    .line 369
    .restart local v0       #end:Lcom/htc/sunny2/view/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 370
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 371
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v2, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    iget v4, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget v6, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    sub-float/2addr v5, v6

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 374
    .end local v0           #end:Lcom/htc/sunny2/view/Vector3F;
    .end local v1           #start:Lcom/htc/sunny2/view/Vector3F;
    :cond_7
    iget-boolean v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsAlphaAnimation:Z

    if-ne v8, v2, :cond_0

    .line 375
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget v1, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    .line 376
    .local v1, start:I
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget v0, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    .line 378
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-wide v3, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mOffset:J

    long-to-float v3, v3

    int-to-float v4, v1

    sub-int v5, v0, v1

    int-to-float v5, v5

    iget-wide v6, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    long-to-float v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->interpolate(FFFF)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    goto/16 :goto_0
.end method

.method protected animationEnd()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 384
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 385
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 386
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget v1, v1, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    iput v1, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    .line 387
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->reset()V

    .line 298
    invoke-virtual {p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->animationEnd()V

    .line 300
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 303
    :cond_0
    return-void
.end method

.method public final getCurrentAlpha()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    return v0
.end method

.method public final getCurrentPosition()Lcom/htc/sunny2/view/Vector3F;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    return-object v0
.end method

.method public final getCurrentRotation()Lcom/htc/sunny2/view/Vector3F;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    return-object v0
.end method

.method public final getCurrentScale()Lcom/htc/sunny2/view/Vector3F;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    return-wide v0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mHasMore:Z

    return v0
.end method

.method protected interpolate(FFFF)F
    .locals 12
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"

    .prologue
    .line 390
    const/4 v8, 0x0

    cmpl-float v8, v8, p4

    if-nez v8, :cond_0

    const/4 v4, 0x0

    .line 432
    :goto_0
    return v4

    .line 392
    :cond_0
    const/4 v4, 0x0

    .line 393
    .local v4, nRes:F
    const/4 v7, 0x0

    .local v7, ts:F
    const/4 v6, 0x0

    .line 394
    .local v6, tc:F
    move v5, p1

    .line 395
    .local v5, t:F
    move v0, p2

    .line 396
    .local v0, b:F
    move v1, p3

    .line 397
    .local v1, c:F
    move/from16 v2, p4

    .line 399
    .local v2, d:F
    sget-object v8, Lcom/htc/sunny2/view/animation/SAnimationController$1;->$SwitchMap$com$htc$sunny2$view$animation$SAnimationController$INTERPOLATOR:[I

    iget-object v9, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mInterpolator:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v9}, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 401
    :pswitch_0
    div-float v8, v1, v2

    mul-float/2addr v8, v5

    add-float v4, v8, v0

    .line 402
    goto :goto_0

    .line 404
    :pswitch_1
    div-float/2addr v5, v2

    .line 405
    mul-float v7, v5, v5

    .line 406
    mul-float v6, v7, v5

    .line 407
    const/high16 v8, 0x3f80

    mul-float/2addr v8, v6

    mul-float/2addr v8, v7

    const/high16 v9, -0x3f60

    mul-float/2addr v9, v7

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    const/high16 v9, 0x4120

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    const/high16 v9, -0x3ee0

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v1

    add-float v4, v8, v0

    .line 408
    goto :goto_0

    .line 411
    :pswitch_2
    div-float v8, v5, v2

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3fe0

    add-double/2addr v8, v10

    double-to-float v8, v8

    mul-float/2addr v8, v1

    add-float v4, v8, v0

    .line 412
    goto :goto_0

    .line 414
    :pswitch_3
    div-float/2addr v5, v2

    .line 415
    mul-float v7, v5, v5

    .line 416
    mul-float v6, v7, v5

    .line 417
    mul-float v8, v6, v7

    const/high16 v9, -0x3f60

    mul-float/2addr v9, v7

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    const/high16 v9, 0x4120

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    const/high16 v9, -0x3ee0

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    const/high16 v9, 0x40a0

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v1

    add-float v4, v8, v0

    .line 418
    goto :goto_0

    .line 420
    :pswitch_4
    div-float/2addr v5, v2

    .line 421
    mul-float v7, v5, v5

    .line 422
    mul-float v6, v7, v5

    .line 423
    mul-float v8, v6, v7

    mul-float/2addr v8, v1

    add-float v4, v8, v0

    .line 424
    goto :goto_0

    .line 426
    :pswitch_5
    div-float v3, p1, p4

    .line 427
    .local v3, input:F
    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    sub-float/2addr v9, v3

    const/high16 v10, 0x3f80

    sub-float/2addr v10, v3

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v8, p3

    add-float v4, p2, v8

    .line 428
    goto/16 :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isAlphaAnimation()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsAlphaAnimation:Z

    return v0
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsEnded:Z

    return v0
.end method

.method public isFillAfter()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsFileAfter:Z

    return v0
.end method

.method public isFillBefore()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsFileBefore:Z

    return v0
.end method

.method public isPositionAnimation()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsPosAnimation:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsReady:Z

    return v0
.end method

.method public isRotateAnimation()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsRotateAnimation:Z

    return v0
.end method

.method public isScaleAnimation()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsScaleAnimation:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsStarted:Z

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsEnded:Z

    .line 289
    iput-boolean v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsStarted:Z

    .line 290
    iget-wide v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndTime:J

    iput-wide v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentTime:J

    .line 291
    iput-boolean v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mHasMore:Z

    .line 292
    iput-boolean v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsReady:Z

    .line 293
    return-void
.end method

.method public setAlphaAnimation(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iput p1, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    .line 165
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iput p2, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsAlphaAnimation:Z

    .line 168
    return-void
.end method

.method public setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    .line 112
    return-void
.end method

.method public setDuration(J)V
    .locals 2
    .parameter "nMilliseconds"

    .prologue
    .line 214
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iput-wide p1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    .line 218
    return-void
.end method

.method public setFillAfter(Z)V
    .locals 0
    .parameter "bFillAfter"

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsFileAfter:Z

    .line 248
    return-void
.end method

.method public setFillBefore(Z)V
    .locals 0
    .parameter "bFillBefore"

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsFileBefore:Z

    .line 238
    return-void
.end method

.method public setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mInterpolator:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    .line 204
    return-void
.end method

.method public setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 123
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsPosAnimation:Z

    .line 126
    return-void
.end method

.method public setReady()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsReady:Z

    .line 98
    return-void
.end method

.method public setRotationAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 137
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsRotateAnimation:Z

    .line 140
    return-void
.end method

.method public setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 151
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsScaleAnimation:Z

    .line 154
    return-void
.end method

.method public setStartOffset(J)V
    .locals 0
    .parameter "nMilliseconds"

    .prologue
    .line 177
    iput-wide p1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mDelayTime:J

    .line 178
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 275
    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsReady:Z

    .line 276
    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsEnded:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mIsStarted:Z

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mHasMore:Z

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartTime:J

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mTotalTime:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mDelayTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mEndTime:J

    .line 281
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 282
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 283
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v0, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, v1, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 284
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mCurrentLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget-object v1, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mStartLayout:Lcom/htc/sunny2/view/animation/SAnimationController$Layout;

    iget v1, v1, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    iput v1, v0, Lcom/htc/sunny2/view/animation/SAnimationController$Layout;->mAlpha:I

    .line 285
    return-void
.end method
