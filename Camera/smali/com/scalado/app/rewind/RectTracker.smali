.class Lcom/scalado/app/rewind/RectTracker;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/RectTracker$AbstractFace;,
        Lcom/scalado/app/rewind/RectTracker$Comparison;,
        Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;,
        Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;,
        Lcom/scalado/app/rewind/RectTracker$RankedId;,
        Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;,
        Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;,
        Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;,
        Lcom/scalado/app/rewind/RectTracker$State;,
        Lcom/scalado/app/rewind/RectTracker$StatisticPoint;,
        Lcom/scalado/app/rewind/RectTracker$TrackedImage;,
        Lcom/scalado/app/rewind/RectTracker$TrackedRect;,
        Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;
    }
.end annotation


# static fields
.field private static final BLINK_DIST_THRES:I = 0x5

.field private static final BLINK_THRES:I = 0x14

.field private static final BLINK_UPPER_THRES:I = 0x5a

.field private static final DEFAULT_MAX_TRANSLATION:F = 0.15f

.field private static final MAX_REL_TRANSLATION:F = 0.06f

.field private static final TAG:Ljava/lang/String; = "RectTracker"

.field private static final UNKNOWN_SCORE:F = -4.0f

.field private static mBlinkMultiplier:F = 0.0f

.field private static final mBlinkThreshold:I = 0x3c

.field private static maxConnectTime:J

.field private static sDxdyCount:I

.field private static sLogging:Z

.field private static sMaxRelDx:F

.field private static sMaxRelDy:F

.field private static sMaxRelVftDx:F

.field private static sMaxRelVftDy:F

.field private static sSequenceCount:I

.field private static sTranslations:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlignRectSizes:Z

.field private mAllFaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mAnalyzeComplete:Z

.field private mBestImage:I

.field private mBestImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field private mBestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$RankedId;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mConvScreen:Lcom/scalado/caps/screen/Screen;

.field private mDeltas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

.field private mFaceDetectionDims:Lcom/scalado/base/Size;

.field private mFaceScaleX:F

.field private mFaceScaleY:F

.field private mFaceScreen:Lcom/scalado/caps/screen/Screen;

.field private mFacesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mFilteredFaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mGuessRects:Z

.field private mImageDims:Lcom/scalado/base/Size;

.field private mImages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$TrackedImage;",
            ">;"
        }
    .end annotation
.end field

.field private mIsComplete:Z

.field private mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

.field private mLockingEnabled:Z

