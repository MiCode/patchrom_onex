.class public Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;
.super Ljava/lang/Object;
.source "IScreenCacheHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenCache"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mBlurTexture:I

.field public mCbScroll:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;

.field public mCbTransition:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;

.field public mIsVisible:Z

.field public mRect:Landroid/graphics/Rect;

.field public mSprite:Lcom/htc/sunny2/Sprite;

.field public mTexture:Lcom/htc/sunny2/Texture;

.field public mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;->UNKNOWN:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mType:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$SCREEN_CACHE;

    .line 53
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mSprite:Lcom/htc/sunny2/Sprite;

    .line 54
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mTexture:Lcom/htc/sunny2/Texture;

    .line 55
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mBlurTexture:I

    .line 56
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mIsVisible:Z

    .line 57
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mBitmap:Landroid/graphics/Bitmap;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mRect:Landroid/graphics/Rect;

    .line 59
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mCbScroll:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenScrollCacheHost$OnScrollCacheListener;

    .line 60
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/interfaces/IScreenCacheHandler$ScreenCache;->mCbTransition:Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;

    return-void
.end method
