.class public Lcom/htc/music/widget/gridview/MusicGridViewItem;
.super Lcom/htc/sunny2/widget/gridview/GridViewItem;
.source "MusicGridViewItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;,
        Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;,
        Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;
    }
.end annotation


# static fields
.field protected static final FOLDER_LAYER_COUNT:I = 0x2

.field protected static final FOLDER_LAYER_COVER:I = 0x1

.field protected static final FOLDER_LAYER_THUMB:I = 0x0

.field private static final GAP_BK_TEXT:I = 0x2

.field protected static final SPRITE_LAYER_COUNT:I = 0x2

.field protected static final SPRITE_LAYER_FOLDER_NAME:I = 0x0

.field protected static final SPRITE_LAYER_SELECTOR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[MusicGridViewItem]"


# instance fields
.field private mBGTexture:Lcom/htc/sunny2/Texture;

.field private mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mBkSprite:Lcom/htc/sunny2/Sprite;

.field private mChildParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

.field private mDataIndex:I

.field private mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

.field private mFolderSprite:[Lcom/htc/sunny2/Sprite;

.field private mHeight:I

.field private mIsBinded:Z

.field private mNumFolderImage:I

.field private mOldTime:I

.field private mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

.field private mShareTextureKey:Ljava/lang/String;

.field private mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

.field private mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mTextViewBind:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;

.field private mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mViewContainer:Landroid/view/View;

.field private mViewTextureContainer:Lcom/htc/sunny2/Texture;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"
    .parameter "parentParams"

    .prologue
    const/4 v4, 0x0

    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"
    .parameter "parentParams"
    .parameter "childParams"

    .prologue
    .line 156
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "sContext"
    .parameter "parentParams"
    .parameter "childParams"
    .parameter "prototypeKey"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mDataIndex:I

    .line 416
    iput-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    .line 417
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mOldTime:I

    .line 165
    if-nez p3, :cond_0

    .line 187
    :goto_0
    return-void

    .line 166
    :cond_0
    new-instance v0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setItemAnimation(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;)V

    .line 167
    iput-object p3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    .line 168
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 170
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 171
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 172
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-virtual {v0, v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mWidth:I

    .line 173
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-virtual {v0, v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getHeight(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mHeight:I

    .line 174
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getNumFolderImage()I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    .line 176
    if-eqz p4, :cond_1

    .line 177
    iput-object p4, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mChildParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    .line 181
    :cond_1
    if-nez p5, :cond_2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MusicGridViewItem]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    goto :goto_0

    .line 185
    :cond_2
    iput-object p5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"
    .parameter "parentParams"
    .parameter "prototypeKey"

    .prologue
    .line 160
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/widget/gridview/MusicGridViewItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createSAnimationController(Lcom/htc/sunny2/view/SView;I)Lcom/htc/sunny2/view/animation/SAnimationController;
    .locals 6
    .parameter "view"
    .parameter "delayTime"

    .prologue
    const/4 v5, 0x0

    .line 692
    new-instance v1, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v1}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 694
    .local v1, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    invoke-virtual {p1}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v2

    .line 696
    .local v2, pos:Lcom/htc/sunny2/view/Vector3F;
    sget-object v3, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;->DURATION_FOLDER_INTRO_ITEM_SCALE_BEGIN:Lcom/htc/sunny2/view/Vector3F;

    sget-object v4, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;->DURATION_FOLDER_INTRO_ITEM_SCALE_END:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 699
    invoke-virtual {p1}, Lcom/htc/sunny2/view/SView;->getAlpha()F

    move-result v0

    .line 700
    .local v0, alpha:F
    const/high16 v3, 0x437f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v1, v5, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 702
    int-to-long v3, p2

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 704
    invoke-virtual {v1, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 705
    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 706
    sget-object v3, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 707
    new-instance v3, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;

    invoke-direct {v3, p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewItem$1;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewItem;Lcom/htc/sunny2/view/SView;)V

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 723
    return-object v1
.end method

.method private setItemView(ILcom/htc/sunny2/IMediaData;I)V
    .locals 6
    .parameter "dataIndex"
    .parameter "mediaData"
    .parameter "level"

    .prologue
    const/4 v5, 0x0

    .line 421
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v1, v3, v5

    .line 422
    .local v1, s:Lcom/htc/sunny2/Sprite;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 423
    .local v0, layer:Lcom/htc/sunny2/Sprite$Layer;
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    invoke-interface {v3, p1, p2, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;->isUseExtraBackgroundImage(ILcom/htc/sunny2/IMediaData;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 424
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    const-string v4, "NAME_TEXTURE_BACKGROUND_EXTRA"

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 425
    .local v2, texture:Lcom/htc/sunny2/Texture;
    invoke-virtual {v0, v5, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 429
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextView(ILcom/htc/sunny2/IMediaData;)V

    .line 430
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    invoke-interface {v3, p1, p2, p3}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;->getThumbnailImage(ILcom/htc/sunny2/IMediaData;I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 431
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    if-nez v2, :cond_0

    .line 432
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    invoke-interface {v3, p1, p2, p3}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;->isUseExtraThumbnailImage(ILcom/htc/sunny2/IMediaData;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 433
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    const-string v4, "NAME_TEXTURE_THUMBNAIL_EXTRA"

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 438
    :cond_0
    :goto_1
    invoke-virtual {p0, v2, p3}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setThumbnail(Lcom/htc/sunny2/Texture;I)V

    .line 439
    return-void

    .line 427
    .end local v2           #texture:Lcom/htc/sunny2/Texture;
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0, v5, v3}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    goto :goto_0

    .line 435
    .restart local v2       #texture:Lcom/htc/sunny2/Texture;
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    const-string v4, "NAME_TEXTURE_THUMBNAIL"

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v2

    goto :goto_1
.end method

.method private setTextView(ILcom/htc/sunny2/IMediaData;)V
    .locals 13
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    const/high16 v5, 0x4000

    const/4 v12, 0x0

    .line 348
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewBind:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;

    if-nez v1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1, v12}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 353
    .local v0, layer:Lcom/htc/sunny2/Sprite$Layer;
    const/4 v6, 0x0

    .line 354
    .local v6, container:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewBind:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    invoke-interface {v1, p1, p2, v2}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;->textViewBinding(ILcom/htc/sunny2/IMediaData;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 356
    if-eqz v6, :cond_0

    .line 357
    iput-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    .line 361
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    if-lez v1, :cond_2

    .line 362
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 363
    .local v9, measureW:I
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 364
    .local v8, measureH:I
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    invoke-virtual {v1, v9, v8}, Landroid/view/View;->measure(II)V

    .line 365
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    invoke-virtual {v1, v12, v12, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 366
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v10, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 378
    .local v10, textViewWidth:I
    :goto_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 379
    .local v7, height:I
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mHeight:I

    sub-int v1, v7, v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float v4, v1, v2

    .line 380
    .local v4, posY:F
    const/4 v3, 0x0

    .line 382
    .local v3, posX:F
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v4, v1

    .line 383
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    .line 385
    int-to-float v1, v10

    int-to-float v2, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 391
    iget-object v11, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewTextureContainer:Lcom/htc/sunny2/Texture;

    .line 392
    .local v11, texture:Lcom/htc/sunny2/Texture;
    if-nez v11, :cond_3

    .line 393
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    invoke-static {v1}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunny2/Texture;

    move-result-object v11

    .line 394
    invoke-virtual {v0, v12, v11}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 395
    iput-object v11, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewTextureContainer:Lcom/htc/sunny2/Texture;

    .line 406
    :goto_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    .line 368
    .end local v3           #posX:F
    .end local v4           #posY:F
    .end local v7           #height:I
    .end local v8           #measureH:I
    .end local v9           #measureW:I
    .end local v10           #textViewWidth:I
    .end local v11           #texture:Lcom/htc/sunny2/Texture;
    :cond_2
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mWidth:I

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 369
    .restart local v9       #measureW:I
    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 370
    .restart local v8       #measureH:I
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    invoke-virtual {v1, v9, v8}, Landroid/view/View;->measure(II)V

    .line 371
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    iget v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mWidth:I

    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v1, v12, v12, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 372
    iget v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mWidth:I

    .restart local v10       #textViewWidth:I
    goto :goto_1

    .line 398
    .restart local v3       #posX:F
    .restart local v4       #posY:F
    .restart local v7       #height:I
    .restart local v11       #texture:Lcom/htc/sunny2/Texture;
    :cond_3
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    invoke-virtual {v11, v1}, Lcom/htc/sunny2/Texture;->setView(Landroid/view/View;)V

    goto :goto_2
.end method


# virtual methods
.method public bindMediaData(ILcom/htc/sunny2/IMediaData;)V
    .locals 7
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 443
    if-nez p2, :cond_1

    .line 445
    const-string v3, "[MusicGridViewItem]"

    const-string v4, "MediaData is null at bindMediaData"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_0
    return-void

    .line 449
    :cond_1
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mDataIndex:I

    .line 451
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 452
    .local v2, layer:Lcom/htc/sunny2/Sprite$Layer;
    invoke-interface {p2}, Lcom/htc/sunny2/IMediaData;->isSelected()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 453
    invoke-interface {p2}, Lcom/htc/sunny2/IMediaData;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 454
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v3, v3, v6

    const v4, 0x3ecccccd

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->setAlpha(F)V

    .line 461
    :goto_0
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    if-eqz v3, :cond_0

    .line 468
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    if-ge v1, v3, :cond_0

    .line 471
    iget-boolean v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    invoke-interface {v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;->isGridViewInitFinish()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p2}, Lcom/htc/sunny2/IMediaData;->isItemDataReady()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Lcom/htc/sunny2/IMediaData;->isReadyToDecode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 473
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setItemView(ILcom/htc/sunny2/IMediaData;I)V

    .line 475
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->isVisible()Z

    move-result v3

    if-nez v3, :cond_4

    .line 476
    invoke-virtual {p0, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setVisibility(Z)V

    .line 477
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    invoke-interface {v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;->isGridViewInitFinish()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    if-nez v3, :cond_3

    .line 478
    iput-boolean v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    .line 480
    :cond_3
    iget-boolean v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    if-nez v3, :cond_4

    .line 481
    invoke-direct {p0, p0, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->createSAnimationController(Lcom/htc/sunny2/view/SView;I)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 482
    iput-boolean v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    .line 468
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 456
    .end local v1           #i:I
    :cond_5
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v3, v3, v6

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->setAlpha(F)V

    goto :goto_0

    .line 486
    .restart local v1       #i:I
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v0, v3

    .line 487
    .local v0, currentTime:I
    iget v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mOldTime:I

    if-eqz v3, :cond_8

    .line 488
    iget v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mOldTime:I

    sub-int v3, v0, v3

    const/16 v4, 0x1f4

    if-le v3, v4, :cond_7

    .line 489
    iput-boolean v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    .line 490
    invoke-direct {p0, p1, p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setItemView(ILcom/htc/sunny2/IMediaData;I)V

    .line 491
    invoke-virtual {p0, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setVisibility(Z)V

    goto :goto_2

    .line 492
    :cond_7
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 493
    invoke-virtual {p0, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setVisibility(Z)V

    goto :goto_2

    .line 495
    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 496
    invoke-virtual {p0, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setVisibility(Z)V

    .line 497
    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mOldTime:I

    goto :goto_2
.end method

.method public create()Lcom/htc/sunny2/ViewItem;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->create(Z)Lcom/htc/sunny2/ViewItem;

    move-result-object v0

    return-object v0
.end method

.method public create(Z)Lcom/htc/sunny2/ViewItem;
    .locals 6
    .parameter "isChild"

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mChildParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->clone()Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "child[MusicGridViewItem]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v5}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Ljava/lang/String;)V

    .line 199
    .local v0, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mIsBinded:Z

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    iput-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    .line 204
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewBind:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;

    iput-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewBind:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;

    .line 205
    return-object v0

    .line 201
    .end local v0           #gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    :cond_0
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mParentParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->clone()Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .restart local v0       #gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    goto :goto_0
.end method

.method public createResource()V
    .locals 17

    .prologue
    .line 215
    invoke-super/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->createResource()V

    .line 216
    const-string v2, "[MusicGridViewItem]"

    const-string v3, "createResource+"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v2, "[MusicGridViewItem]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mShareTextureKey = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    if-nez v2, :cond_0

    .line 221
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v6, v7}, Lcom/htc/music/widget/gridview/MusicGridViewItem$FolderViewSharedTexture;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewItem;Landroid/content/Context;Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    const/4 v3, 0x0

    iput v3, v2, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    invoke-static {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setSharedTexture(Ljava/lang/String;Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;)V

    .line 224
    const-string v2, "[MusicGridViewItem]"

    const-string v3, "mSharedTexture == null, create new one"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    iget v3, v2, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    const-string v3, "NAME_TEXTURE_BACKGROUND"

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBGTexture:Lcom/htc/sunny2/Texture;

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    if-nez v2, :cond_1

    .line 230
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 233
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    if-nez v2, :cond_2

    .line 236
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    new-array v2, v2, [Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    .line 237
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    if-ge v13, v2, :cond_2

    .line 238
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v14

    .line 239
    .local v14, s:Lcom/htc/sunny2/Sprite;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aput-object v14, v2, v13

    .line 240
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 243
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mHeight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v3, v3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v5, v2

    .line 244
    .local v5, posY:F
    const/4 v4, 0x0

    .line 245
    .local v4, posX:F
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v5, v3}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    int-to-float v5, v2

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    neg-int v2, v2

    int-to-float v4, v2

    .line 248
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v1

    .line 249
    .local v1, layer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v3, v3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    int-to-float v5, v2

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    neg-int v2, v2

    int-to-float v4, v2

    .line 262
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v1

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mThumbnailParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v3, v3, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 264
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 237
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 271
    .end local v1           #layer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v4           #posX:F
    .end local v5           #posY:F
    .end local v13           #i:I
    .end local v14           #s:Lcom/htc/sunny2/Sprite;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v1

    .line 275
    .restart local v1       #layer:Lcom/htc/sunny2/Sprite$Layer;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 276
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v1

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mSharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    const-string v3, "NAME_TEXTUREE_SELECTED"

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v15

    .line 281
    .local v15, texture:Lcom/htc/sunny2/Texture;
    if-eqz v15, :cond_3

    .line 282
    invoke-virtual {v15}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v2

    int-to-float v12, v2

    .line 283
    .local v12, height:F
    invoke-virtual {v15}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v2

    int-to-float v0, v2

    move/from16 v16, v0

    .line 284
    .local v16, width:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextLayoutParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v5, v2, v3

    .line 285
    .restart local v5       #posY:F
    const/4 v4, 0x0

    .line 286
    .restart local v4       #posX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    int-to-float v2, v2

    add-float/2addr v5, v2

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBackgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    int-to-float v2, v2

    sub-float/2addr v4, v2

    .line 288
    const v2, 0x3f666666

    mul-float v2, v2, v16

    const v3, 0x3f666666

    mul-float/2addr v3, v12

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 289
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v15}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 290
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 293
    .end local v4           #posX:F
    .end local v5           #posY:F
    .end local v12           #height:F
    .end local v16           #width:F
    :cond_3
    const-string v2, "[MusicGridViewItem]"

    const-string v3, "createResource-"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public freeResource()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 300
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewTextureContainer:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_0

    .line 301
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewTextureContainer:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    .line 302
    iput-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewTextureContainer:Lcom/htc/sunny2/Texture;

    .line 305
    :cond_0
    iput-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mViewContainer:Landroid/view/View;

    .line 309
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    if-eqz v3, :cond_2

    .line 310
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    if-ge v0, v3, :cond_1

    .line 311
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v1, v3, v0

    .line 312
    .local v1, s:Lcom/htc/sunny2/Sprite;
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 313
    invoke-virtual {v1}, Lcom/htc/sunny2/Sprite;->release()V

    .line 314
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aput-object v4, v3, v0

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    .end local v1           #s:Lcom/htc/sunny2/Sprite;
    :cond_1
    iput-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    .line 319
    .end local v0           #i:I
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v3, :cond_3

    .line 320
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 321
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunny2/Sprite;->release()V

    .line 322
    iput-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mBkSprite:Lcom/htc/sunny2/Sprite;

    .line 325
    :cond_3
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    move-result-object v2

    .line 326
    .local v2, sharedTexture:Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
    if-eqz v2, :cond_4

    .line 327
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 328
    iget v3, v2, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    if-nez v3, :cond_4

    .line 329
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;

    .line 330
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->release()V

    .line 334
    :cond_4
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->freeResource()V

    .line 335
    return-void
.end method

.method public getFolderItemCount()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mWidth:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 339
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mWidth:I

    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setMeasuredDimension(II)V

    .line 340
    return-void
.end method

.method public setBackground(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 677
    return-void
.end method

.method public setContentGetter(Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemContentGetter;)V
    .locals 0
    .parameter "contentGetter"

    .prologue
    .line 689
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 522
    return-void
.end method

.method public setTextViewBindListener(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;)V
    .locals 0
    .parameter "binder"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mTextViewBind:Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;

    .line 344
    return-void
.end method

.method public setThumbTexture(Lcom/htc/sunny2/Texture;)V
    .locals 0
    .parameter "texture"

    .prologue
    .line 683
    return-void
.end method

.method public setThumbnail(Lcom/htc/sunny2/Texture;)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 529
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setThumbnail(Lcom/htc/sunny2/Texture;I)V

    .line 530
    return-void
.end method

.method public setThumbnail(Lcom/htc/sunny2/Texture;I)V
    .locals 5
    .parameter "texture"
    .parameter "idx"

    .prologue
    const/4 v4, 0x0

    .line 533
    add-int/lit8 v2, p2, 0x1

    iget v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    if-le v2, v3, :cond_0

    .line 534
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use incorrect index: idx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNumFolderImage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mNumFolderImage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 536
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderSprite:[Lcom/htc/sunny2/Sprite;

    aget-object v1, v2, p2

    .line 538
    .local v1, s:Lcom/htc/sunny2/Sprite;
    invoke-virtual {v1, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 539
    .local v0, layer:Lcom/htc/sunny2/Sprite$Layer;
    invoke-virtual {v0, v4, p1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 540
    if-nez p1, :cond_1

    .line 541
    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 547
    :goto_0
    return-void

    .line 544
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V
    .locals 0
    .parameter "getter"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mFolderImageGetter:Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;

    .line 210
    return-void
.end method

.method public unbindMediaData()V
    .locals 1

    .prologue
    .line 506
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItem;->mDataIndex:I

    .line 507
    return-void
.end method
