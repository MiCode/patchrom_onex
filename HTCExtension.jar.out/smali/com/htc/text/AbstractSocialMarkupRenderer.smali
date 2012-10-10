.class public abstract Lcom/htc/text/AbstractSocialMarkupRenderer;
.super Ljava/lang/Object;
.source "AbstractSocialMarkupRenderer.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;,
        Lcom/htc/text/AbstractSocialMarkupRenderer$Text2;,
        Lcom/htc/text/AbstractSocialMarkupRenderer$AutoLink;
    }
.end annotation


# static fields
.field private static final BLANK_CHAR:Ljava/lang/String; = " "

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final NEW_LINE_CHAR:Ljava/lang/String; = "\n"

.field public static NOCOLOR:I = 0x0

.field private static final SPANNABLE_PLACE_HOLDER:Ljava/lang/String; = "\ufffc"

.field private static sBitmapMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sBoldStyleSpan:Landroid/text/style/StyleSpan;

.field private static sDrawableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPlurkQualifierSpanMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/htc/text/style/PlurkQualifierSpan;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDefaultImage:Landroid/graphics/Bitmap;

.field private mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mImageGetter:Lcom/htc/text/HtcHtml$ImageGetter;

.field private mQueryKey:Ljava/lang/String;

.field private mReader:Lorg/xml/sax/XMLReader;

.field private mSource:Ljava/lang/String;

