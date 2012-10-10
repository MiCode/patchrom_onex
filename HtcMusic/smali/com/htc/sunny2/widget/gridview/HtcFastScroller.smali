.class public Lcom/htc/sunny2/widget/gridview/HtcFastScroller;
.super Ljava/lang/Object;
.source "HtcFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BIG_OVERLAY_WH:I = 0x0

.field public static final STATE_DRAGGING:I = 0x3

.field public static final STATE_ENTER:I = 0x1

.field public static final STATE_EXIT:I = 0x4

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_VISIBLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcFastScroller"

.field static sSymbol:Ljava/lang/String;


# instance fields
.field private mChangedBounds:Z

.field private mContext:Landroid/content/Context;

.field private mDrawOverlay:Z

.field private mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

.field private mHandler:Lcom/htc/sunny2/RenderThreadHandler;

.field private mListOffset:I

.field private mOffset:I

.field private mOldTotalItemCount:I

.field private mOrientation:I

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayFading:Z

.field private mOverlayH:I

.field private mOverlayPadding:I

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlaySize:I

.field mOverlaySprite:Lcom/htc/sunny2/Sprite;

.field private mOverlayTextMargin:I

.field private mOverlayTextSize:I

.field mOverlayTexture:Lcom/htc/sunny2/Texture;

.field private mOverlayW:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintShadow:Landroid/graphics/Paint;

.field private mParentSceneNode:Lcom/htc/sunny2/SceneNode;

.field protected mResOverlay:I

.field protected mResThumb:I

.field protected mResTrack:I

.field private mScrollCompleted:Z

.field private mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mSectionsDirty:Z

.field mSizeChangeProcessed:Z

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbH:I

.field mThumbSprite:Lcom/htc/sunny2/Sprite;

.field mThumbTexture:Lcom/htc/sunny2/Texture;

.field private mThumbW:I

.field private mThumbX:I

.field private mThumbY:I

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field mTrackSprite:Lcom/htc/sunny2/Sprite;

