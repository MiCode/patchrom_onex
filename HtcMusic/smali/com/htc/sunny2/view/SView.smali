.class public Lcom/htc/sunny2/view/SView;
.super Lcom/htc/sunny2/SceneNode;
.source "SView.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/view/SView$SViewHandler;,
        Lcom/htc/sunny2/view/SView$OverlapRoundCornerParam;,
        Lcom/htc/sunny2/view/SView$OnClickListener;,
        Lcom/htc/sunny2/view/SView$ViewDef;
    }
.end annotation


# static fields
.field public static final BACKGROUND_RENDER_ORDER:I = -0xc8

.field public static final BOTTOM_MOST_RENDER_ORDER:I = -0x64

.field static final DISABLED:I = 0x20

.field static final DRAWABLE_STATE_DIRTY:I = 0x400

.field protected static final EMPTY_STATE_SET:[I = null

.field static final ENABLED:I = 0x0

.field protected static final ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final ENABLED_MASK:I = 0x20

.field protected static final ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_STATE_SET:[I = null

.field protected static final ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field private static final FOCUSABLE:I = 0x1

.field private static final FOCUSABLE_MASK:I = 0x1

.field static final FOCUSED:I = 0x2

.field protected static final FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final FORCE_LAYOUT:I = 0x1000

.field public static final GONE:I = 0x8

.field public static final HAPTIC_FEEDBACK_ENABLED:I = 0x10000000

.field static final HAS_BOUNDS:I = 0x10

.field protected static final INVALID_ID:I = 0x0

.field private static final INVISIBLE:I = 0x4

.field static final IS_RESOURCE_CREATED:I = 0x8

.field static final LAYOUT_REQUIRED:I = 0x2000

.field static final MEASURED_DIMENSION_SET:I = 0x800

.field public static final NORMAL_RENDER_ORDER:I = 0x0

.field private static final PRESSED:I = 0x4000

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_STATE_SET:[I = null

.field protected static final PRESSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final SELECTED:I = 0x4

.field protected static final SELECTED_STATE_SET:[I = null

.field protected static final SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field private static final TAG:Ljava/lang/String; = "SView"

.field public static final TOP_MOST_RENDER_ORDER:I = 0x64

.field private static final VIEW_STATE_SETS:[[I = null

.field private static final VISIBILITY_FLAGS:[I = null

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I = 0x0

.field static final WANTS_FOCUS:I = 0x1

.field protected static final WINDOW_FOCUSED_STATE_SET:[I

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LAYOUT_LOCKER:Ljava/lang/Object;

.field protected mAlpha:F

.field protected mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

.field protected mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mBGDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBackgroundSizeChanged:Z

.field private mBackgroundSprite:Lcom/htc/sunny2/Sprite;

.field private mBackgroundTexture:Lcom/htc/sunny2/Texture;

.field private mBlurParameter:F

.field protected mClickListener:Lcom/htc/sunny2/view/SView$OnClickListener;

.field protected mContext:Landroid/content/Context;

.field private mDrawableState:[I

.field protected mEnlargeSensorAreaB:I

.field protected mEnlargeSensorAreaL:I

.field protected mEnlargeSensorAreaR:I

.field protected mEnlargeSensorAreaT:I

.field protected mHasLayoutAnimation:Z

.field protected mHeight:I

.field protected mHostContextName:Ljava/lang/String;

.field protected mLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

.field protected mMeasuredHeight:I

.field protected mMeasuredWidth:I

.field private mMinHeight:I

.field private mMinWidth:I

.field mOldHeightMeasureSpec:I

.field mOldWidthMeasureSpec:I

.field protected mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOrder:I

.field protected mPaddingBottom:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mPaddingTop:I

.field protected mParentView:Lcom/htc/sunny2/view/SViewParent;

.field mPrivateFlags:I

.field protected mRenderOrder:Z

.field protected mResources:Landroid/content/res/Resources;

.field protected mRotation:Lcom/htc/sunny2/view/Vector3F;

.field protected mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

.field protected mScale:Lcom/htc/sunny2/view/Vector3F;

.field protected mSunnyContext:Lcom/htc/sunny2/SunnyContext;

.field protected mTouchable:Z

.field protected mTranslation:Lcom/htc/sunny2/view/Vector3F;

.field mViewFlags:I

.field protected mViewTagObject:Ljava/lang/Object;

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 138
    new-array v0, v2, [I

    sput-object v0, Lcom/htc/sunny2/view/SView;->EMPTY_STATE_SET:[I

    .line 147
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_STATE_SET:[I

    .line 156
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->FOCUSED_STATE_SET:[I

    .line 165
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->SELECTED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->SELECTED_STATE_SET:[I

    .line 175
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_STATE_SET:[I

    .line 184
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    .line 192
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_STATE_SET:[I

    .line 199
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_SELECTED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_SELECTED_STATE_SET:[I

    .line 206
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 213
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->FOCUSED_SELECTED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->FOCUSED_SELECTED_STATE_SET:[I

    .line 220
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->FOCUSED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 227
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 236
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_FOCUSED_SELECTED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 244
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 252
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 260
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 270
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 277
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 285
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_SELECTED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_SELECTED_STATE_SET:[I

    .line 294
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 302
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_STATE_SET:[I

    .line 311
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 320
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_FOCUSED_SELECTED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 330
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 338
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_STATE_SET:[I

    .line 347
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 356
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_SELECTED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 367
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 376
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 387
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 397
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 409
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 414
    const/16 v0, 0x20

    new-array v0, v0, [[I

    sget-object v1, Lcom/htc/sunny2/view/SView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/sunny2/view/SView;->SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/sunny2/view/SView;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v1, v0, v3

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/sunny2/view/SView;->FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/sunny2/view/SView;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/sunny2/view/SView;->FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/sunny2/view/SView;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/sunny2/view/SView;->ENABLED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/sunny2/view/SView;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/sunny2/view/SView;->ENABLED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/sunny2/view/SView;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/sunny2/view/SView;->PRESSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/sunny2/view/SView;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/htc/sunny2/view/SView;->PRESSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/htc/sunny2/view/SView;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sunny2/view/SView;->VIEW_STATE_SETS:[[I

    .line 454
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/htc/sunny2/view/SView;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 491
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunny2/view/SView;->VISIBILITY_FLAGS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, -0x8000

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 679
    invoke-direct {p0}, Lcom/htc/sunny2/SceneNode;-><init>()V

    .line 542
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    .line 544
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    .line 555
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    .line 556
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    .line 557
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v2, v2, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    .line 558
    iput v2, p0, Lcom/htc/sunny2/view/SView;->mAlpha:F

    .line 575
    iput-boolean v5, p0, Lcom/htc/sunny2/view/SView;->mRenderOrder:Z

    .line 576
    iput-boolean v1, p0, Lcom/htc/sunny2/view/SView;->mTouchable:Z

    .line 577
    iput-boolean v1, p0, Lcom/htc/sunny2/view/SView;->mHasLayoutAnimation:Z

    .line 579
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    .line 580
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 583
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mViewTagObject:Ljava/lang/Object;

    .line 585
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mClickListener:Lcom/htc/sunny2/view/SView$OnClickListener;

    .line 603
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mOrder:I

    .line 608
    iput v4, p0, Lcom/htc/sunny2/view/SView;->mOldWidthMeasureSpec:I

    .line 612
    iput v4, p0, Lcom/htc/sunny2/view/SView;->mOldHeightMeasureSpec:I

    .line 652
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mBlurParameter:F

    .line 658
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaL:I

    .line 659
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaT:I

    .line 660
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaR:I

    .line 661
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaB:I

    .line 680
    invoke-direct {p0, p1, p2, v5}, Lcom/htc/sunny2/view/SView;->init(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    .line 681
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V
    .locals 5
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    const/high16 v4, -0x8000

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 684
    invoke-direct {p0}, Lcom/htc/sunny2/SceneNode;-><init>()V

    .line 542
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    .line 544
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    .line 555
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    .line 556
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    .line 557
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v2, v2, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    .line 558
    iput v2, p0, Lcom/htc/sunny2/view/SView;->mAlpha:F

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SView;->mRenderOrder:Z

    .line 576
    iput-boolean v1, p0, Lcom/htc/sunny2/view/SView;->mTouchable:Z

    .line 577
    iput-boolean v1, p0, Lcom/htc/sunny2/view/SView;->mHasLayoutAnimation:Z

    .line 579
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    .line 580
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 583
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mViewTagObject:Ljava/lang/Object;

    .line 585
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mClickListener:Lcom/htc/sunny2/view/SView$OnClickListener;

    .line 603
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mOrder:I

    .line 608
    iput v4, p0, Lcom/htc/sunny2/view/SView;->mOldWidthMeasureSpec:I

    .line 612
    iput v4, p0, Lcom/htc/sunny2/view/SView;->mOldHeightMeasureSpec:I

    .line 652
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mBlurParameter:F

    .line 658
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaL:I

    .line 659
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaT:I

    .line 660
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaR:I

    .line 661
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaB:I

    .line 685
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/view/SView;->init(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    .line 686
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;ZF)V
    .locals 5
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"
    .parameter "fBlurParameter"

    .prologue
    const/high16 v4, -0x8000

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 689
    invoke-direct {p0}, Lcom/htc/sunny2/SceneNode;-><init>()V

    .line 542
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    .line 544
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    .line 555
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    .line 556
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    .line 557
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v2, v2, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    .line 558
    iput v2, p0, Lcom/htc/sunny2/view/SView;->mAlpha:F

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SView;->mRenderOrder:Z

    .line 576
    iput-boolean v1, p0, Lcom/htc/sunny2/view/SView;->mTouchable:Z

    .line 577
    iput-boolean v1, p0, Lcom/htc/sunny2/view/SView;->mHasLayoutAnimation:Z

    .line 579
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    .line 580
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 583
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mViewTagObject:Ljava/lang/Object;

    .line 585
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mClickListener:Lcom/htc/sunny2/view/SView$OnClickListener;

    .line 603
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mOrder:I

    .line 608
    iput v4, p0, Lcom/htc/sunny2/view/SView;->mOldWidthMeasureSpec:I

    .line 612
    iput v4, p0, Lcom/htc/sunny2/view/SView;->mOldHeightMeasureSpec:I

    .line 652
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mBlurParameter:F

    .line 658
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaL:I

    .line 659
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaT:I

    .line 660
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaR:I

    .line 661
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaB:I

    .line 690
    iput p4, p0, Lcom/htc/sunny2/view/SView;->mBlurParameter:F

    .line 691
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/view/SView;->init(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    .line 692
    return-void
.end method

.method protected constructor <init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V
    .locals 5
    .parameter "mode"
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    const/high16 v4, -0x8000

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 674
    invoke-direct {p0, p1}, Lcom/htc/sunny2/SceneNode;-><init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;)V

    .line 542
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    .line 544
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    .line 555
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    .line 556
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    .line 557
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v2, v2, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    .line 558
    iput v2, p0, Lcom/htc/sunny2/view/SView;->mAlpha:F

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SView;->mRenderOrder:Z

    .line 576
    iput-boolean v1, p0, Lcom/htc/sunny2/view/SView;->mTouchable:Z

    .line 577
    iput-boolean v1, p0, Lcom/htc/sunny2/view/SView;->mHasLayoutAnimation:Z

    .line 579
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    .line 580
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 583
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mViewTagObject:Ljava/lang/Object;

    .line 585
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mClickListener:Lcom/htc/sunny2/view/SView$OnClickListener;

    .line 603
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mOrder:I

    .line 608
    iput v4, p0, Lcom/htc/sunny2/view/SView;->mOldWidthMeasureSpec:I

    .line 612
    iput v4, p0, Lcom/htc/sunny2/view/SView;->mOldHeightMeasureSpec:I

    .line 652
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mBlurParameter:F

    .line 658
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaL:I

    .line 659
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaT:I

    .line 660
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaR:I

    .line 661
    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaB:I

    .line 675
    invoke-direct {p0, p2, p3, p4}, Lcom/htc/sunny2/view/SView;->init(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    .line 676
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/view/SView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->cancelAnimationIRT()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunny2/view/SView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->applyAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sunny2/view/SView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->invalidateBackgroundDrawable()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/sunny2/view/SView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SView;->setBackgroundResource_IRT(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/sunny2/view/SView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SView;->setGlobalBackgroundResource_IRT(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/sunny2/view/SView;ILandroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SView;->enableOverlapRoundCorner_IRT(ILandroid/graphics/Rect;)V

    return-void
.end method

.method private applyAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1433
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    if-eqz v0, :cond_2

    .line 1434
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->isReady()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->start()V

    .line 1436
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->onAnimationStart()V

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->animate()V

    .line 1440
    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->updateLayoutParameter()V

    .line 1442
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1443
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(I)V

    .line 1452
    :goto_0
    return-void

    .line 1446
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->onAnimationEnd()V

    goto :goto_0

    .line 1450
    :cond_2
    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->updateLayoutParameter()V

    goto :goto_0
.end method

.method private cancelAnimationIRT()V
    .locals 2

    .prologue
    .line 1406
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1407
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->cancel()V

    .line 1411
    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->updateLayoutParameter()V

    .line 1413
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->onAnimationCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1418
    return-void

    .line 1416
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private enableOverlapRoundCorner_IRT(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "resourceId"
    .parameter "cornerRect"

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2397
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0, p1, p2}, Lcom/htc/sunny2/view/SViewParent;->enableOverlapRoundCorner(ILandroid/graphics/Rect;)V

    .line 2399
    :cond_0
    return-void
.end method

.method public static getDefaultSize(II)I
    .locals 3
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 1773
    move v0, p0

    .line 1774
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1775
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1777
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 1786
    :goto_0
    return v0

    .line 1779
    :sswitch_0
    move v0, p0

    .line 1780
    goto :goto_0

    .line 1783
    :sswitch_1
    move v0, v2

    goto :goto_0

    .line 1777
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private init(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V
    .locals 4
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    .line 695
    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    .line 696
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mResources:Landroid/content/res/Resources;

    .line 697
    iput-object p2, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    .line 698
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    .line 700
    new-instance v0, Lcom/htc/sunny2/view/SView$SViewHandler;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SViewHandler-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getNodeId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/htc/sunny2/view/SView$SViewHandler;-><init>(Lcom/htc/sunny2/view/SView;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    .line 702
    const/high16 v0, 0x1000

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    .line 704
    iput-boolean p3, p0, Lcom/htc/sunny2/view/SView;->mRenderOrder:Z

    .line 705
    return-void
.end method

.method private invalidateBackgroundDrawable()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 764
    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 765
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getWidth()I

    move-result v6

    if-lt v6, v9, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getHeight()I

    move-result v6

    if-ge v6, v9, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    .line 771
    .local v1, bkgSprite:Lcom/htc/sunny2/Sprite;
    if-eqz v4, :cond_6

    .line 773
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 774
    .local v3, config:Landroid/graphics/Bitmap$Config;
    iget v6, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    iget v7, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    invoke-static {v6, v7, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 775
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 776
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 777
    invoke-static {v0}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/SBitmap;

    move-result-object v5

    .line 778
    .local v5, sbmp:Lcom/htc/sunny2/SBitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 779
    const/4 v0, 0x0

    .line 781
    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    if-nez v6, :cond_4

    .line 782
    invoke-static {v5}, Lcom/htc/sunny2/Texture;->createTexture(Lcom/htc/sunny2/SBitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    .line 783
    iget v6, p0, Lcom/htc/sunny2/view/SView;->mBlurParameter:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_3

    .line 784
    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    iget-object v7, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1, v6, v7}, Lcom/htc/sunny2/Sprite;->setBlurTexture(Lcom/htc/sunny2/Texture;Lcom/htc/sunny2/SunnyContext;)V

    .line 800
    :goto_1
    if-eqz v5, :cond_2

    .line 801
    invoke-virtual {v5}, Lcom/htc/sunny2/SBitmap;->recycle()V

    .line 804
    :cond_2
    iget v6, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    int-to-float v7, v7

    invoke-virtual {v1, v6, v7, v8, v8}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 806
    invoke-virtual {v1, v9}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 807
    invoke-virtual {v1, v9}, Lcom/htc/sunny2/Sprite;->setTouchable(Z)V

    goto :goto_0

    .line 786
    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1, v6}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    goto :goto_1

    .line 790
    :cond_4
    iget v6, p0, Lcom/htc/sunny2/view/SView;->mBlurParameter:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_5

    .line 793
    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    .line 794
    invoke-static {v5}, Lcom/htc/sunny2/Texture;->createTexture(Lcom/htc/sunny2/SBitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    .line 795
    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    iget-object v7, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1, v6, v7}, Lcom/htc/sunny2/Sprite;->setBlurTexture(Lcom/htc/sunny2/Texture;Lcom/htc/sunny2/SunnyContext;)V

    goto :goto_1

    .line 797
    :cond_5
    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v6, v5}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;)V

    goto :goto_1

    .line 810
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #config:Landroid/graphics/Bitmap$Config;
    .end local v5           #sbmp:Lcom/htc/sunny2/SBitmap;
    :cond_6
    invoke-virtual {v1, v7}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 811
    invoke-virtual {v1, v7}, Lcom/htc/sunny2/Sprite;->setTouchable(Z)V

    goto :goto_0
.end method

.method public static resolveSize(II)I
    .locals 3
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 1746
    move v0, p0

    .line 1747
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1748
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1749
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 1760
    :goto_0
    return v0

    .line 1751
    :sswitch_0
    move v0, p0

    .line 1752
    goto :goto_0

    .line 1754
    :sswitch_1
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1755
    goto :goto_0

    .line 1757
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 1749
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private setBackgroundResource_IRT(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 854
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-nez v1, :cond_0

    .line 856
    iget v1, p0, Lcom/htc/sunny2/view/SView;->mBlurParameter:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 857
    iget v1, p0, Lcom/htc/sunny2/view/SView;->mBlurParameter:F

    invoke-static {v1}, Lcom/htc/sunny2/Sprite;->obtain(F)Lcom/htc/sunny2/Sprite;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    .line 861
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/view/SView;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 862
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 863
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite;->setRenderOrder(I)V

    .line 866
    :cond_0
    if-eqz p1, :cond_2

    iget v1, p0, Lcom/htc/sunny2/view/SView;->mBackgroundResource:I

    if-ne p1, v1, :cond_2

    .line 878
    :goto_1
    return-void

    .line 859
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    goto :goto_0

    .line 869
    :cond_2
    const/4 v0, 0x0

    .line 870
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_3

    .line 871
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 873
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 875
    iput p1, p0, Lcom/htc/sunny2/view/SView;->mBackgroundResource:I

    goto :goto_1
.end method

.method private setGlobalBackgroundResource_IRT(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2375
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/view/SViewParent;->setGlobalBackgroundResource(I)V

    .line 2377
    :cond_0
    return-void
.end method

.method private updateLayoutParameter()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1460
    const/4 v0, 0x0

    .line 1461
    .local v0, bAnimationLayout:Z
    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->isFillAfter()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1464
    :cond_0
    const/4 v0, 0x1

    .line 1467
    :cond_1
    if-ne v7, v0, :cond_3

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->isPositionAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_3

    .line 1469
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->onUpdatePositionAnimation()V

    .line 1476
    :goto_0
    if-ne v7, v0, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->isRotateAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_4

    .line 1477
    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentRotation()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    .line 1478
    .local v3, v:Lcom/htc/sunny2/view/Vector3F;
    iget v4, v3, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v5, v3, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v6, v3, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-super {p0, v4, v5, v6}, Lcom/htc/sunny2/SceneNode;->setRotate(FFF)V

    .line 1483
    .end local v3           #v:Lcom/htc/sunny2/view/Vector3F;
    :goto_1
    if-ne v7, v0, :cond_5

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->isScaleAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_5

    .line 1484
    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentScale()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    .line 1485
    .restart local v3       #v:Lcom/htc/sunny2/view/Vector3F;
    iget v4, v3, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v5, v3, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v6, v3, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-super {p0, v4, v5, v6}, Lcom/htc/sunny2/SceneNode;->setScale(FFF)V

    .line 1490
    .end local v3           #v:Lcom/htc/sunny2/view/Vector3F;
    :goto_2
    if-ne v7, v0, :cond_6

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->isAlphaAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_6

    .line 1491
    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentAlpha()I

    move-result v1

    .line 1492
    .local v1, nAlpha:I
    int-to-float v4, v1

    const/high16 v5, 0x437f

    div-float v2, v4, v5

    .line 1493
    .local v2, newAlpha:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    .line 1494
    float-to-int v4, v2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 1496
    :cond_2
    invoke-super {p0, v2}, Lcom/htc/sunny2/SceneNode;->setAlpha(F)V

    .line 1501
    .end local v1           #nAlpha:I
    .end local v2           #newAlpha:F
    :goto_3
    return-void

    .line 1473
    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v5, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-super {p0, v4, v5, v6}, Lcom/htc/sunny2/SceneNode;->setPosition(FFF)V

    goto :goto_0

    .line 1480
    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny2/view/SView;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v5, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-super {p0, v4, v5, v6}, Lcom/htc/sunny2/SceneNode;->setRotate(FFF)V

    goto :goto_1

    .line 1487
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v5, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-super {p0, v4, v5, v6}, Lcom/htc/sunny2/SceneNode;->setScale(FFF)V

    goto :goto_2

    .line 1499
    :cond_6
    iget v4, p0, Lcom/htc/sunny2/view/SView;->mAlpha:F

    invoke-super {p0, v4}, Lcom/htc/sunny2/SceneNode;->setAlpha(F)V

    goto :goto_3
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    .prologue
    .line 1396
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1397
    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->cancelAnimationIRT()V

    .line 1402
    :goto_0
    return-void

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(I)V

    goto :goto_0
.end method

.method public clearFocus()V
    .locals 0

    .prologue
    .line 2124
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 2268
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .line 2272
    .local v1, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    new-instance v0, Lcom/htc/wrap/com/android/internal/view/menu/HtcWrapMenuBuilder;

    invoke-direct {v0}, Lcom/htc/wrap/com/android/internal/view/menu/HtcWrapMenuBuilder;-><init>()V

    .line 2273
    .local v0, htcMenuBuilder:Lcom/htc/wrap/com/android/internal/view/menu/HtcWrapMenuBuilder;
    invoke-static {p1, v1}, Lcom/htc/wrap/com/android/internal/view/menu/HtcWrapMenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2277
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 2278
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_0

    .line 2279
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v2, p1, v3, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2284
    :cond_0
    invoke-static {p1, v3}, Lcom/htc/wrap/com/android/internal/view/menu/HtcWrapMenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2287
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v2, :cond_1

    .line 2288
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/view/SViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 2290
    :cond_1
    return-void
.end method

.method protected createResource()V
    .locals 4

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-nez v0, :cond_0

    .line 1195
    new-instance v0, Lcom/htc/sunny2/view/SView$SViewHandler;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SViewHandler-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getNodeId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/htc/sunny2/view/SView$SViewHandler;-><init>(Lcom/htc/sunny2/view/SView;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    .line 1201
    :goto_0
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    .line 1202
    return-void

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->attachRenderThread(Lcom/htc/sunny2/RenderThread;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1235
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SView;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchRenderOrderChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 2068
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SView;->onRenderOrderChanged(Z)V

    .line 2069
    return-void
.end method

.method public dispatchResourceCreation(Z)V
    .locals 2
    .parameter "isCreated"

    .prologue
    const/16 v1, 0x8

    .line 1169
    if-eqz p1, :cond_2

    .line 1170
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->isBindedSurface()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1175
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eq v0, v1, :cond_0

    .line 1179
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->createResource()V

    goto :goto_0

    .line 1182
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v1, :cond_0

    .line 1186
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->freeResource()V

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 2213
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 1
    .parameter "event"
    .parameter "nHitSpriteId"

    .prologue
    .line 1301
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/view/SView;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 966
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 969
    :cond_0
    return-void
.end method

.method public enableOverlapRoundCorner(ILandroid/graphics/Rect;)V
    .locals 3
    .parameter "resourceId"
    .parameter "cornerRect"

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const/4 v1, 0x7

    new-instance v2, Lcom/htc/sunny2/view/SView$OverlapRoundCornerParam;

    invoke-direct {v2, p1, p2}, Lcom/htc/sunny2/view/SView$OverlapRoundCornerParam;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 2403
    return-void
.end method

.method protected freeResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1205
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThreadHandler;->release()V

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SView;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 1211
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 1212
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    .line 1213
    iput-object v1, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    .line 1216
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_2

    .line 1217
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 1218
    iput-object v1, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    .line 1221
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    .line 1222
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 1945
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mAlpha:F

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2371
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2303
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDrawableState()[I
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mDrawableState:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mDrawableState:[I

    .line 1051
    :goto_0
    return-object v0

    .line 1049
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SView;->onCreateDrawableState(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mDrawableState:[I

    .line 1050
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    .line 1051
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mDrawableState:[I

    goto :goto_0
.end method

.method public getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2388
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2389
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0}, Lcom/htc/sunny2/view/SViewParent;->getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2391
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    return v0
.end method

.method public getLayoutParams()Lcom/htc/sunny2/view/SViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    return-object v0
.end method

.method public final getMeasuredHeight()I
    .locals 1

    .prologue
    .line 1878
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mMeasuredHeight:I

    return v0
.end method

.method public final getMeasuredWidth()I
    .locals 1

    .prologue
    .line 1867
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mMeasuredWidth:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 1166
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 1154
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 1162
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 1158
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    return v0
.end method

.method public final getPosition()Lcom/htc/sunny2/view/Vector3F;
    .locals 1

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    return-object v0
.end method

.method public getRenderOrder()I
    .locals 1

    .prologue
    .line 2052
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mOrder:I

    return v0
.end method

.method public getRenderThread()Lcom/htc/sunny2/RenderThread;
    .locals 1

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2337
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0}, Lcom/htc/sunny2/view/SViewParent;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    .line 2340
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;
    .locals 1
    .parameter "sprite"

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2236
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/view/SViewParent;->getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    .line 2238
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 1801
    iget v1, p0, Lcom/htc/sunny2/view/SView;->mMinHeight:I

    .line 1803
    .local v1, suggestedMinHeight:I
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1804
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 1805
    .local v0, bgMinHeight:I
    if-ge v1, v0, :cond_0

    .line 1806
    move v1, v0

    .line 1810
    .end local v0           #bgMinHeight:I
    :cond_0
    return v1
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 1825
    iget v1, p0, Lcom/htc/sunny2/view/SView;->mMinWidth:I

    .line 1827
    .local v1, suggestedMinWidth:I
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1828
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 1829
    .local v0, bgMinWidth:I
    if-ge v1, v0, :cond_0

    .line 1830
    move v1, v0

    .line 1834
    .end local v0           #bgMinWidth:I
    :cond_0
    return v1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mViewTagObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getViewNodeId()I
    .locals 1

    .prologue
    .line 1890
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getNodeId()I

    move-result v0

    return v0
.end method

.method public getViewScale()Lcom/htc/sunny2/view/Vector3F;
    .locals 5

    .prologue
    .line 1323
    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v1}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    .line 1324
    .local v1, vRes:Lcom/htc/sunny2/view/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->isFillAfter()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->isStarted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1325
    :cond_0
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->isScaleAnimation()Z

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1326
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentScale()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    .line 1327
    .local v0, v:Lcom/htc/sunny2/view/Vector3F;
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 1333
    .end local v0           #v:Lcom/htc/sunny2/view/Vector3F;
    :cond_1
    :goto_0
    return-object v1

    .line 1330
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v2, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v3, v3, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 714
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    return v0
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 2134
    const/4 v0, 0x0

    return v0
.end method

.method public hasLayoutAnimation()Z
    .locals 1

    .prologue
    .line 1137
    iget-boolean v0, p0, Lcom/htc/sunny2/view/SView;->mHasLayoutAnimation:Z

    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 2155
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x4

    .line 990
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 991
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->hasMessages(I)Z

    move-result v0

    if-ne v2, v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->removeMessages(I)V

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(I)V

    .line 996
    :cond_1
    return-void
.end method

.method public isBindedSurface()Z
    .locals 1

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2345
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0}, Lcom/htc/sunny2/view/SViewParent;->isBindedSurface()Z

    move-result v0

    .line 2347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 2165
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 2144
    const/4 v0, 0x0

    return v0
.end method

.method public isLayoutRequested()Z
    .locals 2

    .prologue
    .line 2322
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPressed()Z
    .locals 2

    .prologue
    .line 2227
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 1981
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final layout(FFFII)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1578
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    monitor-enter v2

    .line 1579
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    .line 1580
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1581
    invoke-virtual/range {p0 .. p5}, Lcom/htc/sunny2/view/SView;->setFrame(FFFII)Z

    move-result v1

    .line 1582
    .local v1, changed:Z
    if-nez v1, :cond_0

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v2, 0x2000

    if-ne v0, v2, :cond_1

    :cond_0
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1583
    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny2/view/SView;->onLayout(ZFFFII)V

    .line 1584
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    .line 1586
    :cond_1
    return-void

    .line 1580
    .end local v1           #changed:Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final measure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v1, 0x1

    .line 1642
    const/4 v0, 0x0

    .line 1643
    .local v0, isForceLayout:Z
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    monitor-enter v2

    .line 1644
    :try_start_0
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 1645
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1646
    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/htc/sunny2/view/SView;->mOldWidthMeasureSpec:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/view/SView;->mOldHeightMeasureSpec:I

    if-eq p2, v1, :cond_3

    .line 1651
    :cond_0
    iget v1, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x801

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    .line 1654
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/view/SView;->onMeasure(II)V

    .line 1658
    iget v1, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-eq v1, v2, :cond_2

    .line 1659
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onMeasure() did not set the measured dimension by calling setMeasuredDimension()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1644
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1645
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1664
    :cond_2
    iget v1, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    .line 1667
    :cond_3
    iput p1, p0, Lcom/htc/sunny2/view/SView;->mOldWidthMeasureSpec:I

    .line 1668
    iput p2, p0, Lcom/htc/sunny2/view/SView;->mOldHeightMeasureSpec:I

    .line 1669
    return-void
.end method

.method protected onAnimationCancel()V
    .locals 0

    .prologue
    .line 1430
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 0

    .prologue
    .line 1426
    return-void
.end method

.method protected onAnimationStart()V
    .locals 0

    .prologue
    .line 1422
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1883
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 2313
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 9
    .parameter "extraSpace"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1073
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    .line 1075
    .local v3, privateFlags:I
    and-int/lit16 v7, v3, 0x4000

    if-eqz v7, :cond_0

    move v4, v5

    .line 1077
    .local v4, viewStateIndex:I
    :goto_0
    shl-int/lit8 v8, v4, 0x1

    iget v7, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    and-int/lit8 v7, v7, 0x20

    if-nez v7, :cond_1

    move v7, v5

    :goto_1
    add-int v4, v8, v7

    .line 1080
    shl-int/lit8 v8, v4, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v5

    :goto_2
    add-int v4, v8, v7

    .line 1082
    shl-int/lit8 v8, v4, 0x1

    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_3

    move v7, v5

    :goto_3
    add-int v4, v8, v7

    .line 1085
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->hasWindowFocus()Z

    move-result v2

    .line 1086
    .local v2, hasWindowFocus:Z
    shl-int/lit8 v7, v4, 0x1

    if-eqz v2, :cond_4

    :goto_4
    add-int v4, v7, v5

    .line 1088
    sget-object v5, Lcom/htc/sunny2/view/SView;->VIEW_STATE_SETS:[[I

    aget-object v0, v5, v4

    .line 1090
    .local v0, drawableState:[I
    if-nez p1, :cond_5

    .line 1102
    .end local v0           #drawableState:[I
    :goto_5
    return-object v0

    .end local v2           #hasWindowFocus:Z
    .end local v4           #viewStateIndex:I
    :cond_0
    move v4, v6

    .line 1075
    goto :goto_0

    .restart local v4       #viewStateIndex:I
    :cond_1
    move v7, v6

    .line 1077
    goto :goto_1

    :cond_2
    move v7, v6

    .line 1080
    goto :goto_2

    :cond_3
    move v7, v6

    .line 1082
    goto :goto_3

    .restart local v2       #hasWindowFocus:Z
    :cond_4
    move v5, v6

    .line 1086
    goto :goto_4

    .line 1095
    .restart local v0       #drawableState:[I
    :cond_5
    if-eqz v0, :cond_6

    .line 1096
    array-length v5, v0

    add-int/2addr v5, p1

    new-array v1, v5, [I

    .line 1097
    .local v1, fullState:[I
    array-length v5, v0

    invoke-static {v0, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6
    move-object v0, v1

    .line 1102
    goto :goto_5

    .line 1099
    .end local v1           #fullState:[I
    :cond_6
    new-array v1, p1, [I

    .restart local v1       #fullState:[I
    goto :goto_6
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1886
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 1887
    return-void
.end method

.method protected onFreeResource()V
    .locals 0

    .prologue
    .line 1226
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1276
    const/4 v0, 0x0

    .line 1284
    .local v0, result:Z
    return v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1240
    const/4 v0, 0x0

    .line 1242
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1258
    :goto_0
    return v0

    .line 1246
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/htc/sunny2/view/SView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1247
    goto :goto_0

    .line 1251
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/htc/sunny2/view/SView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1252
    goto :goto_0

    .line 1242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1289
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1263
    const/4 v0, 0x0

    .line 1271
    .local v0, result:Z
    return v0
.end method

.method protected onLayout(ZFFFII)V
    .locals 4
    .parameter "changed"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1603
    if-ne v2, p1, :cond_0

    .line 1604
    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->updateLayoutParameter()V

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSizeChanged:Z

    if-ne v2, v0, :cond_2

    .line 1609
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1612
    iput-boolean v1, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSizeChanged:Z

    .line 1614
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/RenderThreadHandler;->hasMessages(I)Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 1615
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/RenderThreadHandler;->removeMessages(I)V

    .line 1617
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(I)V

    .line 1619
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1718
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/htc/sunny2/view/SView;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/htc/sunny2/view/SView;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/view/SView;->setMeasuredDimension(II)V

    .line 1720
    return-void
.end method

.method protected onRenderOrderChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 2079
    if-nez p1, :cond_0

    .line 2080
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2081
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SView;->setPressed(Z)V

    .line 2091
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->refreshDrawableState()V

    .line 2093
    const-string v0, "SView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onRenderOrderChanged() hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1555
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 3
    .parameter "event"
    .parameter "nHitSpriteId"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1307
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v2}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 1309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1314
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/view/SView;->setPressed(Z)V

    .line 1318
    :cond_0
    :goto_0
    iget v2, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    if-ne p2, v2, :cond_1

    :goto_1
    return v0

    .line 1311
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SView;->setPressed(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1318
    goto :goto_1

    .line 1309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onUpdatePositionAnimation()V
    .locals 4

    .prologue
    .line 1455
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    .line 1456
    .local v0, v:Lcom/htc/sunny2/view/Vector3F;
    iget v1, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v2, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-super {p0, v1, v2, v3}, Lcom/htc/sunny2/SceneNode;->setPosition(FFF)V

    .line 1457
    return-void
.end method

.method public performHapticFeedback(I)Z
    .locals 1
    .parameter "feedbackConstant"

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2358
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/view/SViewParent;->performHapticFeedback(I)Z

    move-result v0

    .line 2360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performHapticFeedback(II)Z
    .locals 1
    .parameter "feedbackConstant"
    .parameter "flags"

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2365
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0, p1, p2}, Lcom/htc/sunny2/view/SViewParent;->performHapticFeedback(II)Z

    move-result v0

    .line 2367
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 1
    .parameter "soundConstant"

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2352
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/view/SViewParent;->playSoundEffect(I)V

    .line 2354
    :cond_0
    return-void
.end method

.method public refreshDrawableState()V
    .locals 1

    .prologue
    .line 980
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    .line 981
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->drawableStateChanged()V

    .line 982
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 2326
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    monitor-enter v1

    .line 2327
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    .line 2328
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0}, Lcom/htc/sunny2/view/SViewParent;->requestLayout()V

    .line 2331
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    .line 2332
    monitor-exit v1

    .line 2333
    return-void

    .line 2332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/htc/sunny2/RenderThreadHandler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)V

    .line 1003
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1963
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1964
    float-to-int v0, p1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 1967
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    .line 1972
    :goto_0
    return-void

    .line 1968
    :cond_1
    iput p1, p0, Lcom/htc/sunny2/view/SView;->mAlpha:F

    .line 1970
    invoke-super {p0, p1}, Lcom/htc/sunny2/SceneNode;->setAlpha(F)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 1954
    int-to-float v0, p1

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SView;->setAlpha(F)V

    .line 1955
    return-void
.end method

.method public setAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 2
    .parameter "controller"

    .prologue
    .line 1380
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1382
    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    .line 1383
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->setReady()V

    .line 1385
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1390
    return-void

    .line 1388
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 831
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 832
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 9
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 891
    const/4 v1, 0x0

    .line 893
    .local v1, requestLayout:Z
    iput v8, p0, Lcom/htc/sunny2/view/SView;->mBackgroundResource:I

    .line 899
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 900
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 903
    :cond_0
    if-eqz p1, :cond_7

    .line 904
    sget-object v2, Lcom/htc/sunny2/view/SView;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 905
    .local v0, padding:Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 906
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #padding:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 907
    .restart local v0       #padding:Landroid/graphics/Rect;
    sget-object v2, Lcom/htc/sunny2/view/SView;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 909
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    if-nez v2, :cond_2

    .line 910
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/htc/sunny2/view/SView;->setPadding(IIII)V

    .line 915
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 917
    :cond_3
    const/4 v1, 0x1

    .line 920
    :cond_4
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 921
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 922
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 924
    :cond_5
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->isVisible()Z

    move-result v2

    invoke-virtual {p1, v2, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 925
    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 942
    .end local v0           #padding:Landroid/graphics/Rect;
    :goto_0
    iput-boolean v6, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSizeChanged:Z

    .line 944
    if-eqz v1, :cond_8

    .line 945
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->requestLayout()V

    .line 953
    :cond_6
    :goto_1
    return-void

    .line 928
    :cond_7
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 939
    const/4 v1, 0x1

    goto :goto_0

    .line 947
    :cond_8
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->isBindedSurface()Z

    move-result v2

    if-ne v6, v2, :cond_6

    .line 948
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v2, v7}, Lcom/htc/sunny2/RenderThreadHandler;->hasMessages(I)Z

    move-result v2

    if-ne v6, v2, :cond_9

    .line 949
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v2, v7}, Lcom/htc/sunny2/RenderThreadHandler;->removeMessages(I)V

    .line 951
    :cond_9
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v2, v7}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(I)V

    goto :goto_1
.end method

.method public setBackgroundRenderOrder(I)V
    .locals 1
    .parameter "nOrder"

    .prologue
    .line 821
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite;->setRenderOrder(I)V

    .line 824
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0
    .parameter "resid"

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SView;->setBackgroundResource_IRT(I)V

    .line 850
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/16 v1, 0x20

    .line 2175
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2184
    :goto_0
    return-void

    .line 2177
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/view/SView;->setFlags(II)V

    .line 2183
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->refreshDrawableState()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2177
    goto :goto_1
.end method

.method public setEnlargeSensorArea(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1115
    iput p1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaL:I

    .line 1116
    iput p2, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaT:I

    .line 1117
    iput p3, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaR:I

    .line 1118
    iput p4, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaB:I

    .line 1120
    return-void
.end method

.method setFlags(II)V
    .locals 5
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 2008
    iget v1, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    .line 2009
    .local v1, old:I
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v3, v4

    and-int v4, p1, p2

    or-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    .line 2011
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    xor-int v0, v3, v1

    .line 2012
    .local v0, changed:I
    if-nez v0, :cond_1

    .line 2049
    :cond_0
    :goto_0
    return-void

    .line 2015
    :cond_1
    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    .line 2018
    .local v2, privateFlags:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_2

    .line 2019
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_2

    .line 2021
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->clearFocus()V

    .line 2034
    :cond_2
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_0

    .line 2040
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2041
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->clearFocus()V

    goto :goto_0
.end method

.method protected setFrame(FFFII)Z
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1517
    const/4 v0, 0x0

    .line 1519
    .local v0, changed:Z
    iget-object v8, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v8, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 1520
    .local v5, oldX:F
    iget-object v8, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v6, v8, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 1521
    .local v6, oldY:F
    iget-object v8, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v8, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 1523
    .local v7, oldZ:F
    invoke-static {v5, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v6, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_0

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    if-ne v8, p4, :cond_0

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    if-eq v8, p5, :cond_3

    .line 1527
    :cond_0
    const/4 v0, 0x1

    .line 1529
    iget v4, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    .line 1530
    .local v4, oldWidth:I
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    .line 1532
    .local v3, oldHeight:I
    iget-object v8, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iput p1, v8, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 1533
    iget-object v8, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iput p2, v8, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 1534
    iget-object v8, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iput p3, v8, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 1536
    iput p4, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    .line 1537
    iput p5, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    .line 1539
    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    .line 1541
    iget v2, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    .line 1542
    .local v2, newWidth:I
    iget v1, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    .line 1544
    .local v1, newHeight:I
    if-ne v2, v4, :cond_1

    if-eq v1, v3, :cond_2

    .line 1545
    :cond_1
    invoke-virtual {p0, v2, v1, v4, v3}, Lcom/htc/sunny2/view/SView;->onSizeChanged(IIII)V

    .line 1548
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSizeChanged:Z

    .line 1550
    .end local v1           #newHeight:I
    .end local v2           #newWidth:I
    .end local v3           #oldHeight:I
    .end local v4           #oldWidth:I
    :cond_3
    return v0
.end method

.method public setGlobalBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 2385
    return-void
.end method

.method public setGlobalBackgroundResource(I)V
    .locals 3
    .parameter "resourceId"

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 2381
    return-void
.end method

.method public setLayoutAnimation(Z)V
    .locals 0
    .parameter "bEnableAnimation"

    .prologue
    .line 1141
    iput-boolean p1, p0, Lcom/htc/sunny2/view/SView;->mHasLayoutAnimation:Z

    .line 1142
    return-void
.end method

.method public setLayoutParams(Lcom/htc/sunny2/view/SViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 749
    if-nez p1, :cond_0

    .line 750
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    .line 753
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->requestLayout()V

    .line 754
    return-void
.end method

.method public setLayoutParamsWithoutLayout(Lcom/htc/sunny2/view/SViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 757
    if-nez p1, :cond_0

    .line 758
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    .line 761
    return-void
.end method

.method protected final setMeasuredDimension(II)V
    .locals 1
    .parameter "measuredWidth"
    .parameter "measuredHeight"

    .prologue
    .line 1731
    iput p1, p0, Lcom/htc/sunny2/view/SView;->mMeasuredWidth:I

    .line 1732
    iput p2, p0, Lcom/htc/sunny2/view/SView;->mMeasuredHeight:I

    .line 1734
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    .line 1735
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .parameter "minHeight"

    .prologue
    .line 1845
    iput p1, p0, Lcom/htc/sunny2/view/SView;->mMinHeight:I

    .line 1846
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0
    .parameter "minWidth"

    .prologue
    .line 1856
    iput p1, p0, Lcom/htc/sunny2/view/SView;->mMinWidth:I

    .line 1857
    return-void
.end method

.method public setOnClickListener(Lcom/htc/sunny2/view/SView$OnClickListener;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mClickListener:Lcom/htc/sunny2/view/SView$OnClickListener;

    .line 1131
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2252
    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 2253
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1145
    iput p2, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    .line 1146
    iput p1, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    .line 1147
    iput p4, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    .line 1148
    iput p3, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    .line 1150
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->requestLayout()V

    .line 1151
    return-void
.end method

.method public setParent(Lcom/htc/sunny2/view/SViewParent;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 2231
    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    .line 2232
    return-void
.end method

.method public setPosition(FFF)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 1901
    iget v4, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    iget v5, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/view/SView;->setFrame(FFFII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1902
    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunny2/SceneNode;->setPosition(FFF)V

    .line 1903
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    .line 1908
    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 2196
    if-eqz p1, :cond_0

    .line 2197
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    .line 2201
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->refreshDrawableState()V

    .line 2202
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SView;->dispatchSetPressed(Z)V

    .line 2203
    return-void

    .line 2199
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setRenderOrder(I)V
    .locals 0
    .parameter "nOrder"

    .prologue
    .line 2056
    invoke-super {p0, p1}, Lcom/htc/sunny2/SceneNode;->setRenderOrder(I)V

    .line 2057
    iput p1, p0, Lcom/htc/sunny2/view/SView;->mOrder:I

    .line 2058
    return-void
.end method

.method public setRotate(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    .line 1938
    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunny2/SceneNode;->setRotate(FFF)V

    .line 1942
    return-void
.end method

.method public setScale(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    .line 1923
    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunny2/SceneNode;->setScale(FFF)V

    .line 1927
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 2105
    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mViewTagObject:Ljava/lang/Object;

    .line 2106
    return-void
.end method

.method public setVisibility(Z)V
    .locals 4
    .parameter "bVisible"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1990
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->isVisible()Z

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1999
    :goto_0
    return-void

    .line 1992
    :cond_0
    if-ne p1, v2, :cond_2

    move v0, v1

    .line 1993
    .local v0, visibility:I
    :goto_1
    const/16 v3, 0xc

    invoke-virtual {p0, v0, v3}, Lcom/htc/sunny2/view/SView;->setFlags(II)V

    .line 1994
    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 1995
    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1998
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/sunny2/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 1992
    .end local v0           #visibility:I
    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    .restart local v0       #visibility:I
    :cond_3
    move v2, v1

    .line 1995
    goto :goto_2
.end method

.method public startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 2
    .parameter "controller"

    .prologue
    .line 1342
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 1348
    :goto_0
    return-void

    .line 1346
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SView;->startAnimationIRT(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0
.end method

.method protected startAnimationIRT(Lcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 2
    .parameter "controller"

    .prologue
    .line 1352
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1354
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1356
    const-string v0, "SView"

    const-string v1, "Can\'t apply two animation at the same time."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->cancel()V

    .line 1360
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    .line 1361
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    if-eqz v0, :cond_1

    .line 1362
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->start()V

    .line 1363
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->onAnimationStart()V

    .line 1366
    :cond_1
    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->applyAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1369
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1371
    return-void

    .line 1369
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, p2, p1}, Lcom/htc/sunny2/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 1010
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