.field private mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    const v0, 0x7162534

    sput v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    .line 56
    const-class v0, Lcom/htc/text/AbstractSocialMarkupRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->LOG_TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->sBoldStyleSpan:Landroid/text/style/StyleSpan;

    .line 62
    sput-object v2, Lcom/htc/text/AbstractSocialMarkupRenderer;->sPlurkQualifierSpanMap:Ljava/util/Map;

    .line 63
    sput-object v2, Lcom/htc/text/AbstractSocialMarkupRenderer;->sDrawableMap:Ljava/util/Map;

    .line 64
    sput-object v2, Lcom/htc/text/AbstractSocialMarkupRenderer;->sBitmapMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method private endAutoLink(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;)V
    .locals 7
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, kind:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 380
    .local v0, len:I
    invoke-static {p1, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 381
    .local v1, obj:Ljava/lang/Object;
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 383
    .local v5, where:I
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 385
    if-eq v5, v0, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isSpanClickable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 387
    invoke-virtual {p1, v5, v0}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 388
    .local v2, string:Ljava/lang/CharSequence;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 389
    .local v3, temp:Landroid/text/SpannableStringBuilder;
    const/4 v6, 0x1

    invoke-static {v3, v6}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 390
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 391
    .local v4, tl:I
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 393
    .end local v2           #string:Ljava/lang/CharSequence;
    .end local v3           #temp:Landroid/text/SpannableStringBuilder;
    .end local v4           #tl:I
    :cond_0
    const-string v6, " "

    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 395
    :cond_1
    return-void
.end method

.method private endLink(Landroid/text/SpannableStringBuilder;I)V
    .locals 8
    .parameter "text"
    .parameter "size"

    .prologue
    const/16 v7, 0x21

    .line 357
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 358
    .local v1, len:I
    const-class v5, Lcom/htc/text/HtcHtmlToSpannedConverter$Href;

    invoke-static {p1, v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 359
    .local v2, obj:Ljava/lang/Object;
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .local v4, where:I
    move-object v0, v2

    .line 360
    check-cast v0, Lcom/htc/text/HtcHtmlToSpannedConverter$Href;

    .line 361
    .local v0, h:Lcom/htc/text/HtcHtmlToSpannedConverter$Href;
    iget-object v3, v0, Lcom/htc/text/HtcHtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    .line 363
    .local v3, uri:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 365
    if-eq v4, v1, :cond_2

    if-eqz v3, :cond_2

    .line 366
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isSpanClickable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 367
    new-instance v5, Lcom/htc/text/style/URISpan;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Lcom/htc/text/style/URISpan;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v5, v4, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 370
    :cond_0
    if-lez p2, :cond_1

    .line 371
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v1, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 374
    :cond_1
    const-string v5, " "

    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 376
    :cond_2
    return-void
.end method

.method private endText2(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;)V
    .locals 6
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, kind:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v5, 0x21

    .line 584
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 585
    .local v0, len:I
    invoke-static {p1, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 586
    .local v1, obj:Ljava/lang/Object;
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 588
    .local v2, where:I
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 590
    if-eq v2, v0, :cond_1

    .line 591
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontSizeInPixel()I

    move-result v3

    if-lez v3, :cond_0

    .line 592
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontSizeInPixel()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1, v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 595
    :cond_0
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontColor()I

    move-result v3

    sget v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq v3, v4, :cond_1

    .line 596
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontColor()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 600
    :cond_1
    return-void
.end method

.method private static getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 643
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getBitmapWithConfig(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bitmap"
    .parameter "config"

    .prologue
    const/4 v7, 0x0

    .line 724
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 725
    .local v0, c:Landroid/graphics/Bitmap$Config;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-object p0

    .line 728
    :cond_1
    move-object v4, p0

    .line 729
    .local v4, temp_bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 731
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 732
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 733
    .local v2, paint:Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 734
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 737
    .local v3, rect:Landroid/graphics/Rect;
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 738
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private static getCombinedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "background"
    .parameter "foreground"

    .prologue
    const/4 v8, 0x0

    .line 679
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    move-object p1, v8

    .line 701
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 681
    .restart local p1
    :cond_1
    if-eqz p0, :cond_0

    .line 683
    if-nez p1, :cond_2

    move-object p1, p0

    .line 684
    goto :goto_0

    .line 686
    :cond_2
    const/4 v3, 0x0

    .line 687
    .local v3, combined:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-le v9, v10, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 689
    .local v7, width:I
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-le v9, v10, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 691
    .local v6, height:I
    :goto_2
    invoke-static {}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-static {v7, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 693
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 694
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v0, v9, 0x2

    .line 695
    .local v0, backHoriShift:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int v9, v6, v9

    div-int/lit8 v1, v9, 0x2

    .line 696
    .local v1, backVertShift:I
    int-to-float v9, v0

    int-to-float v10, v1

    invoke-virtual {v2, p0, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 697
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v4, v9, 0x2

    .line 698
    .local v4, foreHoriShift:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int v9, v6, v9

    div-int/lit8 v5, v9, 0x2

    .line 699
    .local v5, foreVertShift:I
    int-to-float v9, v4

    int-to-float v10, v5

    invoke-virtual {v2, p1, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p1, v3

    .line 701
    goto :goto_0

    .line 687
    .end local v0           #backHoriShift:I
    .end local v1           #backVertShift:I
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v4           #foreHoriShift:I
    .end local v5           #foreVertShift:I
    .end local v6           #height:I
    .end local v7           #width:I
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    goto :goto_1

    .line 689
    .restart local v7       #width:I
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    goto :goto_2
.end method

.method private getDefaultBitmap(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "foreImageResId"
    .parameter "backImageRes"
    .parameter "backImagePkg"
    .parameter "imageSize"

    .prologue
    .line 707
    const/4 v1, 0x0

    .line 708
    .local v1, bitmap:Landroid/graphics/Bitmap;
    sget-object v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->sBitmapMap:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 709
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->sBitmapMap:Ljava/util/Map;

    .line 711
    :cond_0
    const-string v4, "%d-%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 712
    .local v3, key:I
    sget-object v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->sBitmapMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v4}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getReferent(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 713
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 714
    invoke-static {p1, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 715
    .local v2, foregroundImage:Landroid/graphics/Bitmap;
    invoke-static {p1, p3, p4, p5, p5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNinePatchBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 717
    .local v0, backgroundImage:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getCombinedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 718
    sget-object v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->sBitmapMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    .end local v0           #backgroundImage:Landroid/graphics/Bitmap;
    .end local v2           #foregroundImage:Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getBitmapWithConfig(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private static getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 743
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private getEmoticonDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "res"
    .parameter "pkg"

    .prologue
    const/4 v5, 0x0

    .line 491
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v0, v5

    .line 512
    :cond_1
    :goto_0
    return-object v0

    .line 494
    :cond_2
    const/4 v0, 0x0

    .line 495
    .local v0, d:Landroid/graphics/drawable/Drawable;
    sget-object v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->sDrawableMap:Ljava/util/Map;

    if-nez v4, :cond_3

    .line 496
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->sDrawableMap:Ljava/util/Map;

    .line 498
    :cond_3
    const-string v4, "%s-%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 499
    .local v2, key:I
    sget-object v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->sDrawableMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v4}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getReferent(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 500
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 501
    const/4 v3, 0x0

    .line 503
    .local v3, resId:I
    :try_start_0
    iget-object v4, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "drawable"

    invoke-virtual {v4, p1, v6, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 509
    :goto_1
    iget-object v4, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2, v3, v5}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 510
    sget-object v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->sDrawableMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 506
    :catch_0
    move-exception v1

    .line 507
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method protected static getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, kind:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v2

    invoke-interface {p0, v1, v2, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 300
    .local v0, objs:[Ljava/lang/Object;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 301
    const/4 v1, 0x0

    .line 303
    :goto_0
    return-object v1

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private getMatchStartPosition(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)I
    .locals 4
    .parameter "text"
    .parameter "query"

    .prologue
    .line 568
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 569
    .local v1, start:I
    if-gez v1, :cond_0

    .line 570
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, value:Ljava/lang/String;
    invoke-static {p2}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, key:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 574
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private static getNinePatchBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "res"
    .parameter "pkg"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 647
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-object v5

    .line 650
    :cond_1
    const/4 v9, 0x0

    .line 651
    .local v9, resId:I
    const/4 v1, 0x0

    .line 653
    .local v1, r:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 654
    const-string v4, "drawable"

    invoke-virtual {v1, p1, v4, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 658
    :goto_1
    if-eqz v1, :cond_0

    if-eqz v9, :cond_0

    .line 661
    invoke-static {v1, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 662
    .local v2, original:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 665
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 666
    .local v3, chunk:[B
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 667
    .local v0, np:Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {v0, v10, v10, p3, p4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 669
    invoke-static {}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {p3, p4, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 670
    .local v8, output:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 671
    .local v6, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    move-object v5, v8

    .line 673
    goto :goto_0

    .line 655
    .end local v0           #np:Landroid/graphics/drawable/NinePatchDrawable;
    .end local v2           #original:Landroid/graphics/Bitmap;
    .end local v3           #chunk:[B
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v8           #output:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v7

    .line 656
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getNonNullString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "text"

    .prologue
    .line 747
    if-nez p0, :cond_0

    .line 748
    const-string p0, ""

    .line 750
    .end local p0
    :cond_0
    return-object p0
.end method

.method private getPlurkQualifierSpan(Ljava/lang/String;Ljava/lang/String;IFF)Lcom/htc/text/style/PlurkQualifierSpan;
    .locals 8
    .parameter "type"
    .parameter "name"
    .parameter "size"
    .parameter "xdim"
    .parameter "ydim"

    .prologue
    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, pqspan:Lcom/htc/text/style/PlurkQualifierSpan;
    sget-object v1, Lcom/htc/text/AbstractSocialMarkupRenderer;->sPlurkQualifierSpanMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 631
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/htc/text/AbstractSocialMarkupRenderer;->sPlurkQualifierSpanMap:Ljava/util/Map;

    .line 633
    :cond_0
    const-string v1, "%s-%s-%d-%f-%f"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    .line 634
    .local v7, key:I
    sget-object v1, Lcom/htc/text/AbstractSocialMarkupRenderer;->sPlurkQualifierSpanMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getReferent(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #pqspan:Lcom/htc/text/style/PlurkQualifierSpan;
    check-cast v0, Lcom/htc/text/style/PlurkQualifierSpan;

    .line 635
    .restart local v0       #pqspan:Lcom/htc/text/style/PlurkQualifierSpan;
    if-nez v0, :cond_1

    .line 636
    new-instance v0, Lcom/htc/text/style/PlurkQualifierSpan;

    .end local v0           #pqspan:Lcom/htc/text/style/PlurkQualifierSpan;
    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    int-to-float v4, p3

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/text/style/PlurkQualifierSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FFF)V

    .line 637
    .restart local v0       #pqspan:Lcom/htc/text/style/PlurkQualifierSpan;
    sget-object v1, Lcom/htc/text/AbstractSocialMarkupRenderer;->sPlurkQualifierSpanMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_1
    return-object v0
.end method

.method private getReferent(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/SoftReference",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 755
    .local p1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<TT;>;"
    if-nez p1, :cond_0

    .line 756
    const/4 v0, 0x0

    .line 758
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private handleBr(Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isNewLineSpanDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private handleEmoticon(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 21
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 448
    const-string v17, ""

    const-string v18, "pkg"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 449
    .local v13, pkg:Ljava/lang/String;
    const-string v17, ""

    const-string v18, "res"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 450
    .local v14, res:Ljava/lang/String;
    const-string v17, ""

    const-string v18, "res_alt"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 451
    .local v15, resAlt:Ljava/lang/String;
    const-string v17, ""

    const-string v18, "alg"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, algString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isNormalEmoticonDisplayed()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 455
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmoticonDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 463
    .local v7, d:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 464
    .local v4, alg:I
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 466
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 472
    :cond_1
    :goto_1
    if-eqz v7, :cond_3

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isImageDisplayed()Z

    move-result v17

    if-nez v17, :cond_2

    instance-of v0, v7, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v17, v7

    .line 474
    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 475
    .local v6, b:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierDrawableYDim()F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierDrawableYDim()F

    move-result v10

    .line 476
    .local v10, h:F
    :goto_2
    move v11, v10

    .line 477
    .local v11, height:F
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v10

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v16, v17, v18

    .line 478
    .local v16, width:F
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    float-to-int v0, v11

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 480
    .local v8, d2:Landroid/graphics/drawable/BitmapDrawable;
    move-object v7, v8

    .line 482
    .end local v6           #b:Landroid/graphics/Bitmap;
    .end local v8           #d2:Landroid/graphics/drawable/BitmapDrawable;
    .end local v10           #h:F
    .end local v11           #height:F
    .end local v16           #width:F
    :cond_2
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 483
    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .line 484
    .local v12, len:I
    const-string/jumbo v17, "\ufffc"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 485
    new-instance v17, Landroid/text/style/ImageSpan;

    move-object/from16 v0, v17

    invoke-direct {v0, v7, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v18

    const/16 v19, 0x21

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 488
    .end local v12           #len:I
    :cond_3
    return-void

    .line 457
    .end local v4           #alg:I
    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmoticonDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 458
    .restart local v7       #d:Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_0

    .line 459
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmoticonDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_0

    .line 467
    .restart local v4       #alg:I
    :catch_0
    move-exception v9

    .line 468
    .local v9, e:Ljava/lang/NumberFormatException;
    sget-object v17, Lcom/htc/text/AbstractSocialMarkupRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[NumberFormatException] alg == "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense/widget/SNLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 475
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #b:Landroid/graphics/Bitmap;
    :cond_5
    const/high16 v10, 0x41a0

    goto/16 :goto_2
.end method

.method private handleEmphasis(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 9
    .parameter "text"
    .parameter "attributes"

    .prologue
    const/16 v8, 0x21

    .line 604
    const-string v5, ""

    const-string v6, "argb"

    invoke-interface {p2, v5, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, argb:Ljava/lang/String;
    const-string v5, ""

    const-string v6, "value"

    invoke-interface {p2, v5, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, value:Ljava/lang/String;
    const/4 v1, 0x0

    .line 608
    .local v1, argbIndex:I
    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 610
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 616
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 617
    .local v3, len:I
    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 618
    if-eqz v1, :cond_2

    .line 619
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v3, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 625
    :cond_1
    :goto_1
    return-void

    .line 611
    .end local v3           #len:I
    :catch_0
    move-exception v2

    .line 612
    .local v2, e:Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/htc/text/AbstractSocialMarkupRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NumberFormatException] argb == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/widget/SNLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 621
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #len:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmphasisTextFontColor()I

    move-result v5

    sget v6, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq v5, v6, :cond_1

    .line 622
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmphasisTextFontColor()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v3, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method private handleEndTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 266
    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleBr(Landroid/text/SpannableStringBuilder;)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const-string v0, "pf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    const-string v0, "lk1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPrimaryLinkFontSizeInPixel()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->endLink(Landroid/text/SpannableStringBuilder;I)V

    goto :goto_0

    .line 272
    :cond_2
    const-string v0, "lk2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryLinkFontSizeInPixel()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->endLink(Landroid/text/SpannableStringBuilder;I)V

    goto :goto_0

    .line 274
    :cond_3
    const-string v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    const-string v0, "vid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    const-string v0, "plq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    const-string v0, "emo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    const-string v0, "ts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    const-string v0, "t2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 285
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/AbstractSocialMarkupRenderer$Text2;

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->endText2(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;)V

    goto :goto_0

    .line 286
    :cond_4
    const-string v0, "emp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const-string v0, "ak1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/AbstractSocialMarkupRenderer$AutoLink;

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->endAutoLink(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private handleHighlightString(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 6
    .parameter "text"
    .parameter "key"

    .prologue
    const/16 v5, 0x21

    .line 550
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 551
    .local v2, textLength:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 552
    .local v0, keyLength:I
    if-eqz p1, :cond_1

    if-lt v2, v0, :cond_1

    .line 553
    invoke-direct {p0, p1, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getMatchStartPosition(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)I

    move-result v1

    .line 554
    .local v1, start:I
    if-ltz v1, :cond_1

    .line 555
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getHighlightForegroundColor()I

    move-result v3

    sget v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq v3, v4, :cond_0

    .line 556
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getHighlightForegroundColor()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getHighlightBackgroundColor()I

    move-result v3

    sget v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq v3, v4, :cond_1

    .line 560
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getHighlightBackgroundColor()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 565
    .end local v1           #start:I
    :cond_1
    return-void
.end method

.method private handleImage(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Lcom/htc/text/HtcHtml$ImageGetter;Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 8
    .parameter "text"
    .parameter "attributes"
    .parameter "imageGetter"
    .parameter "callback"

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 399
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isImageDisplayed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 400
    const-string v4, ""

    const-string v5, "uri"

    invoke-interface {p2, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, uri:Ljava/lang/String;
    const-string v4, ""

    const-string v5, "pv"

    invoke-interface {p2, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, pv:Ljava/lang/String;
    const/4 v0, 0x0

    .line 404
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_0

    .line 405
    invoke-interface {p3, v2}, Lcom/htc/text/HtcHtml$ImageGetter;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 408
    :cond_0
    if-nez v0, :cond_1

    .line 409
    iget-object v4, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getDefaultImageResId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 413
    :cond_1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 414
    .local v1, len:I
    const-string/jumbo v4, "\ufffc"

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 416
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 417
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v1, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 420
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 421
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isSpanClickable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 422
    new-instance v4, Lcom/htc/text/style/URISpan;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/htc/text/style/URISpan;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v1, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 427
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #len:I
    .end local v2           #pv:Ljava/lang/String;
    .end local v3           #uri:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private handlePlurkQualifier(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 8
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 431
    const-string v0, ""

    const-string v3, "type"

    invoke-interface {p2, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, type:Ljava/lang/String;
    const-string v0, ""

    const-string v3, "name"

    invoke-interface {p2, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierFontSizeInPixel()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierDrawableXDim()F

    move-result v4

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierDrawableYDim()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierSpan(Ljava/lang/String;Ljava/lang/String;IFF)Lcom/htc/text/style/PlurkQualifierSpan;

    move-result-object v7

    .line 438
    .local v7, qspan:Lcom/htc/text/style/PlurkQualifierSpan;
    invoke-virtual {v7}, Lcom/htc/text/style/PlurkQualifierSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 440
    .local v6, len:I
    const-string/jumbo v0, "\ufffc"

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 441
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-virtual {p1, v7, v6, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 444
    .end local v6           #len:I
    :cond_0
    return-void
.end method

.method private handleProfile(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 10
    .parameter "text"
    .parameter "attributes"

    .prologue
    const/4 v4, 0x1

    const/16 v9, 0x21

    .line 317
    const-string v0, ""

    const-string v3, "uri"

    invoke-interface {p2, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, uri:Ljava/lang/String;
    const-string v0, ""

    const-string v3, "name"

    invoke-interface {p2, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 319
    .local v7, name:Ljava/lang/String;
    const-string v0, ""

    const-string v3, "name_alt"

    invoke-interface {p2, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, nameAlt:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isNormalProfileNameDisplayed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 323
    move-object v2, v7

    .line 331
    .local v2, n:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 332
    .local v6, len:I
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 333
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isSpanClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    new-instance v0, Lcom/htc/text/style/ProfileSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getProfileFontColor()I

    move-result v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/htc/text/style/ProfileSpan;-><init>(Ljava/lang/String;Ljava/lang/String;IZZ)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v0, v6, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 337
    :cond_1
    sget-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->sBoldStyleSpan:Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v0, v6, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 338
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getProfileFontColor()I

    move-result v0

    sget v3, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq v0, v3, :cond_2

    .line 339
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getProfileFontColor()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v0, v6, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 342
    :cond_2
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getProfileFontSizeInPixel()I

    move-result v0

    if-lez v0, :cond_3

    .line 343
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getProfileFontSizeInPixel()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v0, v6, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 346
    :cond_3
    return-void

    .line 325
    .end local v2           #n:Ljava/lang/String;
    .end local v6           #len:I
    :cond_4
    move-object v2, v8

    .line 326
    .restart local v2       #n:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    move-object v2, v7

    goto :goto_0
.end method

.method private handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "tag"
    .parameter "attributes"

    .prologue
    .line 238
    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const-string v0, "pf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleProfile(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 242
    :cond_2
    const-string v0, "lk1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->startLink(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 244
    :cond_3
    const-string v0, "lk2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->startLink(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 246
    :cond_4
    const-string v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 247
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mImageGetter:Lcom/htc/text/HtcHtml$ImageGetter;

    iget-object v2, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleImage(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Lcom/htc/text/HtcHtml$ImageGetter;Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 248
    :cond_5
    const-string v0, "vid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 249
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mImageGetter:Lcom/htc/text/HtcHtml$ImageGetter;

    iget-object v2, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleImage(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Lcom/htc/text/HtcHtml$ImageGetter;Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 250
    :cond_6
    const-string v0, "plq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 251
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handlePlurkQualifier(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 252
    :cond_7
    const-string v0, "emo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 253
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleEmoticon(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 254
    :cond_8
    const-string v0, "ts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 255
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleTimestamp(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 256
    :cond_9
    const-string v0, "t2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 257
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/AbstractSocialMarkupRenderer$Text2;

    invoke-direct {v1}, Lcom/htc/text/AbstractSocialMarkupRenderer$Text2;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 258
    :cond_a
    const-string v0, "emp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 259
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleEmphasis(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 260
    :cond_b
    const-string v0, "ak1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/AbstractSocialMarkupRenderer$AutoLink;

    invoke-direct {v1}, Lcom/htc/text/AbstractSocialMarkupRenderer$AutoLink;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private handleTimestamp(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 13
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 517
    const-string v0, ""

    const-string v3, "value"

    invoke-interface {p2, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 519
    .local v11, ts:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 520
    .local v1, old:J
    const-string v0, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    :try_start_0
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 528
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .line 529
    .local v12, where:I
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    const-wide/16 v3, 0x3e8

    const-wide/32 v5, 0x5265c00

    const v7, 0x40010

    invoke-static/range {v0 .. v7}, Lcom/htc/text/util/HtcDateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v8

    .line 536
    .local v8, converted:Ljava/lang/CharSequence;
    invoke-virtual {p1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 537
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 539
    .local v10, len:I
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontSizeInPixel()I

    move-result v0

    if-lez v0, :cond_1

    .line 540
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontSizeInPixel()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v12, v10, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 543
    :cond_1
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontColor()I

    move-result v0

    sget v3, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq v0, v3, :cond_2

    .line 544
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontColor()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v12, v10, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 547
    :cond_2
    return-void

    .line 523
    .end local v8           #converted:Ljava/lang/CharSequence;
    .end local v10           #len:I
    .end local v12           #where:I
    :catch_0
    move-exception v9

    .line 524
    .local v9, e:Ljava/lang/NumberFormatException;
    sget-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NumberFormatException] ts == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/opensense/widget/SNLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V
    .locals 2
    .parameter "text"
    .parameter "mark"

    .prologue
    .line 579
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 580
    .local v0, len:I
    const/16 v1, 0x11

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 581
    return-void
.end method

.method private startLink(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 349
    const-string v2, ""

    const-string v3, "uri"

    invoke-interface {p2, v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, href:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 352
    .local v1, len:I
    new-instance v2, Lcom/htc/text/HtcHtmlToSpannedConverter$Href;

    invoke-direct {v2, v0}, Lcom/htc/text/HtcHtmlToSpannedConverter$Href;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 354
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 96
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 232
    sput-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->sPlurkQualifierSpanMap:Ljava/util/Map;

    .line 233
    sput-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->sDrawableMap:Ljava/util/Map;

    .line 234
    sput-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->sBitmapMap:Ljava/util/Map;

    .line 235
    return-void
.end method

.method public convert()Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->convert(Landroid/graphics/drawable/Drawable$Callback;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public convert(Landroid/graphics/drawable/Drawable$Callback;)Landroid/text/Spanned;
    .locals 7
    .parameter "callback"

    .prologue
    .line 200
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 201
    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getDefaultImageResId()I

    move-result v2

    const-string v3, "fs_bg_loading"

    const-string v4, "com.htc.friendstream"

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getImageSize()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getDefaultBitmap(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDefaultImage:Landroid/graphics/Bitmap;

    .line 204
    new-instance v0, Lcom/htc/graphics/UrlImageGetter;

    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDefaultImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getImageSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getImageSize()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/graphics/UrlImageGetter;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;II)V

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mImageGetter:Lcom/htc/text/HtcHtml$ImageGetter;

    .line 206
    iput-object p1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 208
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mReader:Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 216
    :try_start_1
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mReader:Lorg/xml/sax/XMLReader;

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    iget-object v3, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSource:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3

    .line 224
    :goto_1
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mQueryKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mQueryKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleHighlightString(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    return-object v0

    .line 209
    :catch_0
    move-exception v6

    .line 210
    .local v6, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 211
    .end local v6           #e:Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v6

    .line 212
    .local v6, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 217
    .end local v6           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v6

    .line 218
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 219
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 220
    .local v6, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 221
    sget-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSource:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/opensense/widget/SNLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 104
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleEndTag(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 122
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract getDefaultImageResId()I
.end method

.method protected abstract getEmphasisTextFontColor()I
.end method

.method protected getHighlightBackgroundColor()I
    .locals 1

    .prologue
    .line 884
    sget v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    return v0
.end method

.method protected getHighlightForegroundColor()I
    .locals 1

    .prologue
    .line 880
    sget v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    return v0
.end method

.method protected abstract getImageSize()I
.end method

.method protected getPlurkQualifierDrawableXDim()F
    .locals 1

    .prologue
    .line 860
    const/4 v0, 0x0

    return v0
.end method

.method protected getPlurkQualifierDrawableYDim()F
    .locals 1

    .prologue
    .line 868
    const/4 v0, 0x0

    return v0
.end method

.method protected getPlurkQualifierFontSizeInPixel()I
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPrimaryTextFontSizeInPixel()I

    move-result v0

    return v0
.end method

.method protected abstract getPrimaryLinkFontSizeInPixel()I
.end method

.method protected abstract getPrimaryTextFontSizeInPixel()I
.end method

.method protected abstract getProfileFontColor()I
.end method

.method protected abstract getProfileFontSizeInPixel()I
.end method

.method protected abstract getSecondaryLinkFontSizeInPixel()I
.end method

.method protected abstract getSecondaryTextFontColor()I
.end method

.method protected abstract getSecondaryTextFontSizeInPixel()I
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 131
    return-void
.end method

.method protected isImageDisplayed()Z
    .locals 1

    .prologue
    .line 840
    const/4 v0, 0x1

    return v0
.end method

.method protected isNewLineSpanDisplayed()Z
    .locals 1

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isImageDisplayed()Z

    move-result v0

    return v0
.end method

.method protected isNormalEmoticonDisplayed()Z
    .locals 1

    .prologue
    .line 848
    const/4 v0, 0x1

    return v0
.end method

.method protected isNormalProfileNameDisplayed()Z
    .locals 1

    .prologue
    .line 852
    const/4 v0, 0x1

    return v0
.end method

.method protected isSpanClickable()Z
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x1

    return v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 140
    return-void
.end method

.method public setData(Ljava/lang/String;)Lcom/htc/text/AbstractSocialMarkupRenderer;
    .locals 0
    .parameter "source"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSource:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .parameter "locator"

    .prologue
    .line 148
    return-void
.end method

.method public setHighlight(Ljava/lang/String;)Lcom/htc/text/AbstractSocialMarkupRenderer;
    .locals 0
    .parameter "key"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mQueryKey:Ljava/lang/String;

    .line 192
    return-object p0
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 156
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 164
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0, p2, p4}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 174
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 183
    return-void
.end method