.field private mMatches:[I

.field private mMaxNumRects:I

.field private mMaxScoreImage:I

.field private mMaxTranslation:F

.field private mMinFaceDiffX:F

.field private mMinFaceDiffY:F

.field private mMinMatches:I

.field private mNumAdded:I

.field private mNumGuessed:I

.field private mPredefined:Z

.field private mRectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/scalado/app/rewind/RectTracker$State;

.field private mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

.field private mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

.field private mUseVfTracker:Z

.field private mUseVftForDelta:Z

.field private mVftDeltas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation
.end field

.field private maxDisplacementModifier:F

.field totalFaceDetectionTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 65
    sput-boolean v3, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    .line 97
    const-wide/16 v0, 0x5dc

    sput-wide v0, Lcom/scalado/app/rewind/RectTracker;->maxConnectTime:J

    .line 98
    const/high16 v0, 0x3f80

    sput v0, Lcom/scalado/app/rewind/RectTracker;->mBlinkMultiplier:F

    .line 142
    sput v3, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    .line 143
    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    .line 144
    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    .line 145
    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    .line 146
    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    .line 147
    const/4 v0, 0x0

    sput-object v0, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    .line 148
    sput v3, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .parameter "size"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 174
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v3, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    .line 73
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 75
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    .line 76
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-direct {v1, p0, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 79
    iput v3, p0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    .line 84
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    .line 88
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    .line 89
    iput-boolean v5, p0, Lcom/scalado/app/rewind/RectTracker;->mGuessRects:Z

    .line 90
    iput-boolean v5, p0, Lcom/scalado/app/rewind/RectTracker;->mAlignRectSizes:Z

    .line 91
    iput-boolean v5, p0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    .line 93
    iput-boolean v5, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    .line 94
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVftForDelta:Z

    .line 96
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->maxDisplacementModifier:F

    .line 100
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    .line 101
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    .line 104
    new-instance v1, Lcom/scalado/base/Size;

    const/16 v2, 0x400

    const/16 v3, 0x300

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 108
    iput v6, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 109
    iput v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    .line 110
    const/high16 v1, 0x3fc0

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    .line 111
    const/high16 v1, 0x4000

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    .line 117
    iput-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    .line 130
    const v1, 0x3e19999a

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    .line 134
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$State;

    invoke-direct {v1, p0, v4}, Lcom/scalado/app/rewind/RectTracker$State;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$State;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    .line 151
    iput-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mBitmap:Landroid/graphics/Bitmap;

    .line 175
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    .line 176
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 179
    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    new-instance v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-direct {v2, p0, v0, v4}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$TrackedImage;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>([[Landroid/graphics/Rect;[[F)V
    .locals 12
    .parameter "rects"
    .parameter "deltas"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v8, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    .line 73
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    .line 74
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 75
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    .line 76
    new-instance v5, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-direct {v5, p0, v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 79
    iput v8, p0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    .line 84
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    .line 88
    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    .line 89
    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mGuessRects:Z

    .line 90
    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mAlignRectSizes:Z

    .line 91
    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    .line 93
    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    .line 94
    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVftForDelta:Z

    .line 96
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker;->maxDisplacementModifier:F

    .line 100
    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    .line 101
    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    .line 104
    new-instance v5, Lcom/scalado/base/Size;

    const/16 v6, 0x400

    const/16 v7, 0x300

    invoke-direct {v5, v6, v7}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 108
    iput v11, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 109
    iput v11, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    .line 110
    const/high16 v5, 0x3fc0

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    .line 111
    const/high16 v5, 0x4000

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    .line 117
    iput-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    .line 130
    const v5, 0x3e19999a

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    .line 134
    new-instance v5, Lcom/scalado/app/rewind/RectTracker$State;

    invoke-direct {v5, p0, v10}, Lcom/scalado/app/rewind/RectTracker$State;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$State;)V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 137
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    .line 151
    iput-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mBitmap:Landroid/graphics/Bitmap;

    .line 182
    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    .line 183
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    .line 184
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, p1

    if-lt v0, v5, :cond_0

    .line 194
    const/4 v0, 0x0

    :goto_1
    array-length v5, p1

    if-lt v0, v5, :cond_1

    .line 202
    const/4 v0, 0x0

    :goto_2
    array-length v5, p2

    if-lt v0, v5, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RectTracker;->analyzeImages()Lcom/scalado/app/rewind/RectTracker$State;

    .line 209
    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    .line 210
    return-void

    .line 185
    :cond_0
    new-instance v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-direct {v4, p0, v0, v10}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$TrackedImage;)V

    .line 186
    .local v4, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v4           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    aget-object v5, p1, v0

    array-length v5, v5

    if-lt v2, v5, :cond_2

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .line 199
    .local v1, id:I
    aget-object v5, p1, v0

    aget-object v5, v5, v2

    invoke-direct {p0, v0, v1, v5}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;)V

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 203
    .end local v1           #id:I
    .end local v2           #j:I
    :cond_3
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-direct {v3, p0, v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 204
    .local v3, p:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    aget-object v5, p2, v0

    aget v5, v5, v8

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 205
    aget-object v5, p2, v0

    aget v5, v5, v9

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 206
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/RectTracker;)Lcom/scalado/base/Size;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$2(Lcom/scalado/app/rewind/RectTracker;)F
    .locals 1
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    return v0
.end method

.method static synthetic access$3(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$4(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 3373
    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 3377
    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6()F
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/scalado/app/rewind/RectTracker;->mBlinkMultiplier:F

    return v0
.end method

.method static synthetic access$7(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$8(Lcom/scalado/app/rewind/RectTracker;I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1447
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9()J
    .locals 2

    .prologue
    .line 97
    sget-wide v0, Lcom/scalado/app/rewind/RectTracker;->maxConnectTime:J

    return-wide v0
.end method

.method private accumulateDelta(IILjava/util/Vector;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 6
    .parameter "i0"
    .parameter "i1"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;)",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;"
        }
    .end annotation

    .prologue
    .line 1516
    .local p3, deltas:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/app/rewind/RectTracker$StatisticPoint;>;"
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1517
    .local v2, start:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1518
    .local v1, n:I
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1519
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 1520
    .local v3, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    move v0, v2

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 1524
    if-ge p2, p1, :cond_0

    .line 1525
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    neg-float v4, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1526
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    neg-float v4, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1528
    :cond_0
    return-object v3

    .line 1521
    :cond_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v5

    invoke-virtual {p3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    add-float/2addr v4, v5

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1522
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v5

    invoke-virtual {p3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    add-float/2addr v4, v5

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private accumulateDelta(IILjava/util/Vector;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 5
    .parameter "i0"
    .parameter "i1"
    .parameter
    .parameter "dst"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ")",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;"
        }
    .end annotation

    .prologue
    .local p3, deltas:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/app/rewind/RectTracker$StatisticPoint;>;"
    const/4 v3, 0x0

    .line 1534
    if-ne p1, p2, :cond_1

    .line 1535
    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1536
    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1549
    :cond_0
    :goto_0
    return-object p4

    .line 1539
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1540
    .local v2, start:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 1541
    .local v0, end:I
    move v1, v2

    .local v1, i:I
    :goto_1
    if-le v1, v0, :cond_2

    .line 1545
    if-ge p2, p1, :cond_0

    .line 1546
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    neg-float v3, v3

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1547
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    neg-float v3, v3

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    goto :goto_0

    .line 1542
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    add-float/2addr v3, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1543
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    add-float/2addr v3, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1541
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 2
    .parameter
    .parameter "id"
    .parameter "imageIndex"
    .parameter "rect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1630
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1631
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    aput-object p4, v0, p3

    .line 1632
    return-void
.end method

.method private addRect(IILandroid/graphics/Rect;)V
    .locals 1
    .parameter "image"
    .parameter "id"
    .parameter "rect"

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 341
    return-void
.end method

.method private addRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "image"
    .parameter "id"
    .parameter "rect"
    .parameter "sessionRect"

    .prologue
    .line 344
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 345
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSessionRect:Landroid/graphics/Rect;
    invoke-static {v0, p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$11(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V

    .line 346
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v1, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 347
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1, v0}, Lcom/scalado/app/rewind/RectTracker;->updateMapForRect(Ljava/util/HashMap;ILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 348
    return-void
.end method

.method private alignRectSizes()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f00

    .line 2889
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2912
    return-void

    .line 2889
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2890
    .local v2, id:I
    const/4 v4, -0x1

    .line 2891
    .local v4, wMax:I
    const/4 v0, -0x1

    .line 2892
    .local v0, hMax:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v1, v7, :cond_3

    .line 2899
    const/4 v1, 0x0

    :goto_1
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 2900
    invoke-direct {p0, v2, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 2901
    .local v3, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v3, :cond_2

    .line 2902
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    .line 2903
    .local v5, x:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    .line 2904
    .local v6, y:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    int-to-float v9, v4

    mul-float/2addr v9, v10

    sub-float v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v7, Landroid/graphics/Rect;->left:I

    .line 2905
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    int-to-float v9, v0

    mul-float/2addr v9, v10

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 2906
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    int-to-float v9, v4

    mul-float/2addr v9, v10

    add-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v7, Landroid/graphics/Rect;->right:I

    .line 2907
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    int-to-float v9, v0

    mul-float/2addr v9, v10

    add-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    .line 2899
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2893
    .end local v3           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 2894
    .restart local v3       #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v3, :cond_4

    .line 2895
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2896
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2892
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private allIdsSame([Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 5
    .parameter "ranked"

    .prologue
    .line 1983
    const/4 v0, 0x1

    .line 1984
    .local v0, allEqual:Z
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1985
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lt v1, v3, :cond_0

    .line 1991
    :goto_1
    return v0

    .line 1986
    :cond_0
    aget-object v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p1, v4

    #calls: Lcom/scalado/app/rewind/RectTracker$RankedId;->isExactlyEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$RankedId;->access$4(Lcom/scalado/app/rewind/RectTracker$RankedId;Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1987
    const/4 v0, 0x0

    .line 1988
    goto :goto_1

    .line 1985
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private analyze2()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1770
    new-instance v5, Ljava/util/Vector;

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/Vector;-><init>(I)V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    .line 1771
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    .line 1772
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1802
    return-void

    .line 1772
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1773
    .local v2, id:I
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    invoke-direct {v0, p0, v2, v8}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$AbstractFace;)V

    .line 1774
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 1785
    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_3

    .line 1798
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1799
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1775
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 1776
    .local v3, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v3, :cond_2

    .line 1778
    invoke-direct {p0, v1, v2, v8}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;)V

    .line 1779
    invoke-direct {p0, v2, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 1781
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aput-object v3, v5, v1

    .line 1782
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, v1

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-static {v5, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$29(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$AbstractFace;)V

    .line 1774
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1786
    .end local v3           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 1787
    .local v4, trCur:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1785
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1790
    :cond_5
    add-int/lit8 v5, v1, -0x1

    if-ltz v5, :cond_6

    .line 1791
    add-int/lit8 v5, v1, -0x1

    invoke-direct {p0, v2, v5}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/scalado/app/rewind/RectTracker;->relativeFaceDist(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/PointF;

    move-result-object v5

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;
    invoke-static {v4, v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$30(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)V

    .line 1793
    :cond_6
    add-int/lit8 v5, v1, 0x1

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 1794
    add-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v2, v5}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/scalado/app/rewind/RectTracker;->relativeFaceDist(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/PointF;

    move-result-object v5

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;
    invoke-static {v4, v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$31(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)V

    goto :goto_3
.end method

.method private applyViewfinderTracker(Lcom/scalado/base/Image;)V
    .locals 8
    .parameter "image"

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 298
    .local v0, dims:Lcom/scalado/base/Size;
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v1

    .line 299
    .local v1, index:I
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    if-eqz v6, :cond_1

    .line 300
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    .line 301
    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 302
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Image dimensions doesn\'t match!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 304
    :cond_1
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 305
    .local v4, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mImage:Lcom/scalado/base/Image;
    invoke-static {v4, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/base/Image;)V

    .line 306
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    if-nez v6, :cond_2

    .line 307
    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    .line 309
    :cond_2
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    if-nez v6, :cond_3

    .line 310
    new-instance v6, Lcom/scalado/caps/autorama/ViewfinderTracker;

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    invoke-direct {v6, v7}, Lcom/scalado/caps/autorama/ViewfinderTracker;-><init>(Lcom/scalado/base/Size;)V

    iput-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    .line 313
    :cond_3
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    invoke-virtual {v6, p1}, Lcom/scalado/caps/autorama/ViewfinderTracker;->track(Lcom/scalado/base/Image;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    .line 314
    .local v5, transform:Lcom/scalado/caps/autorama/Transform;
    if-lez v1, :cond_5

    .line 315
    new-instance v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 316
    .local v2, p:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Vector;->getX()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 317
    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Vector;->getY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 318
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 319
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 320
    .local v3, p0:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v6

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    sub-float/2addr v6, v7

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 321
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v6

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    sub-float/2addr v6, v7

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 323
    .end local v3           #p0:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_4
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 325
    .end local v2           #p:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_5
    iget v6, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    .line 327
    return-void
.end method

.method private approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;
    .locals 7
    .parameter "fromId"
    .parameter "toImage"
    .parameter "fromImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .line 1458
    .local p4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1463
    .local v3, r:Landroid/graphics/Rect;
    if-le p2, p3, :cond_0

    .line 1464
    move v1, p3

    .line 1465
    .local v1, deltaIndex:I
    const/high16 v2, 0x3f80

    .line 1472
    .local v2, dir:F
    :goto_0
    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 1473
    .local v0, delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    invoke-direct {p0, p4, p1, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 1474
    .local v4, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1475
    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->offset(Landroid/graphics/Rect;F)V
    invoke-static {v0, v3, v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$11(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;Landroid/graphics/Rect;F)V

    .line 1476
    return-object v3

    .line 1466
    .end local v0           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .end local v1           #deltaIndex:I
    .end local v2           #dir:F
    .end local v4           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_0
    if-ge p2, p3, :cond_1

    .line 1467
    move v1, p2

    .line 1468
    .restart local v1       #deltaIndex:I
    const/high16 v2, -0x4080

    .restart local v2       #dir:F
    goto :goto_0

    .line 1470
    .end local v1           #deltaIndex:I
    .end local v2           #dir:F
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "toImage == fromImage"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private calculateOptimalImages2()V
    .locals 4

    .prologue
    .line 1706
    iget v2, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    if-gez v2, :cond_0

    .line 1707
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Best bg image unknown."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1711
    :cond_0
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1712
    .local v0, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImages:Ljava/util/HashMap;

    .line 1713
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1723
    .local v1, size:I
    return-void
.end method

.method private calculateStatistics()V
    .locals 6

    .prologue
    .line 1078
    const/4 v3, -0x1

    iput v3, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    .line 1079
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 1087
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_2

    .line 1090
    return-void

    .line 1080
    :cond_0
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1081
    .local v2, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1082
    .local v1, size:I
    iget v3, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    if-le v1, v3, :cond_1

    .line 1083
    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    .line 1079
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1088
    .end local v1           #size:I
    .end local v2           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    :cond_2
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    new-instance v4, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1087
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private connect(II)V
    .locals 27
    .parameter "from"
    .parameter "to"

    .prologue
    .line 2943
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->nonOverlapsBetween(Ljava/util/HashMap;II)[I

    move-result-object v18

    .line 2944
    .local v18, fromIds:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->nonOverlapsBetween(Ljava/util/HashMap;II)[I

    move-result-object v9

    .line 2946
    .local v9, toIds:[I
    move-object/from16 v0, v18

    array-length v4, v0

    if-eqz v4, :cond_0

    array-length v4, v9

    if-nez v4, :cond_1

    .line 3058
    :cond_0
    :goto_0
    return-void

    .line 2949
    :cond_1
    const-string v4, "*** Connecting imgs %d -> %d (#ids=(%d,%d))"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, v18

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    array-length v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 2963
    move-object/from16 v0, v18

    array-length v4, v0

    new-array v10, v4, [Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    .line 2964
    .local v10, buckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    move-object/from16 v0, v18

    array-length v4, v0

    move/from16 v0, v19

    if-lt v0, v4, :cond_4

    .line 2984
    array-length v4, v9

    new-array v0, v4, [Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-object/from16 v23, v0

    .line 2985
    .local v23, orderedScores:[Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, v23

    array-length v4, v0

    move/from16 v0, v19

    if-lt v0, v4, :cond_7

    .line 2988
    const/16 v19, 0x0

    :goto_3
    array-length v4, v10

    move/from16 v0, v19

    if-lt v0, v4, :cond_8

    .line 2993
    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, v23

    array-length v4, v0

    move/from16 v0, v19

    if-lt v0, v4, :cond_a

    .line 3008
    const/4 v4, 0x0

    aget-object v4, v23, v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mMaxX:F
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$12(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v21

    .line 3009
    .local v21, maxDist:F
    const/4 v4, 0x0

    aget-object v4, v23, v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$10(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 3010
    const/4 v4, 0x0

    aget-object v4, v23, v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevX:F
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$8(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    add-float v21, v21, v4

    .line 3012
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/scalado/app/rewind/RectTracker;->maxDisplacementModifier:F

    mul-float v21, v21, v4

    .line 3014
    const/16 v22, 0x0

    .line 3015
    .local v22, maxPossibilities:I
    const/16 v19, 0x0

    :goto_5
    array-length v4, v10

    move/from16 v0, v19

    if-lt v0, v4, :cond_b

    .line 3029
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v8, v18

    invoke-direct/range {v3 .. v11}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;IILjava/util/HashMap;[I[I[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V

    .line 3030
    .local v3, connOptimizer:Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;
    #calls: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->findBestConnection()V
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V

    .line 3031
    const/16 v26, 0x1

    .line 3032
    .local v26, tries:I
    :goto_6
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mEndReached:Z
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$2(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)Z

    move-result v4

    if-nez v4, :cond_3

    array-length v4, v9

    move/from16 v0, v26

    if-lt v0, v4, :cond_e

    .line 3042
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mEndReached:Z
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$2(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 3043
    const-string v4, "RectTracker"

    const-string v5, "Failed to connect!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    .line 3045
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/scalado/app/rewind/RectTracker$State;->alignmentSuccessful:Z

    goto/16 :goto_0

    .line 2965
    .end local v3           #connOptimizer:Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;
    .end local v21           #maxDist:F
    .end local v22           #maxPossibilities:I
    .end local v23           #orderedScores:[Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .end local v26           #tries:I
    :cond_4
    new-instance v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    array-length v5, v9

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$ConnectionBucket;)V

    aput-object v4, v10, v19

    .line 2966
    const/16 v20, 0x0

    .local v20, j:I
    :goto_7
    array-length v4, v9

    move/from16 v0, v20

    if-lt v0, v4, :cond_5

    .line 2971
    aget-object v4, v10, v19

    #calls: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->sort()V
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$4(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)V

    .line 2974
    aget-object v4, v10, v19

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    const/high16 v5, 0x7f80

    cmpl-float v4, v4, v5

    if-nez v4, :cond_6

    .line 2977
    const-string v4, "RectTracker"

    const-string v5, "Failed to connect (no closest rect)!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    .line 2979
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/scalado/app/rewind/RectTracker$State;->alignmentSuccessful:Z

    goto/16 :goto_0

    .line 2967
    :cond_5
    aget v5, v18, v19

    aget v7, v9, v20

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/scalado/app/rewind/RectTracker;->distance(IIIILjava/util/HashMap;)F

    move-result v17

    .line 2968
    .local v17, d:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    aget v5, v9, v20

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v5, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v25

    .line 2969
    .local v25, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    aget-object v4, v10, v19

    aget v5, v9, v20

    move/from16 v0, v17

    move-object/from16 v1, v25

    #calls: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->add(IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v4, v5, v0, v1}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$3(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 2966
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 2964
    .end local v17           #d:F
    .end local v25           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 2986
    .end local v20           #j:I
    .restart local v23       #orderedScores:[Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_7
    new-instance v4, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    aput-object v4, v23, v19

    .line 2985
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 2989
    :cond_8
    const/16 v20, 0x0

    .restart local v20       #j:I
    :goto_8
    move-object/from16 v0, v23

    array-length v4, v0

    move/from16 v0, v20

    if-lt v0, v4, :cond_9

    .line 2988
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 2990
    :cond_9
    aget-object v4, v23, v20

    aget-object v5, v10, v19

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v5

    aget-object v5, v5, v20

    iget v5, v5, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    const/4 v6, 0x0

    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->addObservation(FF)V
    invoke-static {v4, v5, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$6(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;FF)V

    .line 2989
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 2994
    .end local v20           #j:I
    :cond_a
    aget-object v4, v23, v19

    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->compute()V
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$7(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 2993
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    .line 3016
    .restart local v21       #maxDist:F
    .restart local v22       #maxPossibilities:I
    :cond_b
    const-string v24, ""

    .line 3017
    .local v24, s:Ljava/lang/String;
    const/16 v20, 0x0

    .line 3019
    .restart local v20       #j:I
    :goto_9
    aget-object v4, v10, v19

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    array-length v4, v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_c

    if-eqz v20, :cond_d

    aget-object v4, v10, v19

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v20

    iget v4, v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    cmpg-float v4, v4, v21

    if-ltz v4, :cond_d

    .line 3023
    :cond_c
    aget-object v4, v10, v19

    move/from16 v0, v20

    #setter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v4, v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$5(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)V

    .line 3024
    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 3015
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_5

    .line 3020
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " %2d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v10, v19

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v8

    aget-object v8, v8, v20

    iget v8, v8, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 3021
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 3033
    .end local v20           #j:I
    .end local v24           #s:Ljava/lang/String;
    .restart local v3       #connOptimizer:Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;
    .restart local v26       #tries:I
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/scalado/app/rewind/RectTracker;->increaseBuckets([Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)V

    .line 3034
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;

    .end local v3           #connOptimizer:Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v8, v18

    invoke-direct/range {v3 .. v11}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;IILjava/util/HashMap;[I[I[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V

    .line 3035
    .restart local v3       #connOptimizer:Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mPossibilities:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$3(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)I

    move-result v4

    const v5, 0x186a0

    if-gt v4, v5, :cond_3

    .line 3038
    #calls: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->findBestConnection()V
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V

    .line 3039
    add-int/lit8 v26, v26, 0x1

    .line 3040
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    .line 3049
    :cond_f
    const/16 v19, 0x0

    :goto_a
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$4(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I

    move-result-object v4

    array-length v4, v4

    move/from16 v0, v19

    if-lt v0, v4, :cond_10

    .line 3054
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Min matches = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 3055
    const/16 v19, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    array-length v4, v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_0

    .line 3056
    const-string v4, "   %d->%d : %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    add-int/lit8 v7, v19, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v7, v7, v19

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 3055
    add-int/lit8 v19, v19, 0x1

    goto :goto_b

    .line 3050
    :cond_10
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$4(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I

    move-result-object v4

    aget v12, v4, v19

    .line 3051
    .local v12, id0:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mConnections:[I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$5(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I

    move-result-object v4

    aget v13, v4, v19

    .line 3052
    .local v13, id1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v11, p0

    move/from16 v14, p1

    move/from16 v15, p2

    invoke-direct/range {v11 .. v16}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(IIIILjava/util/HashMap;)V

    .line 3049
    add-int/lit8 v19, v19, 0x1

    goto :goto_a
.end method

.method private connectAllImages()V
    .locals 8

    .prologue
    .line 2915
    const/4 v6, 0x2

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 2916
    .local v5, toOffsets:[I
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v3

    .line 2917
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, imageIndex:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 2932
    return-void

    .line 2918
    :cond_0
    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->numRectsInImage(I)I

    move-result v6

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    if-ne v6, v7, :cond_1

    .line 2919
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v6, v5

    if-lt v2, v6, :cond_2

    .line 2917
    .end local v2           #j:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2920
    .restart local v2       #j:I
    :cond_2
    aget v6, v5, v2

    add-int v4, v1, v6

    .line 2921
    .local v4, to:I
    if-ltz v4, :cond_3

    if-lt v4, v3, :cond_4

    .line 2919
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2924
    :cond_4
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2925
    .local v0, deltaIndex:I
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v6, v6, v0

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    if-eq v6, v7, :cond_3

    .line 2928
    invoke-direct {p0, v4, v1}, Lcom/scalado/app/rewind/RectTracker;->connect(II)V

    goto :goto_2

    .line 2915
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private convertRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 3348
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    if-eqz v2, :cond_0

    .line 3349
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 3350
    .local v0, screenRect:Lcom/scalado/base/Rect;
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    .line 3351
    .local v1, sessionRect:Lcom/scalado/base/Rect;
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, p1, v1}, Lcom/scalado/app/rewind/Geom;->transformToSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 3352
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, v1, v0}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 3353
    invoke-static {v0, p2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3357
    .end local v0           #screenRect:Lcom/scalado/base/Rect;
    .end local v1           #sessionRect:Lcom/scalado/base/Rect;
    :goto_0
    return-void

    .line 3355
    :cond_0
    invoke-static {p1, p2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private convertToSession(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 3360
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 3361
    .local v0, sessionRect:Lcom/scalado/base/Rect;
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v1, p1, v0}, Lcom/scalado/app/rewind/Geom;->transformToSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 3362
    invoke-static {v0, p2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3363
    return-void
.end method

.method private copy(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2769
    .local p1, oldMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2770
    .local v2, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2778
    return-object v2

    .line 2770
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2771
    .local v1, key:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2772
    .local v4, oldVal:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    array-length v5, v4

    new-array v3, v5, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2773
    .local v3, newVal:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v4

    if-lt v0, v5, :cond_1

    .line 2776
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2774
    :cond_1
    aget-object v5, v4, v0

    aput-object v5, v3, v0

    .line 2773
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private createRankedId(IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$RankedId;
    .locals 9
    .parameter "imgIndex"
    .parameter "id"
    .parameter "score"
    .parameter "tr"

    .prologue
    const/4 v6, 0x0

    .line 1995
    if-eqz p4, :cond_0

    .line 1996
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$RankedId;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F
    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$39(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F

    move-result v4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$RankedId;)V

    .line 1998
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$RankedId;

    const/high16 v5, -0x3f80

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v8, v6

    invoke-direct/range {v1 .. v8}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;ZLcom/scalado/app/rewind/RectTracker$RankedId;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private distance(IIIILjava/util/HashMap;)F
    .locals 4
    .parameter "fromImage"
    .parameter "fromId"
    .parameter "toImage"
    .parameter "toId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 2823
    .local p5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-direct {p0, p2, p3, p1, p5}, Lcom/scalado/app/rewind/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v1

    .line 2824
    .local v1, r1:Landroid/graphics/Rect;
    invoke-direct {p0, p5, p4, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v2

    .line 2825
    .local v2, tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v2, :cond_0

    .line 2826
    invoke-direct {p0, p5, p4, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2827
    .local v0, r0:Landroid/graphics/Rect;
    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->rectCenterDist(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v3

    .line 2830
    .end local v0           #r0:Landroid/graphics/Rect;
    :goto_0
    return v3

    :cond_0
    const/high16 v3, 0x7f80

    goto :goto_0
.end method

.method private enlargeRectangles(FF)V
    .locals 46
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_0
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-nez v41, :cond_2

    .line 500
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 501
    .local v16, intersection:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 502
    .local v10, faceIntersection:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_1
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-nez v41, :cond_8

    .line 597
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/rewind/RectTracker;->filterFaces()Ljava/util/Vector;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    .line 598
    return-void

    .line 440
    .end local v10           #faceIntersection:Landroid/graphics/Rect;
    .end local v16           #intersection:Landroid/graphics/Rect;
    :cond_2
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 441
    .local v23, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_3
    :goto_0
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_0

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 442
    .local v24, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_3

    .line 445
    const/high16 v3, 0x3fc0

    .line 446
    .local v3, baseX:F
    const v5, 0x3e4ccccd

    .line 447
    .local v5, breakPoint:F
    mul-float v42, v3, p2

    div-float v4, v42, p1

    .line 448
    .local v4, baseY:F
    sub-float v21, p1, v3

    .line 449
    .local v21, sxBackoffPart:F
    sub-float v22, p2, v4

    .line 450
    .local v22, syBackoffPart:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v20

    .line 452
    .local v20, rect:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    const/16 v43, 0x2

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v42, v42, v43

    if-eqz v42, :cond_4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v42, v42, v43

    if-nez v42, :cond_5

    .line 461
    :cond_4
    const-string v42, "No eye rects for img=%d, id=%d"

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mIndex:I
    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$0(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 464
    :cond_5
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/scalado/base/Size;->getWidth()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    div-float v11, v42, v43

    .line 465
    .local v11, faceRelativeSizeX:F
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/scalado/base/Size;->getHeight()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    div-float v12, v42, v43

    .line 470
    .local v12, faceRelativeSizeY:F
    cmpl-float v42, v11, v5

    if-lez v42, :cond_6

    .line 472
    const/16 v34, 0x0

    .line 478
    .local v34, xBackoffMultiplier:F
    :goto_1
    cmpl-float v42, v12, v5

    if-lez v42, :cond_7

    .line 480
    const/16 v37, 0x0

    .line 487
    .local v37, yBackoffMultiplier:F
    :goto_2
    new-instance v42, Landroid/graphics/Rect;

    invoke-direct/range {v42 .. v42}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$15(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V

    .line 488
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v36

    .line 489
    .local v36, xc:F
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v39

    .line 490
    .local v39, yc:F
    mul-float v42, v21, v34

    add-float v42, v42, v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v42, v42, v43

    const/high16 v43, 0x3f00

    mul-float v31, v42, v43

    .line 491
    .local v31, w:F
    mul-float v42, v22, v37

    add-float v42, v42, v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v42, v42, v43

    const/high16 v43, 0x3f00

    mul-float v14, v42, v43

    .line 493
    .local v14, h:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    sub-float v43, v36, v31

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 494
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    sub-float v43, v39, v14

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 495
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    add-float v43, v36, v31

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 496
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    add-float v43, v39, v14

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 497
    new-instance v42, Landroid/graphics/Rect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$17(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 476
    .end local v14           #h:F
    .end local v31           #w:F
    .end local v34           #xBackoffMultiplier:F
    .end local v36           #xc:F
    .end local v37           #yBackoffMultiplier:F
    .end local v39           #yc:F
    :cond_6
    const/high16 v42, 0x3f80

    div-float v43, v11, v5

    sub-float v34, v42, v43

    .restart local v34       #xBackoffMultiplier:F
    goto/16 :goto_1

    .line 484
    :cond_7
    const/high16 v42, 0x3f80

    div-float v43, v12, v5

    sub-float v37, v42, v43

    .restart local v37       #yBackoffMultiplier:F
    goto/16 :goto_2

    .line 502
    .end local v3           #baseX:F
    .end local v4           #baseY:F
    .end local v5           #breakPoint:F
    .end local v11           #faceRelativeSizeX:F
    .end local v12           #faceRelativeSizeY:F
    .end local v20           #rect:Landroid/graphics/Rect;
    .end local v21           #sxBackoffPart:F
    .end local v22           #syBackoffPart:F
    .end local v23           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    .end local v24           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v34           #xBackoffMultiplier:F
    .end local v37           #yBackoffMultiplier:F
    .restart local v10       #faceIntersection:Landroid/graphics/Rect;
    .restart local v16       #intersection:Landroid/graphics/Rect;
    :cond_8
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 503
    .restart local v23       #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/Vector;->size()I

    move-result v41

    move/from16 v0, v41

    if-ge v15, v0, :cond_1

    .line 504
    add-int/lit8 v17, v15, 0x1

    .local v17, j:I
    :goto_4
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/Vector;->size()I

    move-result v41

    move/from16 v0, v17

    move/from16 v1, v41

    if-lt v0, v1, :cond_9

    .line 503
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 505
    :cond_9
    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    .line 504
    :cond_a
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 508
    :cond_b
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 509
    .local v25, tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 510
    .local v26, tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    if-eqz v41, :cond_a

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    if-eqz v41, :cond_a

    .line 513
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$18(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v18

    .line 514
    .local v18, r0:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$18(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v19

    .line 515
    .local v19, r1:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 516
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v41

    if-eqz v41, :cond_a

    .line 519
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 520
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v13

    .line 521
    .local v13, facesIntersects:Z
    if-eqz v13, :cond_c

    .line 522
    const-string v41, "*** Faces intersects: %d - %d"

    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    const/16 v43, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 524
    :cond_c
    const/4 v7, 0x0

    .line 529
    .local v7, didLock:Z
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v41

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v42

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_12

    .line 533
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v41, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_10

    .line 534
    move-object/from16 v28, v25

    .line 535
    .local v28, trLeft:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v29, v26

    .line 540
    .local v29, trRight:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :goto_6
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->width()I

    move-result v41

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->width()I

    move-result v42

    add-int v41, v41, v42

    move/from16 v0, v41

    int-to-float v6, v0

    .line 541
    .local v6, dSum:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->width()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v32, v41, v6

    .line 542
    .local v32, wLeft:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v41, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v42, v0

    sub-int v41, v41, v42

    move/from16 v0, v41

    int-to-float v8, v0

    .line 543
    .local v8, diff:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v42, v32, v8

    add-float v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->round(F)I

    move-result v35

    .line 545
    .local v35, xBorder:I
    const/4 v9, 0x0

    .line 546
    .local v9, doLock:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    move/from16 v41, v0

    cmpl-float v41, v8, v41

    if-ltz v41, :cond_11

    .line 547
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v42, v0

    move/from16 v0, v35

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 548
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    move/from16 v0, v35

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 549
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v41, v0

    move/from16 v0, v35

    move/from16 v1, v41

    if-le v0, v1, :cond_d

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v41, v0

    move/from16 v0, v35

    move/from16 v1, v41

    if-lt v0, v1, :cond_e

    .line 550
    :cond_d
    const/4 v9, 0x1

    .line 555
    :cond_e
    :goto_7
    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    move/from16 v41, v0

    if-eqz v41, :cond_f

    .line 556
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->lockFaces(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 557
    const/4 v7, 0x1

    .line 590
    .end local v28           #trLeft:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v29           #trRight:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v32           #wLeft:F
    .end local v35           #xBorder:I
    :cond_f
    :goto_8
    if-eqz v7, :cond_a

    .line 591
    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->addNeighbour(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static/range {v25 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$19(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 592
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->addNeighbour(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$19(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    goto/16 :goto_5

    .line 537
    .end local v6           #dSum:F
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    :cond_10
    move-object/from16 v28, v26

    .line 538
    .restart local v28       #trLeft:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v29, v25

    .restart local v29       #trRight:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    goto/16 :goto_6

    .line 553
    .restart local v6       #dSum:F
    .restart local v8       #diff:F
    .restart local v9       #doLock:Z
    .restart local v32       #wLeft:F
    .restart local v35       #xBorder:I
    :cond_11
    const/4 v9, 0x1

    goto :goto_7

    .line 563
    .end local v6           #dSum:F
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    .end local v28           #trLeft:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v29           #trRight:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v32           #wLeft:F
    .end local v35           #xBorder:I
    :cond_12
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_15

    .line 564
    move-object/from16 v30, v25

    .line 565
    .local v30, trTop:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v27, v26

    .line 570
    .local v27, trBottom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :goto_9
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->height()I

    move-result v41

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->height()I

    move-result v42

    add-int v41, v41, v42

    move/from16 v0, v41

    int-to-float v6, v0

    .line 571
    .restart local v6       #dSum:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->height()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v33, v41, v6

    .line 572
    .local v33, wTop:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v42, v0

    sub-int v41, v41, v42

    move/from16 v0, v41

    int-to-float v8, v0

    .line 573
    .restart local v8       #diff:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v42, v33, v8

    add-float v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->round(F)I

    move-result v38

    .line 575
    .local v38, yBorder:I
    const/4 v9, 0x0

    .line 576
    .restart local v9       #doLock:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    move/from16 v41, v0

    cmpl-float v41, v8, v41

    if-ltz v41, :cond_16

    .line 577
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v42, v0

    move/from16 v0, v38

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 578
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move/from16 v0, v38

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 579
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v41, v0

    move/from16 v0, v38

    move/from16 v1, v41

    if-le v0, v1, :cond_13

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    move/from16 v0, v38

    move/from16 v1, v41

    if-lt v0, v1, :cond_14

    .line 580
    :cond_13
    const/4 v9, 0x1

    .line 585
    :cond_14
    :goto_a
    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    move/from16 v41, v0

    if-eqz v41, :cond_f

    .line 586
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->lockFaces(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 587
    const/4 v7, 0x1

    goto/16 :goto_8

    .line 567
    .end local v6           #dSum:F
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    .end local v27           #trBottom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v30           #trTop:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v33           #wTop:F
    .end local v38           #yBorder:I
    :cond_15
    move-object/from16 v30, v26

    .line 568
    .restart local v30       #trTop:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v27, v25

    .restart local v27       #trBottom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    goto/16 :goto_9

    .line 583
    .restart local v6       #dSum:F
    .restart local v8       #diff:F
    .restart local v9       #doLock:Z
    .restart local v33       #wTop:F
    .restart local v38       #yBorder:I
    :cond_16
    const/4 v9, 0x1

    goto :goto_a
.end method

.method private estimateDeltas()V
    .locals 14

    .prologue
    .line 1093
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    .line 1094
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1112
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-lt v5, v10, :cond_4

    .line 1127
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->updateMinMatches()V

    .line 1128
    const-string v10, "Total Delta: (%f,%f) std dev = (%f, %f)"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 1129
    iget-object v13, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v13}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v13}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevX:F
    invoke-static {v13}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$8(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    .line 1130
    iget-object v13, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevY:F
    invoke-static {v13}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$9(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1128
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1131
    return-void

    .line 1094
    .end local v5           #i:I
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1095
    .local v6, id:I
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1096
    .local v7, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v5, 0x1

    .restart local v5       #i:I
    :goto_1
    array-length v10, v7

    if-ge v5, v10, :cond_0

    .line 1097
    add-int/lit8 v10, v5, -0x1

    aget-object v9, v7, v10

    .line 1098
    .local v9, prevTr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    aget-object v1, v7, v5

    .line 1099
    .local v1, curTr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v9, :cond_2

    if-nez v1, :cond_3

    .line 1096
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1103
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 1104
    .local v8, prev:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1105
    .local v0, cur:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v12

    sub-float v3, v10, v12

    .line 1106
    .local v3, dx:F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v12

    sub-float v4, v10, v12

    .line 1107
    .local v4, dy:F
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v10, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1108
    .local v2, delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->addObservation(FF)V
    invoke-static {v2, v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$6(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;FF)V

    .line 1109
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->addObservation(FF)V
    invoke-static {v10, v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$6(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;FF)V

    goto :goto_2

    .line 1113
    .end local v0           #cur:Landroid/graphics/Rect;
    .end local v1           #curTr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v2           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .end local v3           #dx:F
    .end local v4           #dy:F
    .end local v6           #id:I
    .end local v7           #indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v8           #prev:Landroid/graphics/Rect;
    .end local v9           #prevTr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_4
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v10, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1114
    .restart local v2       #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->compute()V
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$7(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 1115
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->compute()V
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$7(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 1117
    const-string v10, "Delta       %d -> %d: (%f,%f), std dev = (%f, %f), n = %d"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v13, v5, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 1118
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevX:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$8(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevY:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$9(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$10(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1116
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1119
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1120
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v10, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    check-cast v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1122
    .restart local v2       #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    const-string v10, "(VFT) Delta %d -> %d: (%f,%f)"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v13, v5, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 1123
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1121
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1125
    :cond_5
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$10(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v11

    aput v11, v10, v5

    .line 1112
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method private filterFaces()Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1830
    new-instance v2, Ljava/util/Vector;

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/Vector;-><init>(I)V

    .line 1831
    .local v2, faces:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/app/rewind/RectTracker$AbstractFace;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 1848
    return-object v2

    .line 1832
    :cond_0
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1833
    .local v1, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1834
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1831
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1836
    :cond_2
    const/4 v0, 0x1

    .line 1837
    .local v0, add:Z
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1843
    :goto_2
    if-eqz v0, :cond_1

    .line 1844
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1837
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1838
    .local v4, lockedWith:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-virtual {v2, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1839
    const/4 v0, 0x0

    .line 1840
    goto :goto_2
.end method

.method private findFirstImage(Ljava/util/HashMap;I)I
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v2, -0x1

    .line 1578
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1579
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v1, :cond_1

    move v0, v2

    .line 1587
    :cond_0
    :goto_0
    return v0

    .line 1582
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_2

    move v0, v2

    .line 1587
    goto :goto_0

    .line 1583
    :cond_2
    aget-object v3, v1, v0

    if-nez v3, :cond_0

    .line 1582
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private findLastImage(Ljava/util/HashMap;I)I
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v2, -0x1

    .line 1591
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1592
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v1, :cond_1

    move v0, v2

    .line 1600
    :cond_0
    :goto_0
    return v0

    .line 1595
    :cond_1
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_2

    move v0, v2

    .line 1600
    goto :goto_0

    .line 1596
    :cond_2
    aget-object v3, v1, v0

    if-nez v3, :cond_0

    .line 1595
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 3
    .parameter "index"

    .prologue
    .line 1449
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1450
    .local v0, delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$10(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVftForDelta:Z

    if-eqz v1, :cond_0

    .line 1451
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    check-cast v0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1453
    .restart local v0       #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_0
    return-object v0
.end method

.method private getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .locals 1
    .parameter "id"
    .parameter "index"

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    return-object v0
.end method

.method private getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .locals 4
    .parameter
    .parameter "id"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v1, 0x0

    .line 1655
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1656
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRectInImage error:no map "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1664
    :goto_0
    return-object v1

    .line 1659
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1660
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    aget-object v2, v0, p3

    if-eqz v2, :cond_1

    .line 1661
    aget-object v1, v0, p3

    goto :goto_0

    .line 1663
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRectInImage error:no index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTransforms()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1508
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    if-nez v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    .line 1511
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    goto :goto_0
.end method

.method private guessRects(I)V
    .locals 26
    .parameter "numSteps"

    .prologue
    .line 1370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v20

    .line 1371
    .local v20, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 1372
    .local v11, done:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    .line 1373
    .local v16, keys:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v22, Ljava/util/Vector;

    invoke-direct/range {v22 .. v22}, Ljava/util/Vector;-><init>()V

    .line 1374
    .local v22, removed:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1377
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1444
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 1445
    return-void

    .line 1374
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1375
    .local v15, id:I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1377
    .end local v15           #id:I
    :cond_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1378
    .local v6, id0:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/scalado/app/rewind/RectTracker;->findFirstImage(Ljava/util/HashMap;I)I

    move-result v14

    .line 1379
    .local v14, first:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v17

    .line 1380
    .local v17, last:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v21

    .line 1382
    .local v21, numImgs:I
    const/16 v19, 0x0

    .line 1384
    .local v19, nTot:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v21

    if-eq v0, v4, :cond_0

    .line 1387
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1390
    const/16 v18, 0x0

    .line 1391
    .local v18, n:I
    :goto_2
    if-lez v14, :cond_3

    move/from16 v0, v18

    move/from16 v1, p1

    if-lt v0, v1, :cond_4

    .line 1411
    :cond_3
    move/from16 v0, v18

    move/from16 v1, p1

    if-lt v0, v1, :cond_6

    .line 1412
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v20

    .line 1413
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v20

    .line 1414
    goto/16 :goto_1

    .line 1392
    :cond_4
    add-int/lit8 v5, v14, -0x1

    .line 1393
    .local v5, index:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6, v14}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v9

    .line 1394
    .local v9, curRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    new-instance v7, Landroid/graphics/Rect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v7, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1395
    .local v7, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v10

    .line 1396
    .local v10, delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    neg-int v12, v4

    .line 1397
    .local v12, dx:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    neg-int v13, v4

    .line 1398
    .local v13, dy:I
    invoke-virtual {v7, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 1399
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1400
    .local v3, newRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v4, v3}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1401
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6, v5, v3}, Lcom/scalado/app/rewind/RectTracker;->addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1402
    move-object/from16 v0, p0

    iget v4, v0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    .line 1403
    const-string v4, "Making up rect (img=%d id=%d %s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v24, 0x0

    .line 1404
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v8, v24

    const/16 v24, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v8, v24

    const/16 v24, 0x2

    aput-object v7, v8, v24

    .line 1403
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1405
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1406
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1408
    :cond_5
    add-int/lit8 v18, v18, 0x1

    .line 1409
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_2

    .line 1416
    .end local v3           #newRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v5           #index:I
    .end local v7           #r:Landroid/graphics/Rect;
    .end local v9           #curRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v10           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .end local v12           #dx:I
    .end local v13           #dy:I
    :cond_6
    move/from16 v19, v18

    .line 1417
    const/16 v18, 0x0

    .line 1418
    :goto_3
    if-ltz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v17

    if-ge v0, v4, :cond_7

    move/from16 v0, v18

    move/from16 v1, p1

    if-lt v0, v1, :cond_8

    .line 1438
    :cond_7
    add-int v19, v19, v18

    .line 1439
    if-lez v19, :cond_0

    .line 1440
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v20

    .line 1441
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v20

    goto/16 :goto_1

    .line 1419
    :cond_8
    add-int/lit8 v5, v17, 0x1

    .line 1420
    .restart local v5       #index:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-direct {v0, v1, v6, v2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v9

    .line 1421
    .restart local v9       #curRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    new-instance v7, Landroid/graphics/Rect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v7, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1422
    .restart local v7       #r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v10

    .line 1423
    .restart local v10       #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 1424
    .restart local v12       #dx:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 1425
    .restart local v13       #dy:I
    invoke-virtual {v7, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 1426
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1427
    .restart local v3       #newRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v4, v3}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1428
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6, v5, v3}, Lcom/scalado/app/rewind/RectTracker;->addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1429
    move-object/from16 v0, p0

    iget v4, v0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    .line 1430
    const-string v4, "Making up rect (img=%d id=%d %s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v24, 0x0

    .line 1431
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v8, v24

    const/16 v24, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v8, v24

    const/16 v24, 0x2

    aput-object v7, v8, v24

    .line 1430
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1432
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1433
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1435
    :cond_9
    add-int/lit8 v18, v18, 0x1

    .line 1436
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3
.end method

.method private idsOverlaps(Ljava/util/HashMap;II)Z
    .locals 4
    .parameter
    .parameter "id0"
    .parameter "id1"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 1604
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1605
    .local v1, indexes0:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1606
    .local v2, indexes1:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 1611
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 1607
    :cond_0
    aget-object v3, v1, v0

    if-eqz v3, :cond_1

    aget-object v3, v2, v0

    if-eqz v3, :cond_1

    .line 1608
    const/4 v3, 0x1

    goto :goto_1

    .line 1606
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private inNumImages(Ljava/util/HashMap;I)I
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1564
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v2, 0x0

    .line 1565
    .local v2, n:I
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1566
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v1, :cond_0

    .line 1567
    const/4 v3, 0x0

    .line 1574
    :goto_0
    return v3

    .line 1569
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_1

    move v3, v2

    .line 1574
    goto :goto_0

    .line 1570
    :cond_1
    aget-object v3, v1, v0

    if-eqz v3, :cond_2

    .line 1571
    add-int/lit8 v2, v2, 0x1

    .line 1569
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private increaseBuckets([Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)V
    .locals 3
    .parameter "buckets"
    .parameter "maxNum"

    .prologue
    .line 3061
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 3066
    return-void

    .line 3062
    :cond_0
    aget-object v1, p1, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_1

    .line 3063
    aget-object v1, p1, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v1, v2}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$5(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)V

    .line 3061
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isComplete(Ljava/util/HashMap;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1669
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1675
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1669
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1670
    .local v0, id:I
    invoke-direct {p0, p1, v0}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v1

    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1671
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not complete id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1672
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lockFaces(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 5
    .parameter "tr0"
    .parameter "tr1"

    .prologue
    .line 1679
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$28(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    move-result-object v1

    .line 1680
    .local v1, face0:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$28(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    move-result-object v2

    .line 1681
    .local v2, face1:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1682
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1, v3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$13(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Ljava/util/Vector;)V

    .line 1684
    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1685
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1687
    :cond_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1688
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2, v3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$13(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Ljava/util/Vector;)V

    .line 1690
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1691
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1693
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1698
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1703
    return-void

    .line 1693
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1694
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1695
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1698
    .end local v0           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1699
    .restart local v0       #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1700
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static logDumpTranslations()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 984
    const-string v4, "*** Translations ***"

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 985
    const-string v4, "Count = %d"

    new-array v5, v9, [Ljava/lang/Object;

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 986
    const-string v4, "Relative to FD dims."

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 987
    const-string v4, "Max (%f, %f)"

    new-array v5, v10, [Ljava/lang/Object;

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 988
    const-string v4, "Max VFT (%f, %f)"

    new-array v5, v10, [Ljava/lang/Object;

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 990
    sget-object v4, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    if-eqz v4, :cond_0

    .line 991
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v4, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 1001
    :cond_0
    return-void

    .line 992
    :cond_1
    sget-object v4, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;

    .line 993
    .local v3, s:Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$0(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$1(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 994
    .local v0, dx:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$2(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$3(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 996
    .local v1, dy:F
    const-string v4, "%03d. img%d->%d, id%d: (%f, %f), VFT (%f, %f), diff (%f, %f)"

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mSeqCount:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$4(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 997
    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mImageIndex:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$5(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mImageIndex:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$5(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x3

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mId:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$6(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$0(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 998
    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$2(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$1(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$3(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    .line 995
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    .line 991
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private logTranslations()V
    .locals 24

    .prologue
    .line 1025
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    int-to-float v14, v1

    .line 1026
    .local v14, fdw:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    int-to-float v13, v1

    .line 1027
    .local v13, fdh:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1074
    sget v1, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    .line 1075
    return-void

    .line 1027
    :cond_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1028
    .local v5, id:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1029
    const/4 v15, 0x1

    .local v15, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v15, v1, :cond_0

    .line 1030
    add-int/lit8 v1, v15, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v21

    .line 1031
    .local v21, trPrev:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v20

    .line 1032
    .local v20, trCur:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v21, :cond_2

    if-nez v20, :cond_3

    .line 1033
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%d -> %d: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    .line 1029
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1036
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1037
    :cond_4
    const-string v1, "%d -> %d: no rects"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    goto :goto_1

    .line 1040
    :cond_5
    const/high16 v1, 0x3f00

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v18, v1, v2

    .line 1041
    .local v18, mw:F
    const/high16 v1, 0x3f00

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v16, v1, v2

    .line 1042
    .local v16, mh:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v11, v1

    .line 1043
    .local v11, dx:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v12, v1

    .line 1044
    .local v12, dy:F
    div-float v6, v11, v18

    .line 1045
    .local v6, relDx:F
    div-float v7, v12, v16

    .line 1046
    .local v7, relDy:F
    const-string v1, "%d -> %d: (dx, dy) = (%f, %f) (rel to f. size)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1047
    .local v17, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    if-eqz v1, :cond_b

    .line 1048
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    add-int/lit8 v2, v15, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1049
    .local v19, sp:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    div-float v6, v11, v14

    .line 1050
    div-float v7, v12, v13

    .line 1051
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    div-float v8, v1, v14

    .line 1052
    .local v8, relVftDx:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    div-float v9, v1, v13

    .line 1053
    .local v9, relVftDy:F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", (%f, %f), vft=(%f, %f)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1054
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 1055
    sput v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    .line 1057
    :cond_6
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 1058
    sput v7, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    .line 1060
    :cond_7
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 1061
    sput v8, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    .line 1063
    :cond_8
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    .line 1064
    sput v9, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    .line 1066
    :cond_9
    sget-object v1, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    if-eqz v1, :cond_a

    .line 1067
    sget-object v23, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    new-instance v1, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;

    sget v3, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    add-int/lit8 v4, v15, -0x1

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;-><init>(Lcom/scalado/app/rewind/RectTracker;IIIFFFFLcom/scalado/app/rewind/RectTracker$TranslationStatistics;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1069
    :cond_a
    sget v1, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    .line 1071
    .end local v8           #relVftDx:F
    .end local v9           #relVftDy:F
    .end local v19           #sp:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_b
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static final logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3378
    sget-boolean v0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    .line 3379
    const-string v0, "RectTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    :cond_0
    return-void
.end method

.method private static final logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 3384
    sget-boolean v0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    .line 3385
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    :cond_0
    return-void
.end method

.method private static final logdind(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 3390
    sget-boolean v0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    .line 3391
    const-string v0, "RectTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    :cond_0
    return-void
.end method

.method private static final logw(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3374
    const-string v0, "RectTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    return-void
.end method

.method private meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .parameter "r0"
    .parameter "r1"

    .prologue
    const/high16 v8, 0x4000

    const/high16 v7, 0x3f00

    .line 1495
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    add-float/2addr v5, v6

    div-float v3, v5, v8

    .line 1496
    .local v3, xc:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    add-float/2addr v5, v6

    div-float v4, v5, v8

    .line 1497
    .local v4, yc:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v2, v5, v7

    .line 1498
    .local v2, w:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v0, v5, v7

    .line 1499
    .local v0, h:F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1500
    .local v1, r:Landroid/graphics/Rect;
    mul-float v5, v7, v2

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 1501
    mul-float v5, v7, v0

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 1502
    mul-float v5, v7, v2

    add-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 1503
    mul-float v5, v7, v0

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 1504
    return-object v1
.end method

.method private mergeAllRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 27
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1295
    .local p1, oldMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    .local p2, removed:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p1}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v13

    .line 1296
    .local v13, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .line 1297
    .local v18, toRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1298
    .local v8, keys:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_3

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 1303
    .local v16, overlaps:[F
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_4

    .line 1355
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_d

    .line 1358
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "# ids = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1359
    if-eqz p2, :cond_2

    .line 1360
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_1
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_e

    .line 1366
    :cond_2
    return-object v13

    .line 1298
    .end local v16           #overlaps:[F
    :cond_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1299
    .local v4, id:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1303
    .end local v4           #id:I
    .restart local v16       #overlaps:[F
    :cond_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1304
    .local v5, id0:I
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_5
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1305
    .local v6, id1:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    if-eq v5, v6, :cond_5

    .line 1308
    if-eqz p2, :cond_6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 1311
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v11

    .line 1312
    .local v11, n0:I
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v12

    .line 1313
    .local v12, n1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    if-ne v11, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    if-ne v12, v0, :cond_5

    .line 1316
    const/4 v14, 0x0

    .line 1317
    .local v14, numOverlaps:I
    const/4 v10, 0x0

    .line 1318
    .local v10, meanOverlap:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v3, v0, :cond_9

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v10, v21

    .line 1330
    if-lez v14, :cond_7

    .line 1331
    const-string v21, "id=%d and id=%d #overlaps=%d."

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1333
    :cond_7
    const/4 v7, 0x0

    .line 1334
    .local v7, isOverlap:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    if-ne v14, v0, :cond_b

    .line 1335
    const/4 v7, 0x1

    .line 1339
    :cond_8
    :goto_5
    if-eqz v7, :cond_5

    .line 1342
    const-string v21, "id=%d and id=%d equal, merging (approx.)."

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1343
    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v3, v0, :cond_c

    .line 1352
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1319
    .end local v7           #isOverlap:Z
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v19

    .line 1320
    .local v19, tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v20

    .line 1321
    .local v20, tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v21

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v15

    .line 1322
    .local v15, overlap:F
    aput v15, v16, v3

    .line 1323
    add-float/2addr v10, v15

    .line 1324
    const v21, 0x3e4ccccd

    cmpg-float v21, v15, v21

    if-ltz v21, :cond_a

    .line 1326
    add-int/lit8 v14, v14, 0x1

    .line 1318
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 1336
    .end local v15           #overlap:F
    .end local v19           #tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v20           #tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .restart local v7       #isOverlap:Z
    :cond_b
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v14, v0, :cond_8

    const v21, 0x3e19999a

    cmpl-float v21, v10, v21

    if-lez v21, :cond_8

    .line 1337
    const/4 v7, 0x1

    goto :goto_5

    .line 1344
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1345
    .local v17, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v19

    .line 1346
    .restart local v19       #tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v20

    .line 1347
    .restart local v20       #tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v21

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    .line 1348
    .local v9, mean:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v0, v9}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$27(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V

    .line 1349
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1343
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 1355
    .end local v3           #i:I
    .end local v5           #id0:I
    .end local v6           #id1:I
    .end local v7           #isOverlap:Z
    .end local v9           #mean:Landroid/graphics/Rect;
    .end local v10           #meanOverlap:F
    .end local v11           #n0:I
    .end local v12           #n1:I
    .end local v14           #numOverlaps:I
    .end local v17           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    .end local v19           #tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v20           #tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_d
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1356
    .restart local v4       #id:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1360
    .end local v4           #id:I
    :cond_e
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1361
    .restart local v4       #id:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 1362
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method private mergeIds(Ljava/util/HashMap;II)V
    .locals 4
    .parameter
    .parameter "master"
    .parameter "slave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1615
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1616
    .local v1, indexes0:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1617
    .local v2, indexes1:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 1622
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    return-void

    .line 1618
    :cond_0
    aget-object v3, v1, v0

    if-nez v3, :cond_1

    aget-object v3, v2, v0

    if-eqz v3, :cond_1

    .line 1619
    aget-object v3, v2, v0

    aput-object v3, v1, v0

    .line 1617
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 27
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1234
    .local p1, oldMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    .local p2, removed:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p1}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v16

    .line 1235
    .local v16, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v21, Ljava/util/Vector;

    invoke-direct/range {v21 .. v21}, Ljava/util/Vector;-><init>()V

    .line 1236
    .local v21, toRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 1237
    .local v14, keys:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1242
    invoke-virtual {v14}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1283
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "# ids = "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1284
    if-eqz p2, :cond_2

    .line 1285
    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1291
    :cond_2
    return-object v16

    .line 1237
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1238
    .local v12, id:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1242
    .end local v12           #id:I
    :cond_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1243
    .local v6, id0:I
    invoke-virtual {v14}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_5
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1244
    .local v13, id1:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    if-eq v6, v13, :cond_5

    .line 1247
    if-eqz p2, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1250
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v15

    .line 1251
    .local v15, last0:I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13}, Lcom/scalado/app/rewind/RectTracker;->findFirstImage(Ljava/util/HashMap;I)I

    move-result v10

    .line 1252
    .local v10, first1:I
    add-int/lit8 v5, v15, 0x1

    .line 1253
    .local v5, imageIndex:I
    if-ltz v15, :cond_5

    if-ltz v10, :cond_5

    add-int/lit8 v4, v15, 0x2

    if-ne v4, v10, :cond_5

    .line 1256
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v6, v5, v15, v1}, Lcom/scalado/app/rewind/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v18

    .line 1257
    .local v18, r0:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v5, v10, v1}, Lcom/scalado/app/rewind/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v19

    .line 1258
    .local v19, r1:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v17

    .line 1259
    .local v17, overlap:F
    const v4, 0x3e4ccccd

    cmpl-float v4, v17, v4

    if-ltz v4, :cond_5

    .line 1262
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1263
    .local v7, r:Landroid/graphics/Rect;
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1264
    .local v3, newRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1265
    .local v9, curImage:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v9, v3}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1266
    const-string v20, ""

    .line 1267
    .local v20, s:Ljava/lang/String;
    move v11, v10

    .local v11, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v11, v4, :cond_7

    .line 1276
    const-string v4, "Merging (approx.) %d with %d (in images %s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v25, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v8, v25

    const/16 v25, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v8, v25

    const/16 v25, 0x2

    aput-object v20, v8, v25

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1277
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v5, v3}, Lcom/scalado/app/rewind/RectTracker;->addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1278
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v13}, Lcom/scalado/app/rewind/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    .line 1279
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1268
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13, v11}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v22

    .line 1269
    .local v22, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v7, :cond_8

    if-eqz v22, :cond_8

    .line 1270
    move-object/from16 v0, v22

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v0, v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$26(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    .line 1271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1267
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1273
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " X"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto :goto_4

    .line 1285
    .end local v3           #newRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v5           #imageIndex:I
    .end local v6           #id0:I
    .end local v7           #r:Landroid/graphics/Rect;
    .end local v9           #curImage:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    .end local v10           #first1:I
    .end local v11           #i:I
    .end local v13           #id1:I
    .end local v15           #last0:I
    .end local v17           #overlap:F
    .end local v18           #r0:Landroid/graphics/Rect;
    .end local v19           #r1:Landroid/graphics/Rect;
    .end local v20           #s:Ljava/lang/String;
    .end local v22           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1286
    .restart local v12       #id:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1287
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 24
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1143
    .local p1, oldMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    .local p2, removed:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p1}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v14

    .line 1144
    .local v14, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    .line 1145
    .local v19, toFix:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v20, Ljava/util/Vector;

    invoke-direct/range {v20 .. v20}, Ljava/util/Vector;-><init>()V

    .line 1146
    .local v20, toRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 1147
    .local v13, keys:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1151
    invoke-virtual {v13}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1214
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "# ids = "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1215
    if-eqz p2, :cond_2

    .line 1216
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1222
    :cond_2
    return-object v14

    .line 1147
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1148
    .local v10, id:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1151
    .end local v10           #id:I
    :cond_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1152
    .local v11, id0:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1155
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v6

    .line 1161
    .local v6, last:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v6, v3, :cond_0

    .line 1164
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_0

    .line 1165
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11, v6}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 1166
    .local v4, curRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v3, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1167
    .local v12, img:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    const/16 v16, 0x0

    .line 1168
    .local v16, rectMin:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v8, 0x0

    .line 1169
    .local v8, bestCmp:Lcom/scalado/app/rewind/RectTracker$Comparison;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v12}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_5
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1188
    if-eqz v16, :cond_0

    if-eqz v8, :cond_0

    #calls: Lcom/scalado/app/rewind/RectTracker$Comparison;->isOk()Z
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$Comparison;->access$2(Lcom/scalado/app/rewind/RectTracker$Comparison;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1190
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v16 .. v16}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v17

    .line 1191
    .local v17, rmId:I
    const-string v18, ""

    .line 1192
    .local v18, s:Ljava/lang/String;
    add-int/lit8 v9, v6, 0x1

    .local v9, i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v9, v3, :cond_9

    .line 1201
    const-string v3, "Merging %d with %d (in images %s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v22, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v7, v22

    const/16 v22, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v7, v22

    const/16 v22, 0x2

    aput-object v18, v7, v22

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1202
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1203
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1205
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1206
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v11, v1}, Lcom/scalado/app/rewind/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    .line 1210
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v6

    goto/16 :goto_2

    .line 1169
    .end local v9           #i:I
    .end local v17           #rmId:I
    .end local v18           #s:Ljava/lang/String;
    :cond_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1170
    .local v5, rect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    if-eq v3, v11, :cond_5

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11, v3}, Lcom/scalado/app/rewind/RectTracker;->idsOverlaps(Ljava/util/HashMap;II)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1171
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1179
    new-instance v2, Lcom/scalado/app/rewind/RectTracker$Comparison;

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/scalado/app/rewind/RectTracker$Comparison;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;ILcom/scalado/app/rewind/RectTracker$Comparison;)V

    .line 1180
    .local v2, cmp:Lcom/scalado/app/rewind/RectTracker$Comparison;
    if-eqz v8, :cond_8

    #calls: Lcom/scalado/app/rewind/RectTracker$Comparison;->compare(Lcom/scalado/app/rewind/RectTracker$Comparison;)I
    invoke-static {v2, v8}, Lcom/scalado/app/rewind/RectTracker$Comparison;->access$1(Lcom/scalado/app/rewind/RectTracker$Comparison;Lcom/scalado/app/rewind/RectTracker$Comparison;)I

    move-result v3

    if-lez v3, :cond_5

    .line 1181
    :cond_8
    move-object v8, v2

    .line 1182
    move-object/from16 v16, v5

    goto/16 :goto_3

    .line 1193
    .end local v2           #cmp:Lcom/scalado/app/rewind/RectTracker$Comparison;
    .end local v5           #rect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .restart local v9       #i:I
    .restart local v17       #rmId:I
    .restart local v18       #s:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v1, v9}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v15

    .line 1194
    .local v15, r:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v15, :cond_a

    .line 1195
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v15, v11}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$26(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    .line 1196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1192
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 1198
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " X"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    .line 1216
    .end local v4           #curRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v6           #last:I
    .end local v8           #bestCmp:Lcom/scalado/app/rewind/RectTracker$Comparison;
    .end local v9           #i:I
    .end local v11           #id0:I
    .end local v12           #img:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    .end local v15           #r:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v16           #rectMin:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v17           #rmId:I
    .end local v18           #s:Ljava/lang/String;
    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1217
    .restart local v10       #id:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1218
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private mergeRects(IIIILjava/util/HashMap;)V
    .locals 10
    .parameter "masterId"
    .parameter "slaveId"
    .parameter "masterImg"
    .parameter "slaveImg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2852
    .local p5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    if-ne p3, p4, :cond_0

    .line 2853
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Master image == slave image."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2855
    :cond_0
    sub-int v6, p3, p4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 2856
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Master image and slave image not next to each other."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2858
    :cond_1
    if-ne p1, p2, :cond_2

    .line 2859
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Master ID == slave ID."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2862
    :cond_2
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 2863
    .local v5, size:I
    if-le p4, p3, :cond_4

    .line 2864
    const/4 v1, 0x1

    .line 2869
    .local v1, dir:I
    :goto_0
    const-string v4, ""

    .line 2870
    .local v4, s:Ljava/lang/String;
    add-int v2, p3, v1

    .line 2871
    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_3

    if-lt v2, v5, :cond_5

    .line 2881
    :cond_3
    const-string v6, "Merging %d with %d (in images %s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 2882
    invoke-direct {p0, p5, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    .line 2883
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2884
    .local v0, deltaIndex:I
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v7, v6, v0

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v0

    .line 2885
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->updateMinMatches()V

    .line 2886
    return-void

    .line 2866
    .end local v0           #deltaIndex:I
    .end local v1           #dir:I
    .end local v2           #i:I
    .end local v4           #s:Ljava/lang/String;
    :cond_4
    const/4 v1, -0x1

    .restart local v1       #dir:I
    goto :goto_0

    .line 2872
    .restart local v2       #i:I
    .restart local v4       #s:Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p5, p2, v2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 2873
    .local v3, r:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v3, :cond_6

    .line 2874
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2875
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v3, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$26(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    .line 2879
    :goto_2
    add-int/2addr v2, v1

    goto :goto_1

    .line 2877
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " X"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method private nonOverlapsBetween(Ljava/util/HashMap;II)[I
    .locals 6
    .parameter
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    .line 2784
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v1, 0x0

    .line 2785
    .local v1, n:I
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2791
    new-array v0, v1, [I

    .line 2792
    .local v0, fromIds:[I
    const/4 v1, 0x0

    .line 2793
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2800
    return-object v0

    .line 2785
    .end local v0           #fromIds:[I
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2786
    .local v2, trFrom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    invoke-direct {p0, p1, v5, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 2787
    .local v3, trTo:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v3, :cond_0

    .line 2788
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2793
    .end local v2           #trFrom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v3           #trTo:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .restart local v0       #fromIds:[I
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2794
    .restart local v2       #trFrom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    invoke-direct {p0, p1, v5, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 2795
    .restart local v3       #trTo:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v3, :cond_1

    .line 2796
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    aput v5, v0, v1

    .line 2797
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private numRectsInImage(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method private optimizeSelection()V
    .locals 14

    .prologue
    .line 1726
    new-instance v8, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)V

    .line 1727
    .local v8, so:Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;
    #calls: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimize()V
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)V

    .line 1728
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mEndReached:Z
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1729
    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    .line 1730
    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/scalado/app/rewind/RectTracker$State;->compositionSuccessful:Z

    .line 1731
    const-string v9, "RectTracker"

    const-string v10, "Failed to determine best images."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :goto_0
    return-void

    .line 1734
    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$3(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    .line 1735
    .local v6, sel:Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mBg:I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$6(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)I

    move-result v0

    .line 1736
    .local v0, bg:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$3(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-lt v3, v9, :cond_1

    .line 1739
    const-string v9, "bg = %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1740
    const/4 v3, 0x0

    :goto_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v9

    array-length v9, v9

    if-lt v3, v9, :cond_2

    .line 1764
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 1765
    const-string v9, "num poss %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$4(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1737
    :cond_1
    const-string v10, "cand %f"

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$3(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    .line 1736
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1741
    :cond_2
    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1742
    .local v1, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v4

    .line 1743
    .local v4, id:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v9

    aget v2, v9, v3

    .line 1746
    .local v2, fg:I
    if-gez v2, :cond_3

    .line 1747
    const-string v9, "%d (don\'t care)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1748
    .local v5, msg:Ljava/lang/String;
    move v7, v0

    .line 1761
    .local v7, selected:I
    :goto_3
    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mSelectedImageIndex:I
    invoke-static {v1, v7}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$15(Lcom/scalado/app/rewind/RectTracker$AbstractFace;I)V

    .line 1762
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "id %d: "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    .line 1740
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1749
    .end local v5           #msg:Ljava/lang/String;
    .end local v7           #selected:I
    :cond_3
    if-eq v0, v2, :cond_5

    .line 1750
    #calls: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->canReplace(II)Z
    invoke-static {v1, v0, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$14(Lcom/scalado/app/rewind/RectTracker$AbstractFace;II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1751
    const-string v9, "%d, cost = %f"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v12

    aget v12, v12, v3

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1752
    .restart local v5       #msg:Ljava/lang/String;
    move v7, v2

    .restart local v7       #selected:I
    goto :goto_3

    .line 1754
    .end local v5           #msg:Ljava/lang/String;
    .end local v7           #selected:I
    :cond_4
    const-string v9, "%d, (don\'t dare, %d cost = %f)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v12

    aget v12, v12, v3

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1755
    .restart local v5       #msg:Ljava/lang/String;
    move v7, v0

    .restart local v7       #selected:I
    goto :goto_3

    .line 1758
    .end local v5           #msg:Ljava/lang/String;
    .end local v7           #selected:I
    :cond_5
    const-string v9, "%d (bg)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1759
    .restart local v5       #msg:Ljava/lang/String;
    move v7, v0

    .restart local v7       #selected:I
    goto/16 :goto_3
.end method

.method private privateAddImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V
    .locals 20
    .parameter "image"
    .parameter "image2"
    .parameter "imgIndex"

    .prologue
    .line 3237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    if-nez v3, :cond_0

    .line 3239
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    .line 3243
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 3244
    .local v12, before:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    if-eqz v3, :cond_1

    .line 3246
    const-string v3, "RectTracker"

    const-string v4, "privateAddImage:decode to bmp"

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3247
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v17

    .line 3249
    .local v17, size:Lcom/scalado/base/Size;
    invoke-virtual/range {v17 .. v17}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mBitmap:Landroid/graphics/Bitmap;

    .line 3250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3251
    const-string v3, "RectTracker"

    const-string v4, "privateAddImage:setImagebuffer bmp"

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v4}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->setImagebuffer(Landroid/graphics/Bitmap;)V

    .line 3258
    .end local v17           #size:Lcom/scalado/base/Size;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3259
    .local v10, after:J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    sub-long v8, v10, v12

    add-long/2addr v3, v8

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    .line 3260
    const/4 v3, 0x4

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 3262
    const-string v3, "RectTracker.Benchmark"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Face detection time is = "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3266
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    invoke-interface {v3}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->getFaceNum()I

    move-result v17

    .line 3267
    .local v17, size:I
    const-string v3, "[%d] Faces detected = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3268
    if-lez v17, :cond_3

    .line 3269
    const/16 v16, 0x0

    .local v16, j:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    .line 3326
    .end local v10           #after:J
    .end local v12           #before:J
    .end local v16           #j:I
    .end local v17           #size:I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    if-eqz v3, :cond_4

    .line 3327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    move/from16 v0, p3

    invoke-interface {v3, v0}, Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;->onImageAnalyzed(I)V

    .line 3329
    :cond_4
    return-void

    .line 3273
    .restart local v10       #after:J
    .restart local v12       #before:J
    .restart local v16       #j:I
    .restart local v17       #size:I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->getSmileValue(I)I

    move-result v18

    .line 3274
    .local v18, smile:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->getBlinkValue(I)I

    move-result v14

    .line 3275
    .local v14, blink:I
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 3277
    .local v19, tmpRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v19

    .line 3279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->getFaceID(I)I

    move-result v5

    .line 3280
    .local v5, id:I
    if-ltz v18, :cond_6

    .line 3284
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v5, v2}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;)V

    .line 3287
    const/4 v6, 0x0

    .line 3288
    .local v6, left:Landroid/graphics/Rect;
    const/4 v7, 0x0

    .line 3291
    .local v7, right:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->getLeftEyeRect(I)Landroid/graphics/Rect;

    move-result-object v6

    .line 3292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->getRightEyeRect(I)Landroid/graphics/Rect;

    move-result-object v7

    .line 3314
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct/range {v3 .. v9}, Lcom/scalado/app/rewind/RectTracker;->setFeatures(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3315
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v5, v2, v14}, Lcom/scalado/app/rewind/RectTracker;->setSmileBlink(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3269
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 3323
    .end local v5           #id:I
    .end local v6           #left:Landroid/graphics/Rect;
    .end local v7           #right:Landroid/graphics/Rect;
    .end local v10           #after:J
    .end local v12           #before:J
    .end local v14           #blink:I
    .end local v16           #j:I
    .end local v17           #size:I
    .end local v18           #smile:I
    .end local v19           #tmpRect:Landroid/graphics/Rect;
    :catch_0
    move-exception v15

    .line 3324
    .local v15, e:Ljava/lang/Exception;
    const-string v3, "RectTracker"

    const-string v4, "Excpetion:"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private rankId(I[Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 18
    .parameter "id"
    .parameter "ranked"

    .prologue
    .line 1948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v17

    .line 1949
    .local v17, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move/from16 v0, v17

    if-lt v4, v0, :cond_0

    .line 1966
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/RectTracker;->allIdsSame([Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v16

    .line 1967
    .local v16, allEqual:Z
    if-eqz v16, :cond_3

    .line 1968
    const/4 v4, 0x0

    :goto_1
    move/from16 v0, v17

    if-lt v4, v0, :cond_2

    .line 1971
    const/4 v2, 0x0

    .line 1979
    :goto_2
    return v2

    .line 1950
    .end local v16           #allEqual:Z
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v7

    .line 1952
    .local v7, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v7, :cond_1

    .line 1953
    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->computeScore()F
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$37(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F

    move-result v2

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F
    invoke-static {v7, v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$38(Lcom/scalado/app/rewind/RectTracker$TrackedRect;F)V

    .line 1954
    new-instance v2, Lcom/scalado/app/rewind/RectTracker$RankedId;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$39(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$RankedId;)V

    aput-object v2, p2, v4

    .line 1949
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1956
    :cond_1
    new-instance v8, Lcom/scalado/app/rewind/RectTracker$RankedId;

    const/high16 v12, -0x3f80

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move v10, v4

    move/from16 v11, p1

    invoke-direct/range {v8 .. v15}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;ZLcom/scalado/app/rewind/RectTracker$RankedId;)V

    aput-object v8, p2, v4

    goto :goto_3

    .line 1969
    .end local v7           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .restart local v16       #allEqual:Z
    :cond_2
    aget-object v2, p2, v4

    iget-object v2, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v3, -0x1

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v2, v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$40(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    .line 1968
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1973
    :cond_3
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1974
    const/4 v4, 0x0

    :goto_4
    move/from16 v0, v17

    if-lt v4, v0, :cond_4

    .line 1979
    const/4 v2, 0x1

    goto :goto_2

    .line 1975
    :cond_4
    aget-object v2, p2, v4

    iget-object v2, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-eqz v2, :cond_5

    .line 1976
    aget-object v2, p2, v4

    iget-object v2, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v2, v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$40(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    .line 1974
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method private rankImages()I
    .locals 22

    .prologue
    .line 1852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v13

    .line 1853
    .local v13, size:I
    new-array v0, v13, [I

    move-object/from16 v16, v0

    .line 1860
    .local v16, votes:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_1

    .line 1899
    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Ljava/util/Arrays;->fill([II)V

    .line 1900
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v6, v0, :cond_6

    .line 1934
    const/4 v9, -0x1

    .line 1935
    .local v9, maxVotes:I
    const/4 v4, -0x1

    .line 1936
    .local v4, bestPic:I
    const/4 v6, 0x0

    :goto_1
    if-lt v6, v13, :cond_b

    .line 1942
    move-object/from16 v0, p0

    iput v4, v0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 1943
    move-object/from16 v0, p0

    iput v4, v0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    .line 1944
    return v4

    .line 1860
    .end local v4           #bestPic:I
    .end local v6           #i:I
    .end local v9           #maxVotes:I
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1861
    .local v5, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 1864
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    new-array v8, v0, [Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1865
    .local v8, locked:[Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    const/16 v17, 0x0

    aput-object v5, v8, v17

    .line 1866
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_2

    .line 1882
    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v12, v0, [Lcom/scalado/app/rewind/RectTracker$RankedId;

    .line 1883
    .local v12, ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_0

    .line 1884
    const/4 v7, 0x0

    :goto_4
    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v7, v0, :cond_3

    .line 1888
    invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1889
    const/4 v7, 0x0

    :goto_5
    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v7, v0, :cond_4

    .line 1883
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1867
    .end local v6           #i:I
    .end local v12           #ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    :cond_2
    add-int/lit8 v19, v7, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    aput-object v17, v8, v19

    .line 1866
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1885
    .restart local v6       #i:I
    .restart local v12       #ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    :cond_3
    aget-object v17, v8, v7

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v17

    aget-object v15, v17, v6

    .line 1886
    .local v15, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/16 v17, -0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v6, v1, v2, v15}, Lcom/scalado/app/rewind/RectTracker;->createRankedId(IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-result-object v17

    aput-object v17, v12, v7

    .line 1884
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1890
    .end local v15           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_4
    aget-object v17, v8, v7

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v17

    aget-object v15, v17, v6

    .line 1891
    .restart local v15       #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/16 v17, 0x1

    move/from16 v0, v17

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z
    invoke-static {v15, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$32(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V

    .line 1892
    const/16 v17, 0x0

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v17, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$25(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v17

    move/from16 v0, v17

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededBlink:I
    invoke-static {v15, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$33(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    .line 1893
    const/16 v17, 0x0

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v17, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$24(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v17

    move/from16 v0, v17

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededSmile:I
    invoke-static {v15, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$34(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    .line 1894
    const/16 v17, 0x0

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v17, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$23(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v17

    move/from16 v0, v17

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasSmileBlink:Z
    invoke-static {v15, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$35(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V

    .line 1895
    const/16 v17, 0x0

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v17, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v17

    if-eqz v17, :cond_5

    const/16 v17, 0x1

    :goto_6
    move/from16 v0, v17

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasRect:Z
    invoke-static {v15, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$36(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V

    .line 1889
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 1895
    :cond_5
    const/16 v17, 0x0

    goto :goto_6

    .line 1901
    .end local v5           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v7           #j:I
    .end local v8           #locked:[Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v12           #ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    .end local v15           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1902
    .restart local v5       #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    new-array v12, v13, [Lcom/scalado/app/rewind/RectTracker$RankedId;

    .line 1903
    .restart local v12       #ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v12}, Lcom/scalado/app/rewind/RectTracker;->rankId(I[Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v11

    .line 1904
    .local v11, rankSuccessful:Z
    add-int/lit8 v17, v13, -0x1

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    iget v3, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    .line 1905
    .local v3, best:I
    const-string v14, "   "

    .line 1906
    .local v14, spc:Ljava/lang/String;
    if-eqz v11, :cond_a

    .line 1907
    const-string v17, "id %d (best img = %d)"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1908
    const/4 v7, 0x0

    .restart local v7       #j:I
    :goto_7
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v7, v0, :cond_7

    .line 1925
    aget v17, v16, v3

    add-int/lit8 v17, v17, 0x1

    aput v17, v16, v3

    .line 1931
    .end local v7           #j:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mRanked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    invoke-static {v5, v12}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$18(Lcom/scalado/app/rewind/RectTracker$AbstractFace;[Lcom/scalado/app/rewind/RectTracker$RankedId;)V

    .line 1900
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1909
    .restart local v7       #j:I
    :cond_7
    aget-object v17, v12, v7

    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1910
    .restart local v15       #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const-string v17, "%simg=%d, (score=%1.5f)"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v14, v18, v19

    const/16 v19, 0x1

    .line 1911
    aget-object v20, v12, v7

    move-object/from16 v0, v20

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    aget-object v20, v12, v7

    move-object/from16 v0, v20

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mScore:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    .line 1910
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1912
    .local v10, msg:Ljava/lang/String;
    if-eqz v15, :cond_9

    .line 1913
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z
    invoke-static {v15}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$23(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1914
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ", rank=%d, (s=%d, b=%d)"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 1915
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v15}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$20(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I
    invoke-static {v15}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$24(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I
    invoke-static {v15}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$25(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    .line 1914
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1923
    :goto_9
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1908
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 1917
    :cond_8
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ", rank=%d, [no s & b]"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 1918
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v15}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$20(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    .line 1917
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    .line 1921
    :cond_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ", [no rect]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    .line 1927
    .end local v7           #j:I
    .end local v10           #msg:Ljava/lang/String;
    .end local v15           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_a
    const-string v17, "id %d (best img = ?)"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1928
    const-string v17, "%sWARNING: id %d couldn\'t determine best image."

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v14, v18, v19

    const/16 v19, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1929
    const/16 v17, 0x1

    move/from16 v0, v17

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mAllSame:Z
    invoke-static {v5, v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$17(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)V

    goto/16 :goto_8

    .line 1937
    .end local v3           #best:I
    .end local v5           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v11           #rankSuccessful:Z
    .end local v12           #ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    .end local v14           #spc:Ljava/lang/String;
    .restart local v4       #bestPic:I
    .restart local v9       #maxVotes:I
    :cond_b
    aget v17, v16, v6

    move/from16 v0, v17

    if-le v0, v9, :cond_c

    .line 1938
    aget v9, v16, v6

    .line 1939
    move v4, v6

    .line 1936
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1
.end method

.method private rectCenterDist(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 4
    .parameter "r0"
    .parameter "r1"

    .prologue
    .line 2811
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float v0, v2, v3

    .line 2812
    .local v0, dx:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float v1, v2, v3

    .line 2813
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 6
    .parameter "r0"
    .parameter "r1"

    .prologue
    .line 1480
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1481
    .local v1, intRect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 1482
    .local v2, overlap:F
    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1483
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    .line 1484
    .local v0, intArea:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v3, v4

    .line 1485
    .local v3, totArea:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 1486
    sub-float/2addr v3, v0

    .line 1487
    div-float v2, v0, v3

    .line 1491
    .end local v0           #intArea:F
    .end local v3           #totArea:F
    :goto_0
    return v2

    .line 1489
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private recycleFaceDetection()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3366
    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    .line 3367
    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    .line 3369
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    invoke-interface {v0}, Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;->reset()V

    .line 3370
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    .line 3371
    return-void
.end method

.method private relativeFaceDist(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/PointF;
    .locals 8
    .parameter "trPrev"
    .parameter "trCur"

    .prologue
    const/4 v6, 0x0

    .line 1805
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1825
    :cond_0
    :goto_0
    return-object v6

    .line 1808
    :cond_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1811
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v3, v6

    .line 1812
    .local v3, fdw:F
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v2, v6

    .line 1818
    .local v2, fdh:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v0, v6

    .line 1819
    .local v0, dx:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v1, v6

    .line 1823
    .local v1, dy:F
    div-float v4, v0, v3

    .line 1824
    .local v4, relDx:F
    div-float v5, v1, v2

    .line 1825
    .local v5, relDy:F
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method private setFeatures(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "image"
    .parameter "id"
    .parameter "leftEye"
    .parameter "rightEye"
    .parameter "mouth"
    .parameter "nose"

    .prologue
    const/4 v2, 0x0

    .line 360
    invoke-direct {p0, p2, p1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 361
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez p3, :cond_0

    if-eqz p4, :cond_3

    .line 362
    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_1

    .line 363
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Rect;

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$13(Lcom/scalado/app/rewind/RectTracker$TrackedRect;[Landroid/graphics/Rect;)V

    .line 365
    :cond_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    aput-object v1, v3, v4

    .line 366
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz p4, :cond_2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_2
    aput-object v2, v1, v3

    .line 368
    :cond_3
    return-void

    :cond_4
    move-object v1, v2

    .line 365
    goto :goto_0
.end method

.method public static setLogging(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 213
    sput-boolean p0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    .line 214
    return-void
.end method

.method private translation(III)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 5
    .parameter "i0"
    .parameter "i1"
    .parameter "id"

    .prologue
    .line 1553
    new-instance v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 1556
    .local v2, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    invoke-direct {p0, p3, p1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1557
    .local v0, r0:Landroid/graphics/Rect;
    invoke-direct {p0, p3, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1558
    .local v1, r1:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    sub-float/2addr v3, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1559
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    sub-float/2addr v3, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    .line 1560
    return-object v2
.end method

.method private updateMapForRect(Ljava/util/HashMap;ILcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 7
    .parameter
    .parameter "imageIndex"
    .parameter "rect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1636
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1637
    .local v4, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1638
    .local v3, rectIndex:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {p3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    .line 1639
    .local v0, id:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1640
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v1, v5, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1641
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    array-length v5, v1

    if-lt v2, v5, :cond_1

    .line 1644
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    .end local v1           #indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v2           #k:I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    aput-object v6, v5, p2

    .line 1647
    return-void

    .line 1642
    .restart local v1       #indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .restart local v2       #k:I
    :cond_1
    const/4 v5, 0x0

    aput-object v5, v1, v2

    .line 1641
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateMinMatches()V
    .locals 3

    .prologue
    .line 2804
    const v1, 0x7fffffff

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    .line 2805
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 2808
    return-void

    .line 2806
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    .line 2805
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public analyze()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 386
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->calculateStatistics()V

    .line 387
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->estimateDeltas()V

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "# ids = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 389
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    if-nez v1, :cond_0

    .line 390
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mGuessRects:Z

    if-eqz v1, :cond_3

    .line 391
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->connectAllImages()V

    .line 392
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 398
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeAllRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 413
    .end local v0           #i:I
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mAlignRectSizes:Z

    if-eqz v1, :cond_1

    .line 415
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->alignRectSizes()V

    .line 418
    :cond_1
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->logTranslations()V

    .line 420
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->isComplete(Ljava/util/HashMap;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    .line 421
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v2, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    iput-boolean v2, v1, Lcom/scalado/app/rewind/RectTracker$State;->isComplete:Z

    .line 422
    return-void

    .line 393
    .restart local v0       #i:I
    :cond_2
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 394
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 396
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->guessRects(I)V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    goto :goto_1
.end method

.method public analyzeImages()Lcom/scalado/app/rewind/RectTracker$State;
    .locals 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 279
    :goto_0
    return-object v0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RectTracker;->analyze()V

    .line 267
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    goto :goto_0

    .line 270
    :cond_1
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->analyze2()V

    .line 271
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->enlargeRectangles(FF)V

    .line 272
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->rankImages()I

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 273
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->calculateOptimalImages2()V

    .line 274
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->optimizeSelection()V

    .line 275
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->recycleFaceDetection()V

    .line 276
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    invoke-interface {v0}, Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;->onAnalyzeComplete()V

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    goto :goto_0
.end method

.method public canReplace()Z
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deltaForRectX(III)I
    .locals 2
    .parameter "id"
    .parameter "i0"
    .parameter "i1"

    .prologue
    .line 925
    invoke-direct {p0, p2, p3, p1}, Lcom/scalado/app/rewind/RectTracker;->translation(III)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 926
    .local v0, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public deltaForRectY(III)I
    .locals 2
    .parameter "id"
    .parameter "i0"
    .parameter "i1"

    .prologue
    .line 937
    invoke-direct {p0, p2, p3, p1}, Lcom/scalado/app/rewind/RectTracker;->translation(III)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 938
    .local v0, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public deltaX(II)I
    .locals 2
    .parameter "i0"
    .parameter "i1"

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->getTransforms()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/scalado/app/rewind/RectTracker;->accumulateDelta(IILjava/util/Vector;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 902
    .local v0, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public deltaY(II)I
    .locals 2
    .parameter "i0"
    .parameter "i1"

    .prologue
    .line 913
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->getTransforms()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/scalado/app/rewind/RectTracker;->accumulateDelta(IILjava/util/Vector;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 914
    .local v0, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public getBestImage(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 633
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 634
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    return v1
.end method

.method public getBestImage(II)I
    .locals 4
    .parameter "id"
    .parameter "n"

    .prologue
    .line 638
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$RankedId;

    .line 639
    .local v0, ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p2

    aget-object v1, v0, v2

    .line 640
    .local v1, ri:Lcom/scalado/app/rewind/RectTracker$RankedId;
    iget-boolean v2, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mKnownRect:Z

    if-eqz v2, :cond_0

    .line 641
    iget v2, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    .line 643
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getBestStartImage()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    return v0
.end method

.method public getEnlargedRect(II)Landroid/graphics/Rect;
    .locals 7
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 794
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 795
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v1, :cond_0

    aget-object v5, v1, p1

    if-nez v5, :cond_2

    :cond_0
    move-object v3, v4

    .line 812
    :cond_1
    :goto_0
    return-object v3

    .line 798
    :cond_2
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 799
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 800
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v3, v4

    .line 801
    goto :goto_0

    .line 803
    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 804
    .local v3, r:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 805
    .local v2, lockedFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v6

    aget-object v6, v6, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_4

    move-object v3, v4

    .line 806
    goto :goto_0

    .line 808
    :cond_4
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v6

    aget-object v6, v6, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 812
    .end local v2           #lockedFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_5
    aget-object v4, v1, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_0
.end method

.method public getError()Z
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    return v0
.end method

.method public getId(II)I
    .locals 1
    .parameter "imageIndex"
    .parameter "rectIndex"

    .prologue
    .line 834
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    return v0
.end method

.method public getIds()[I
    .locals 3

    .prologue
    .line 725
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    if-eqz v2, :cond_1

    .line 727
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 728
    .local v1, ids:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 733
    .end local v0           #i:I
    .end local v1           #ids:[I
    :goto_1
    return-object v1

    .line 729
    .restart local v0       #i:I
    .restart local v1       #ids:[I
    :cond_0
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v2

    aput v2, v1, v0

    .line 728
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    .end local v0           #i:I
    .end local v1           #ids:[I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getListener()Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    return-object v0
.end method

.method public getMap()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 847
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 848
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 860
    return-object v3

    .line 848
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 849
    .local v1, id:I
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v2, v5, [I

    .line 850
    .local v2, indexes:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v2

    if-lt v0, v5, :cond_1

    .line 858
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 851
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 852
    .local v4, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v4, :cond_2

    .line 853
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v5

    aput v5, v2, v0

    .line 850
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 855
    :cond_2
    const/4 v5, -0x1

    aput v5, v2, v0

    goto :goto_2
.end method

.method public getMaxScoreImage()I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    return v0
.end method

.method public getOriginalEnlargedRectangle(II)Landroid/graphics/Rect;
    .locals 3
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 817
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 818
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 819
    :cond_0
    const/4 v1, 0x0

    .line 821
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$18(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public getRect(II)Landroid/graphics/Rect;
    .locals 2
    .parameter "imageIndex"
    .parameter "rectIndex"

    .prologue
    .line 746
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 747
    .local v0, r:Landroid/graphics/Rect;
    return-object v0
.end method

.method public getRectById(II)Landroid/graphics/Rect;
    .locals 3
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 761
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 762
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 763
    :cond_0
    const/4 v1, 0x0

    .line 765
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public getRectInImage(Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .locals 11
    .parameter "rect"
    .parameter "srcImage"
    .parameter "dstImage"

    .prologue
    .line 865
    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v9, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 866
    .local v5, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    const/4 v4, 0x0

    .line 867
    .local v4, srcFace:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v3, 0x0

    .line 868
    .local v3, retRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 869
    .local v7, x:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 870
    .local v8, y:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 876
    :goto_0
    if-eqz v4, :cond_3

    .line 877
    if-ne p2, p3, :cond_2

    .line 878
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 890
    :goto_1
    return-object v9

    .line 870
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 871
    .local v6, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v10

    if-eqz v10, :cond_0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 872
    move-object v4, v6

    .line 873
    goto :goto_0

    .line 880
    .end local v6           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v9

    invoke-direct {p0, v9, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 881
    .local v0, dstFace:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #retRect:Landroid/graphics/Rect;
    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 882
    .restart local v3       #retRect:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    .line 883
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v10

    .line 882
    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 884
    .local v1, dx:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    .line 885
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v10

    .line 884
    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 886
    .local v2, dy:I
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .end local v0           #dstFace:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v1           #dx:I
    .end local v2           #dy:I
    :cond_3
    move-object v9, v3

    .line 890
    goto :goto_1
.end method

.method public getRelativeAbsTranslation(III)F
    .locals 9
    .parameter "id"
    .parameter "img0"
    .parameter "img1"

    .prologue
    .line 676
    invoke-virtual {p0, p2, p1}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v3

    .line 677
    .local v3, r0:Landroid/graphics/Rect;
    invoke-virtual {p0, p3, p1}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v4

    .line 678
    .local v4, r1:Landroid/graphics/Rect;
    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    .line 681
    :cond_0
    const/4 v0, 0x0

    .line 689
    :goto_0
    return v0

    .line 683
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    sub-float v1, v5, v6

    .line 684
    .local v1, dx:F
    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    sub-float v2, v5, v6

    .line 685
    .local v2, dy:F
    mul-float v5, v1, v1

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 686
    .local v0, d:F
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    int-to-float v1, v5

    .line 687
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    int-to-float v2, v5

    .line 688
    float-to-double v5, v0

    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-float v0, v5

    .line 689
    goto :goto_0
.end method

.method public getScore(II)F
    .locals 2
    .parameter "id"
    .parameter "image"

    .prologue
    .line 661
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 662
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    .line 664
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$20(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    int-to-float v1, v1

    .line 666
    :goto_0
    return v1

    :cond_0
    const/high16 v1, -0x80

    goto :goto_0
.end method

.method public getSelectedBg(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 648
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    return v0
.end method

.method public getSelectedFg(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 652
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 653
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    if-nez v0, :cond_0

    .line 654
    const/4 v1, -0x1

    .line 656
    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mSelectedImageIndex:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$11(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v1

    goto :goto_0
.end method

.method public getSessionRectById(II)Landroid/graphics/Rect;
    .locals 3
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 769
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 770
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 771
    :cond_0
    const/4 v1, 0x0

    .line 773
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSessionRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$22(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public getState()Lcom/scalado/app/rewind/RectTracker$State;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    return-object v0
.end method

.method public hasNeighbours(II)Z
    .locals 2
    .parameter "id"
    .parameter "image"

    .prologue
    .line 671
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 672
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$21(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$21(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    return v0
.end method

.method public logDump(Z)V
    .locals 13
    .parameter "smileBlink"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 958
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 980
    const-string v4, "Face detection dims: %dx%d"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 981
    return-void

    .line 959
    :cond_0
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 960
    .local v2, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 958
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 961
    :cond_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 962
    .local v3, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_2

    .line 960
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 965
    :cond_2
    if-nez p1, :cond_3

    .line 966
    const-string v4, "[%d, %d] id=%d, rect=%s"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    .line 967
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 966
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 974
    :cond_3
    const-string v4, "[%d, %d] id=%d, rect=%s, smile=%d, blink=%d, score=%d"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 975
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$24(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    const/4 v6, 0x5

    .line 976
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$25(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$20(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 973
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public numImages()I
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public numRects()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    return v0
.end method

.method public numRects(I)I
    .locals 1
    .parameter "imageIndex"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 947
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 950
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->recycleFaceDetection()V

    .line 951
    return-void

    .line 947
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 948
    .local v0, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    const/4 v2, 0x0

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mImage:Lcom/scalado/base/Image;
    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/base/Image;)V

    goto :goto_0
.end method

.method public setFaceDectionExtern(Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;)V
    .locals 0
    .parameter "FDE"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectExtern:Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;

    .line 233
    return-void
.end method

.method public setFaceDetectionDims(Lcom/scalado/base/Size;)V
    .locals 5
    .parameter "dims"

    .prologue
    const/high16 v4, 0x40e0

    const/high16 v3, 0x3f80

    .line 243
    new-instance v0, Lcom/scalado/base/Size;

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 244
    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    const/high16 v1, 0x444c

    div-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    .line 245
    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    const/high16 v1, 0x4419

    div-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    .line 246
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    .line 247
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    .line 248
    return-void
.end method

.method public setListener(Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    .line 284
    return-void
.end method

.method public setMaxTranslation(F)V
    .locals 0
    .parameter "maxValue"

    .prologue
    .line 287
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    .line 288
    return-void
.end method

.method public setRectScaling(FF)V
    .locals 0
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 225
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    .line 226
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    .line 227
    return-void
.end method

.method public setSmileBlink(IIII)V
    .locals 1
    .parameter "image"
    .parameter "id"
    .parameter "smile"
    .parameter "blink"

    .prologue
    .line 378
    invoke-direct {p0, p2, p1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 379
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->setSmileBlink(II)V
    invoke-static {v0, p3, p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$14(Lcom/scalado/app/rewind/RectTracker$TrackedRect;II)V

    .line 380
    return-void
.end method

.method public trackImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V
    .locals 1
    .parameter "image"
    .parameter "image2"
    .parameter "index"

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker;->applyViewfinderTracker(Lcom/scalado/base/Image;)V

    .line 254
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/app/rewind/RectTracker;->privateAddImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V

    .line 255
    return-void
.end method

.method public wasFound(II)Z
    .locals 3
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 777
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 778
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 779
    :cond_0
    const/4 v1, 0x0

    .line 781
    :goto_0
    return v1

    :cond_1
    aget-object v1, v0, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$23(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v1

    goto :goto_0
.end method