.field mTrackTexture:Lcom/htc/sunny2/Texture;

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc8

    .line 98
    const-string v0, "#"

    sput-object v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->sSymbol:Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->getResolution()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    :pswitch_0
    sput v1, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->BIG_OVERLAY_WH:I

    .line 129
    :goto_0
    return-void

    .line 113
    :pswitch_1
    const/16 v0, 0x64

    sput v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->BIG_OVERLAY_WH:I

    goto :goto_0

    .line 117
    :pswitch_2
    sput v1, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->BIG_OVERLAY_WH:I

    goto :goto_0

    .line 122
    :pswitch_3
    const/16 v0, 0x96

    sput v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->BIG_OVERLAY_WH:I

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/RenderThread;Lcom/htc/sunny2/SceneNode;I)V
    .locals 3
    .parameter "context"
    .parameter "gView"
    .parameter "r"
    .parameter "parent"
    .parameter "orientation"

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    .line 61
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    .line 66
    const/16 v0, 0x68

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySize:I

    .line 91
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResThumb:I

    .line 92
    const v0, 0x208003e

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResOverlay:I

    .line 93
    const v0, 0x7f020003

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResTrack:I

    .line 99
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionsDirty:Z

    .line 102
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayPadding:I

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    .line 133
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 134
    invoke-direct {p0, p1, p4, p3, p5}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->init(Landroid/content/Context;Lcom/htc/sunny2/SceneNode;Lcom/htc/sunny2/RenderThread;I)V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/widget/gridview/HtcFastScroller;)Lcom/htc/sunny2/SceneNode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mParentSceneNode:Lcom/htc/sunny2/SceneNode;

    return-object v0
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 850
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 851
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v8, v7}, Lcom/htc/sunny2/widget/gridview/GridView;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    .line 852
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 853
    return-void
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 721
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v0

    .line 722
    .local v0, mediaList:Lcom/htc/sunny2/IMediaList;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 731
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_0

    .line 732
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0           #mediaList:Lcom/htc/sunny2/IMediaList;
    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 733
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSections:[Ljava/lang/Object;

    .line 739
    :goto_0
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionsDirty:Z

    .line 740
    return-void

    .line 736
    .restart local v0       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, " "

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Lcom/htc/sunny2/SceneNode;Lcom/htc/sunny2/RenderThread;I)V
    .locals 6
    .parameter "context"
    .parameter "parent"
    .parameter "r"
    .parameter "orientation"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 280
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mContext:Landroid/content/Context;

    .line 283
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 285
    .local v1, res:Landroid/content/res/Resources;
    if-ne p4, v4, :cond_0

    .line 286
    const v2, 0x208003f

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResThumb:I

    .line 292
    :goto_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResThumb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResTrack:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->useTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    const-string v2, "common_scroller_base"

    const v3, 0x208003e

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResOverlay:I

    .line 298
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResOverlay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->useOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_1
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollCompleted:Z

    .line 306
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->getSectionsFromIndexer()V

    .line 308
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 309
    new-instance v2, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;-><init>(Lcom/htc/sunny2/widget/gridview/HtcFastScroller;)V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    .line 311
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    .line 312
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 313
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 314
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 315
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    .line 318
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    const v3, -0xe5e5e6

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    .line 321
    iput-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayFading:Z

    .line 323
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mParentSceneNode:Lcom/htc/sunny2/SceneNode;

    .line 324
    iput p4, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOrientation:I

    .line 325
    new-instance v2, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$1;

    const-string v3, "HtcFastScroller"

    invoke-direct {v2, p0, p1, v3, p3}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$1;-><init>(Lcom/htc/sunny2/widget/gridview/HtcFastScroller;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    .line 333
    return-void

    .line 289
    .restart local v1       #res:Landroid/content/res/Resources;
    :cond_0
    const v2, 0x7f020004

    :try_start_1
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResThumb:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 300
    .end local v1           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcFastScroller"

    const-string v3, "[HTCAlbum] [init] fail to init FastScroller"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private onScrollNormal(Lcom/htc/sunny2/widget/gridview/GridView;III)Z
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 629
    sub-int v2, p4, p3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 630
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOrientation:I

    if-ne v2, v1, :cond_1

    .line 631
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->getAdjHostHight()I

    move-result v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, p2

    sub-int v3, p4, p3

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbY:I

    .line 645
    :goto_0
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mChangedBounds:Z

    if-eqz v2, :cond_0

    .line 646
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->resetThumbPos()V

    .line 647
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mChangedBounds:Z

    .line 650
    :cond_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mVisibleItem:I

    if-ne p2, v2, :cond_3

    .line 655
    :goto_1
    return v0

    .line 635
    :cond_1
    if-lez p4, :cond_2

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOldTotalItemCount:I

    if-eq v2, p4, :cond_2

    .line 636
    iput p4, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOldTotalItemCount:I

    .line 637
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getWidth()I

    move-result v2

    mul-int/2addr v2, p3

    div-int/2addr v2, p4

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    .line 638
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 639
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    .line 642
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, p2

    sub-int v3, p4, p3

    div-int/2addr v2, v3

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbX:I

    goto :goto_0

    .line 654
    :cond_3
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mVisibleItem:I

    move v0, v1

    .line 655
    goto :goto_1
.end method

.method private onScrollSmooth(III)Z
    .locals 6
    .parameter "range"
    .parameter "offset"
    .parameter "extent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 664
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getWidth()I

    move-result v3

    if-ne p3, v3, :cond_1

    .line 701
    :cond_0
    :goto_0
    return v1

    .line 667
    :cond_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 668
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 669
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 671
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOrientation:I

    if-ne v3, v2, :cond_4

    .line 672
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->getAdjHostHight()I

    move-result v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, p2

    int-to-float v5, p1

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbY:I

    .line 691
    :goto_1
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mChangedBounds:Z

    if-eqz v3, :cond_2

    .line 692
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->resetThumbPos()V

    .line 693
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mChangedBounds:Z

    .line 696
    :cond_2
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOffset:I

    if-ne p2, v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    if-eq v3, v2, :cond_0

    .line 700
    :cond_3
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOffset:I

    move v1, v2

    .line 701
    goto :goto_0

    .line 676
    :cond_4
    if-lez p3, :cond_6

    .line 677
    move v0, p3

    .line 678
    .local v0, thumbW:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 679
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 681
    :cond_5
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    if-eq v0, v3, :cond_7

    .line 682
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    .line 683
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    .line 689
    .end local v0           #thumbW:I
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, p2

    int-to-float v5, p1

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbX:I

    goto :goto_1

    .line 686
    .restart local v0       #thumbW:I
    :cond_7
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    goto :goto_2
.end method

.method private resetBoundOverlayDrawable()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 209
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayW:I

    .line 210
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    .line 214
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayW:I

    .line 215
    .local v2, oldOverlayW:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    .line 217
    .local v1, oldOverlayH:I
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    if-nez v8, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v6

    .line 221
    :cond_1
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 223
    .local v3, res:Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v7, :cond_6

    move v0, v7

    .line 225
    .local v0, isBig:Z
    :goto_1
    if-ne v7, v0, :cond_7

    .line 227
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    if-eq v8, v9, :cond_2

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    if-ne v8, v9, :cond_4

    .line 228
    :cond_2
    const-string v8, "com.htc.R.dimen.random_access_m"

    invoke-static {v8}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v4

    .line 229
    .local v4, resId:I
    if-eqz v4, :cond_3

    .line 230
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    .line 235
    :cond_3
    const v8, 0x2050006

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayPadding:I

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    .line 238
    .end local v4           #resId:I
    :cond_4
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 239
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 241
    sget v8, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->BIG_OVERLAY_WH:I

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayW:I

    .line 270
    :goto_2
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayW:I

    if-ne v2, v8, :cond_5

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    if-eq v1, v8, :cond_0

    :cond_5
    move v6, v7

    .line 271
    goto :goto_0

    .end local v0           #isBig:Z
    :cond_6
    move v0, v6

    .line 223
    goto :goto_1

    .line 244
    .restart local v0       #isBig:Z
    :cond_7
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    if-eq v8, v9, :cond_8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    if-ne v8, v9, :cond_a

    .line 245
    :cond_8
    const-string v8, "com.htc.R.dimen.random_access_s"

    invoke-static {v8}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v4

    .line 246
    .restart local v4       #resId:I
    if-eqz v4, :cond_9

    .line 247
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    .line 252
    :cond_9
    const v8, 0x2050001

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayPadding:I

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    .line 255
    .end local v4           #resId:I
    :cond_a
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 256
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 258
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 259
    .local v5, textBound:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v6, v10, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 260
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayPadding:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayPadding:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayW:I

    .line 261
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    goto :goto_2
.end method

.method private resetOverlayPos()V
    .locals 6

    .prologue
    .line 182
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getWidth()I

    move-result v0

    .line 186
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v2, v0, 0x2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 188
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 189
    return-void
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    .line 175
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getWidth()I

    move-result v0

    .line 177
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 178
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 179
    return-void
.end method

.method private scrollTo(F)V
    .locals 20
    .parameter "position"

    .prologue
    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/widget/gridview/GridView;->getCount()I

    move-result v2

    .line 744
    .local v2, count:I
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollCompleted:Z

    .line 745
    const/high16 v18, 0x3f80

    int-to-float v0, v2

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x4100

    div-float v6, v18, v19

    .line 746
    .local v6, fThreshold:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 748
    .local v16, sections:[Ljava/lang/Object;
    if-eqz v16, :cond_b

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    .line 749
    move-object/from16 v0, v16

    array-length v8, v0

    .line 750
    .local v8, nSections:I
    int-to-float v0, v8

    move/from16 v18, v0

    mul-float v18, v18, p1

    move/from16 v0, v18

    float-to-int v14, v0

    .line 751
    .local v14, section:I
    if-lt v14, v8, :cond_0

    .line 752
    add-int/lit8 v14, v8, -0x1

    .line 754
    :cond_0
    move v3, v14

    .line 755
    .local v3, exactSection:I
    move v15, v14

    .line 756
    .local v15, sectionIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 763
    .local v7, index:I
    move v9, v2

    .line 764
    .local v9, nextIndex:I
    move v12, v7

    .line 765
    .local v12, prevIndex:I
    move v13, v14

    .line 766
    .local v13, prevSection:I
    add-int/lit8 v11, v14, 0x1

    .line 768
    .local v11, nextSection:I
    add-int/lit8 v18, v8, -0x1

    move/from16 v0, v18

    if-ge v14, v0, :cond_1

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 773
    :cond_1
    if-ne v9, v7, :cond_3

    .line 775
    :cond_2
    if-lez v14, :cond_3

    .line 776
    add-int/lit8 v14, v14, -0x1

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    .line 778
    if-eq v12, v7, :cond_2

    .line 779
    move v13, v14

    .line 780
    move v15, v14

    .line 790
    :cond_3
    add-int/lit8 v10, v11, 0x1

    .line 792
    .local v10, nextNextSection:I
    :goto_0
    if-ge v10, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v9, :cond_4

    .line 793
    add-int/lit8 v10, v10, 0x1

    .line 794
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 799
    :cond_4
    int-to-float v0, v13

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v5, v18, v19

    .line 800
    .local v5, fPrev:F
    int-to-float v0, v11

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v4, v18, v19

    .line 801
    .local v4, fNext:F
    if-ne v13, v3, :cond_a

    sub-float v18, p1, v5

    cmpg-float v18, v18, v6

    if-gez v18, :cond_a

    .line 802
    move v7, v12

    .line 812
    :cond_5
    :goto_1
    add-int/lit8 v18, v2, -0x1

    move/from16 v0, v18

    if-le v7, v0, :cond_6

    add-int/lit8 v7, v2, -0x1

    .line 813
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(I)V

    .line 820
    .end local v3           #exactSection:I
    .end local v4           #fNext:F
    .end local v5           #fPrev:F
    .end local v8           #nSections:I
    .end local v9           #nextIndex:I
    .end local v10           #nextNextSection:I
    .end local v11           #nextSection:I
    .end local v12           #prevIndex:I
    .end local v13           #prevSection:I
    .end local v14           #section:I
    :goto_2
    if-ltz v15, :cond_e

    .line 821
    aget-object v18, v16, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    .line 822
    .local v17, text:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    :cond_7
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_c

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mDrawOverlay:Z

    .line 824
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 828
    if-nez v15, :cond_8

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    if-nez v18, :cond_d

    .line 834
    const/16 v18, 0x1

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .end local v17           #text:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    .line 840
    .restart local v17       #text:Ljava/lang/String;
    :cond_8
    :goto_4
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mDrawOverlay:Z

    .line 846
    .end local v17           #text:Ljava/lang/String;
    :cond_9
    :goto_5
    return-void

    .line 805
    .restart local v3       #exactSection:I
    .restart local v4       #fNext:F
    .restart local v5       #fPrev:F
    .restart local v8       #nSections:I
    .restart local v9       #nextIndex:I
    .restart local v10       #nextNextSection:I
    .restart local v11       #nextSection:I
    .restart local v12       #prevIndex:I
    .restart local v13       #prevSection:I
    .restart local v14       #section:I
    :cond_a
    add-int/lit8 v7, v12, -0x1

    .line 806
    if-gez v7, :cond_5

    .line 807
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 815
    .end local v3           #exactSection:I
    .end local v4           #fNext:F
    .end local v5           #fPrev:F
    .end local v7           #index:I
    .end local v8           #nSections:I
    .end local v9           #nextIndex:I
    .end local v10           #nextNextSection:I
    .end local v11           #nextSection:I
    .end local v12           #prevIndex:I
    .end local v13           #prevSection:I
    .end local v14           #section:I
    .end local v15           #sectionIndex:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v18, v0

    int-to-float v0, v2

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/sunny2/widget/gridview/GridView;->getValidIndexDuringFastScroller(I)I

    move-result v7

    .line 816
    .restart local v7       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(I)V

    .line 817
    const/4 v15, -0x1

    .restart local v15       #sectionIndex:I
    goto/16 :goto_2

    .line 822
    .restart local v17       #text:Ljava/lang/String;
    :cond_c
    const/16 v18, 0x0

    goto :goto_3

    .line 837
    :cond_d
    sget-object v17, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->sSymbol:Ljava/lang/String;

    .end local v17           #text:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    .restart local v17       #text:Ljava/lang/String;
    goto :goto_4

    .line 844
    .end local v17           #text:Ljava/lang/String;
    :cond_e
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mDrawOverlay:Z

    goto :goto_5
.end method

.method private useOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->resetBoundOverlayDrawable()Z

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mChangedBounds:Z

    .line 206
    return-void
.end method

.method private useThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    .line 198
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mChangedBounds:Z

    .line 200
    return-void
.end method

.method private useTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    return-void
.end method


# virtual methods
.method destroy(Lcom/htc/sunny2/SceneNode;)V
    .locals 2
    .parameter "parentSceneNode"

    .prologue
    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThreadHandler;->release()V

    .line 346
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 351
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/SceneNode;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 356
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    .line 357
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 362
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackTexture:Lcom/htc/sunny2/Texture;

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_4

    .line 366
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/SceneNode;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 367
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    .line 368
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunny2/Sprite;

    .line 371
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_5

    .line 372
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 373
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunny2/Texture;

    .line 376
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_6

    .line 377
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/SceneNode;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 378
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    .line 379
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    .line 381
    :cond_6
    return-void
.end method

.method public drawIRT(ILcom/htc/sunny2/SceneNode;)V
    .locals 23
    .parameter "sunnyEnv"
    .parameter "parentSceneNode"

    .prologue
    .line 395
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    if-nez v3, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingRight()I

    move-result v20

    .line 401
    .local v20, viewPaddingRight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingBottom()I

    move-result v19

    .line 402
    .local v19, viewPaddingBottom:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getWidth()I

    move-result v21

    .line 403
    .local v21, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->getAdjHostHight()I

    move-result v18

    .line 405
    .local v18, viewHeight:I
    const/4 v3, 0x1

    move/from16 v0, v21

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    move/from16 v0, v18

    if-lt v0, v3, :cond_0

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    if-nez v3, :cond_4

    .line 410
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 411
    .local v9, bmp:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 413
    .local v11, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunny2/Texture;

    if-nez v3, :cond_14

    .line 416
    invoke-static {v9}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunny2/Texture;

    .line 422
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    if-nez v3, :cond_3

    .line 423
    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/SceneNode;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 426
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 427
    .local v2, layer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 428
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 431
    .end local v2           #layer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    .end local v11           #c:Landroid/graphics/Canvas;
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackTexture:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    if-nez v3, :cond_7

    .line 432
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 434
    .local v17, trackHeight:I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 435
    .restart local v9       #bmp:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 437
    .restart local v11       #c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackTexture:Lcom/htc/sunny2/Texture;

    if-nez v3, :cond_15

    .line 441
    invoke-static {v9}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackTexture:Lcom/htc/sunny2/Texture;

    .line 447
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunny2/Sprite;

    if-nez v3, :cond_6

    .line 448
    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunny2/Sprite;

    .line 449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/SceneNode;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 451
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 452
    .restart local v2       #layer:Lcom/htc/sunny2/Sprite$Layer;
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v21

    neg-int v5, v0

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v17, 0x2

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 453
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getHeight()I

    move-result v5

    sub-int v5, v5, v17

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 458
    .end local v2           #layer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    .end local v11           #c:Landroid/graphics/Canvas;
    .end local v17           #trackHeight:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    if-nez v3, :cond_a

    .line 459
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayW:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 460
    .restart local v9       #bmp:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 462
    .restart local v11       #c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayW:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    if-nez v3, :cond_16

    .line 465
    invoke-static {v9}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    .line 471
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    if-nez v3, :cond_9

    .line 472
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/SceneNode;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 475
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 476
    .restart local v2       #layer:Lcom/htc/sunny2/Sprite$Layer;
    move/from16 v0, v21

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 477
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 479
    div-int/lit8 v3, v18, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v4, v4, 0x2

    sub-int v22, v3, v4

    .line 480
    .local v22, y2:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    div-int/lit8 v4, v21, 0x2

    int-to-float v4, v4

    move/from16 v0, v22

    neg-int v5, v0

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 483
    .end local v2           #layer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    .end local v11           #c:Landroid/graphics/Canvas;
    .end local v22           #y2:I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    if-nez v3, :cond_b

    .line 484
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    .line 487
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    .line 488
    .local v15, scrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;
    const/4 v8, -0x1

    .line 489
    .local v8, alpha:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    .line 490
    invoke-virtual {v15}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;->getAlpha()I

    move-result v8

    .line 491
    const/16 v3, 0x68

    if-ge v8, v3, :cond_c

    .line 492
    mul-int/lit8 v3, v8, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x4350

    div-float/2addr v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/SceneNode;->setAlpha(F)V

    .line 496
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_e

    .line 497
    :cond_d
    const/high16 v3, 0x3f80

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/SceneNode;->setAlpha(F)V

    .line 499
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    .line 500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int v4, v21, v4

    sub-int v4, v4, v20

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbY:I

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 507
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 509
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mDrawOverlay:Z

    if-nez v3, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_13

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayFading:Z

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mDrawOverlay:Z

    if-eqz v3, :cond_13

    .line 511
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 514
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->resetBoundOverlayDrawable()Z

    move-result v12

    .line 516
    .local v12, isBoundChange:Z
    const/4 v10, 0x0

    .line 517
    .local v10, bounds:Landroid/graphics/Rect;
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 519
    .local v16, textbounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 520
    if-nez v10, :cond_13

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayW:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 524
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayW:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 525
    .restart local v9       #bmp:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 526
    .restart local v11       #c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 528
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayPadding:I

    int-to-float v13, v3

    .line 529
    .local v13, px:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    sub-int/2addr v3, v4

    int-to-float v14, v3

    .line 530
    .local v14, py:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    .line 531
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayW:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    .line 534
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    const/high16 v4, 0x3f80

    sub-float v4, v13, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    int-to-float v5, v5

    add-float/2addr v5, v14

    const/high16 v6, 0x3f80

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    int-to-float v4, v4

    add-float/2addr v4, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v3, v13, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3, v9}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayW:I

    int-to-float v4, v4

    move/from16 v0, v21

    int-to-float v5, v0

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    .line 540
    const/4 v3, 0x1

    if-ne v3, v12, :cond_12

    .line 541
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 542
    .restart local v2       #layer:Lcom/htc/sunny2/Sprite$Layer;
    move/from16 v0, v21

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 544
    div-int/lit8 v3, v18, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v4, v4, 0x2

    sub-int v22, v3, v4

    .line 545
    .restart local v22       #y2:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    div-int/lit8 v4, v21, 0x2

    int-to-float v4, v4

    move/from16 v0, v22

    neg-int v5, v0

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 548
    .end local v2           #layer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v22           #y2:I
    :cond_12
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 554
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    .end local v10           #bounds:Landroid/graphics/Rect;
    .end local v11           #c:Landroid/graphics/Canvas;
    .end local v12           #isBoundChange:Z
    .end local v13           #px:F
    .end local v14           #py:F
    .end local v16           #textbounds:Landroid/graphics/Rect;
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 555
    if-nez v8, :cond_18

    .line 556
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setState(I)V

    goto/16 :goto_0

    .line 419
    .end local v8           #alpha:I
    .end local v15           #scrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;
    .restart local v9       #bmp:Landroid/graphics/Bitmap;
    .restart local v11       #c:Landroid/graphics/Canvas;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3, v9}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 444
    .restart local v17       #trackHeight:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mTrackTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3, v9}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 468
    .end local v17           #trackHeight:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3, v9}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 503
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    .end local v11           #c:Landroid/graphics/Canvas;
    .restart local v8       #alpha:I
    .restart local v15       #scrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbX:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    goto/16 :goto_4

    .line 558
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const v4, -0xffffff

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/RenderThreadHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const v4, -0xffffff

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessageDelayed(II)V

    goto/16 :goto_0
.end method

.method getAdjHostHight()I
    .locals 3

    .prologue
    .line 982
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getHeight()I

    move-result v0

    .line 983
    .local v0, h:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 985
    .end local v0           #h:I
    :goto_0
    return v0

    .restart local v0       #h:I
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingBottom()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method getAdjHostWidth()I
    .locals 3

    .prologue
    .line 989
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getWidth()I

    move-result v0

    .line 990
    .local v0, w:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 992
    .end local v0           #w:I
    :goto_0
    return v0

    .restart local v0       #w:I
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    if-eqz v0, :cond_0

    .line 715
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->getSectionsFromIndexer()V

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    return v0
.end method

.method isPointInside(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 963
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOrientation:I

    if-ne v5, v3, :cond_1

    .line 964
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbY:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    div-int/lit8 v6, v6, 0x2

    add-int v0, v5, v6

    .line 965
    .local v0, bound:I
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x32

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    add-int/lit8 v5, v0, -0x19

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    add-int/lit8 v5, v0, 0x19

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 977
    .end local v0           #bound:I
    :goto_0
    return v3

    .restart local v0       #bound:I
    :cond_0
    move v3, v4

    .line 965
    goto :goto_0

    .line 969
    .end local v0           #bound:I
    :cond_1
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbX:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    div-int/lit8 v6, v6, 0x2

    add-int v1, v5, v6

    .line 970
    .local v1, boundX:I
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x14

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_2

    add-int/lit8 v5, v1, -0x19

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_2

    add-int/lit8 v5, v1, 0x19

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_2

    move v2, v3

    .local v2, isInside:Z
    :goto_1
    move v3, v2

    .line 977
    goto :goto_0

    .end local v2           #isInside:Z
    :cond_2
    move v2, v4

    .line 970
    goto :goto_1
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 856
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 858
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setState(I)V

    .line 860
    const/4 v0, 0x1

    .line 863
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onLayoutOrientationChange(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "orientation"

    .prologue
    .line 567
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 569
    .local v1, res:Landroid/content/res/Resources;
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 570
    const v2, 0x208003f

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResThumb:I

    .line 576
    :goto_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResThumb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 577
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResTrack:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->useTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResOverlay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->useOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOrientation:I

    .line 584
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_1
    return-void

    .line 573
    .restart local v1       #res:Landroid/content/res/Resources;
    :cond_0
    const v2, 0x7f020004

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResThumb:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 581
    .end local v1           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 582
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcFastScroller"

    const-string v3, "[HTCAlbum] [init] fail to init FastScroller"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method onScroll(Lcom/htc/sunny2/widget/gridview/GridView;III)V
    .locals 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v4, 0x1

    .line 606
    const/4 v0, 0x0

    .line 608
    .local v0, reDraw:Z
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOrientation:I

    if-ne v1, v4, :cond_1

    .line 609
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onScrollNormal(Lcom/htc/sunny2/widget/gridview/GridView;III)Z

    move-result v0

    .line 617
    :goto_0
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollCompleted:Z

    .line 618
    if-nez v0, :cond_2

    .line 625
    :cond_0
    :goto_1
    return-void

    .line 612
    :cond_1
    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridView;->computeHorizontalScrollOffset()I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridView;->computeHorizontalScrollExtent()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onScrollSmooth(III)Z

    move-result v0

    goto :goto_0

    .line 621
    :cond_2
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 622
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setState(I)V

    .line 623
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    const-wide/16 v3, 0x320

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunny2/RenderThreadHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1
.end method

.method onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 587
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    .line 588
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayW:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 602
    :cond_1
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "me"

    .prologue
    .line 868
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 869
    .local v2, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    const/4 v5, 0x1

    .line 876
    .local v5, is2Point:Z
    :goto_0
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    if-nez v11, :cond_1

    if-nez v5, :cond_1

    .line 877
    const/4 v11, 0x0

    .line 958
    :goto_1
    return v11

    .line 869
    .end local v5           #is2Point:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 881
    .restart local v5       #is2Point:Z
    :cond_1
    if-eqz v5, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    add-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float v0, v11, v12

    .line 882
    .local v0, X:F
    :goto_2
    if-eqz v5, :cond_8

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    add-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float v1, v11, v12

    .line 884
    .local v1, Y:F
    :goto_3
    if-eqz v2, :cond_2

    const/16 v11, 0x105

    if-ne v2, v11, :cond_9

    .line 885
    :cond_2
    if-nez v5, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->isPointInside(FF)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 886
    :cond_3
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    if-nez v11, :cond_4

    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setState(I)V

    .line 887
    :cond_4
    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setState(I)V

    .line 888
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    if-nez v11, :cond_5

    iget-boolean v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionsDirty:Z

    if-eqz v11, :cond_6

    .line 889
    :cond_5
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->getSectionsFromIndexer()V

    .line 892
    :cond_6
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->cancelFling()V

    .line 893
    const/4 v11, 0x1

    goto :goto_1

    .line 881
    .end local v0           #X:F
    .end local v1           #Y:F
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_2

    .line 882
    .restart local v0       #X:F
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_3

    .line 895
    .restart local v1       #Y:F
    :cond_9
    const/4 v11, 0x1

    if-ne v2, v11, :cond_a

    .line 896
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_14

    .line 897
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayFading:Z

    .line 898
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setState(I)V

    .line 899
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    .line 900
    .local v4, handler:Lcom/htc/sunny2/RenderThreadHandler;
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    invoke-virtual {v4, v11}, Lcom/htc/sunny2/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 901
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    const-wide/16 v12, 0x320

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/RenderThreadHandler;->postDelayed(Ljava/lang/Runnable;J)V

    .line 902
    const/4 v11, 0x1

    goto :goto_1

    .line 904
    .end local v4           #handler:Lcom/htc/sunny2/RenderThreadHandler;
    :cond_a
    const/4 v11, 0x2

    if-ne v2, v11, :cond_13

    .line 905
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_14

    .line 907
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f

    .line 908
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->getAdjHostHight()I

    move-result v9

    .line 909
    .local v9, viewHeight:I
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v8

    .line 911
    .local v8, padding:I
    float-to-int v11, v1

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    sub-int/2addr v11, v12

    add-int/lit8 v7, v11, 0xa

    .line 912
    .local v7, newThumbY:I
    add-int/lit8 v11, v8, 0x0

    if-ge v7, v11, :cond_c

    .line 913
    add-int/lit8 v7, v8, 0x0

    .line 917
    :cond_b
    :goto_4
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbY:I

    sub-int/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_d

    .line 918
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 914
    :cond_c
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    add-int/2addr v11, v7

    add-int v12, v9, v8

    if-le v11, v12, :cond_b

    .line 915
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    sub-int v11, v9, v11

    add-int v7, v11, v8

    goto :goto_4

    .line 920
    :cond_d
    iput v7, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbY:I

    .line 922
    iget-boolean v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollCompleted:Z

    if-eqz v11, :cond_e

    .line 923
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbY:I

    sub-int/2addr v11, v8

    int-to-float v11, v11

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    sub-int v12, v9, v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-direct {p0, v11}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->scrollTo(F)V

    .line 944
    .end local v7           #newThumbY:I
    .end local v8           #padding:I
    .end local v9           #viewHeight:I
    :cond_e
    :goto_5
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const v12, -0xffffff

    invoke-virtual {v11, v12}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(I)V

    .line 945
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 927
    :cond_f
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridView;->getWidth()I

    move-result v10

    .line 929
    .local v10, viewWidth:I
    float-to-int v11, v0

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int/2addr v11, v12

    add-int/lit8 v6, v11, 0xa

    .line 930
    .local v6, newThumbX:I
    if-gez v6, :cond_11

    .line 931
    const/4 v6, 0x0

    .line 935
    :cond_10
    :goto_6
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbX:I

    sub-int/2addr v11, v6

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_12

    .line 936
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 932
    :cond_11
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    add-int/2addr v11, v6

    if-le v11, v10, :cond_10

    .line 933
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int v6, v10, v11

    goto :goto_6

    .line 938
    :cond_12
    iput v6, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbX:I

    .line 939
    iget-boolean v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollCompleted:Z

    if-eqz v11, :cond_e

    .line 940
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbX:I

    int-to-float v11, v11

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int v12, v10, v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-direct {p0, v11}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->scrollTo(F)V

    goto :goto_5

    .line 947
    .end local v6           #newThumbX:I
    .end local v10           #viewWidth:I
    :cond_13
    const/4 v11, 0x3

    if-ne v2, v11, :cond_14

    .line 948
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 949
    .local v3, fingerCount:I
    iget v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_14

    const/4 v11, 0x2

    if-lt v3, v11, :cond_14

    .line 950
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayFading:Z

    .line 951
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setState(I)V

    .line 952
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    .line 953
    .restart local v4       #handler:Lcom/htc/sunny2/RenderThreadHandler;
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    invoke-virtual {v4, v11}, Lcom/htc/sunny2/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 954
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    const-wide/16 v12, 0x320

    invoke-virtual {v4, v11, v12, v13}, Lcom/htc/sunny2/RenderThreadHandler;->postDelayed(Ljava/lang/Runnable;J)V

    .line 955
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 958
    .end local v3           #fingerCount:I
    .end local v4           #handler:Lcom/htc/sunny2/RenderThreadHandler;
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method public setSectionsDirty()V
    .locals 1

    .prologue
    .line 706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionsDirty:Z

    .line 707
    return-void
.end method

.method public setState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 138
    packed-switch p1, :pswitch_data_0

    .line 166
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    .line 167
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const v1, -0xffffff

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(I)V

    .line 168
    return-void

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayFading:Z

    goto :goto_0

    .line 145
    :pswitch_2
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->resetThumbPos()V

    .line 150
    :cond_0
    :pswitch_3
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->resetOverlayPos()V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method stop()V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setState(I)V

    .line 337
    return-void
.end method
