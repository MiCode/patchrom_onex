.class public Lcom/htc/widget/HtcFooterButton;
.super Lcom/htc/widget/HtcIconButton;
.source "HtcFooterButton.java"


# static fields
.field private static final Chinese:Ljava/lang/String; = null

.field private static final Japanese:Ljava/lang/String; = null

.field private static final Korean:Ljava/lang/String; = null

.field private static final Thai:Ljava/lang/String; = "TH"

.field private static final mButtonMaxLine1:I = 0x1

.field private static final mButtonMaxLine2:I = 0x2

.field private static final mSpace:Ljava/lang/String; = ".*\\s.*"


# instance fields
.field private M3:I

.field private M5:I

.field private mCountry:Ljava/lang/String;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMode:I

.field private mHorizontal:Z

.field mImage:Landroid/graphics/drawable/Drawable;

.field private mImageResId:I

.field private mLanguage:Ljava/lang/String;

.field private mNamespace:Ljava/lang/String;

.field private mNamespaceImage:Ljava/lang/String;

.field private mPopupWrapper:Lcom/htc/widget/HtcPopupWindowWrapper;

.field private mTextRes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/widget/HtcFooterButton;->Chinese:Ljava/lang/String;

    .line 68
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/widget/HtcFooterButton;->Japanese:Ljava/lang/String;

    .line 69
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/widget/HtcFooterButton;->Korean:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 91
    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcIconButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-object v8, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    .line 57
    const-string v7, "http://schemas.android.com/apk/res/android"

    iput-object v7, p0, Lcom/htc/widget/HtcFooterButton;->mNamespace:Ljava/lang/String;

    .line 58
    const-string v7, "http://schemas.android.com/apk/res/com.htc"

    iput-object v7, p0, Lcom/htc/widget/HtcFooterButton;->mNamespaceImage:Ljava/lang/String;

    .line 59
    iput-object v8, p0, Lcom/htc/widget/HtcFooterButton;->mTextRes:Ljava/lang/String;

    .line 60
    iput v9, p0, Lcom/htc/widget/HtcFooterButton;->mImageResId:I

    .line 62
    iput v9, p0, Lcom/htc/widget/HtcFooterButton;->M5:I

    .line 63
    iput v9, p0, Lcom/htc/widget/HtcFooterButton;->M3:I

    .line 73
    iput-boolean v9, p0, Lcom/htc/widget/HtcFooterButton;->mHorizontal:Z

    .line 75
    iput v9, p0, Lcom/htc/widget/HtcFooterButton;->mDisplayMode:I

    .line 76
    iput-object v8, p0, Lcom/htc/widget/HtcFooterButton;->mCountry:Ljava/lang/String;

    .line 77
    iput-object v8, p0, Lcom/htc/widget/HtcFooterButton;->mLanguage:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 104
    .local v6, theme:Landroid/content/res/Resources$Theme;
    sget-object v7, Lcom/htc/R$styleable;->HtcFooterButton:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 106
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_0

    .line 107
    iget-object v7, p0, Lcom/htc/widget/HtcFooterButton;->mNamespace:Ljava/lang/String;

    const-string v8, "text"

    invoke-interface {p2, v7, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcFooterButton;->mTextRes:Ljava/lang/String;

    .line 108
    iget-object v7, p0, Lcom/htc/widget/HtcFooterButton;->mNamespaceImage:Ljava/lang/String;

    const-string v8, "footerButtonImage"

    invoke-interface {p2, v7, v8, v9}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/htc/widget/HtcFooterButton;->mImageResId:I

    .line 110
    :cond_0
    iget v7, p0, Lcom/htc/widget/HtcFooterButton;->mImageResId:I

    if-eqz v7, :cond_1

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/htc/widget/HtcFooterButton;->mImageResId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcFooterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2050002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lcom/htc/widget/HtcFooterButton;->M3:I

    .line 141
    sget-object v7, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 143
    const/16 v7, 0xf

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 144
    .local v5, paddingTop:I
    const/16 v7, 0x11

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 145
    .local v2, paddingBottom:I
    const/16 v7, 0xe

    iget v8, p0, Lcom/htc/widget/HtcFooterButton;->M3:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 146
    .local v3, paddingLeft:I
    const/16 v7, 0x10

    iget v8, p0, Lcom/htc/widget/HtcFooterButton;->M3:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 147
    .local v4, paddingRight:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcFooterButton;->setBackgroundResource(I)V

    .line 150
    invoke-virtual {p0, v3, v5, v4, v2}, Lcom/htc/widget/HtcFooterButton;->setPadding(IIII)V

    .line 151
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcFooterButton;->setMaxLines(I)V

    .line 152
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcFooterButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 153
    return-void

    .line 113
    .end local v2           #paddingBottom:I
    .end local v3           #paddingLeft:I
    .end local v4           #paddingRight:I
    .end local v5           #paddingTop:I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private drawIconImage(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f00

    .line 400
    iget-object v6, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 414
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 404
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getWidth()I

    move-result v3

    .line 405
    .local v3, vWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getHeight()I

    move-result v2

    .line 406
    .local v2, vHeight:I
    iget-object v6, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 407
    .local v1, dWidth:I
    iget-object v6, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 408
    .local v0, dHeight:I
    sub-int v6, v3, v1

    int-to-float v6, v6

    mul-float v4, v6, v7

    .line 409
    .local v4, xOffset:F
    sub-int v6, v2, v0

    int-to-float v6, v6

    mul-float v5, v6, v7

    .line 410
    .local v5, yOffset:F
    iget-object v6, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v8, v8, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 411
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 412
    iget-object v6, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 413
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mPopupWrapper:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Lcom/htc/widget/HtcPopupWindowWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HtcPopupWindowWrapper;-><init>(Landroid/view/View;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mPopupWrapper:Lcom/htc/widget/HtcPopupWindowWrapper;

    .line 468
    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mPopupWrapper:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcFooterButton;->setPopupDirection(Lcom/htc/widget/HtcPopupWindowWrapper;)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mPopupWrapper:Lcom/htc/widget/HtcPopupWindowWrapper;

    return-object v0
.end method

.method private getViewOrientation()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mDisplay:Landroid/view/Display;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/widget/HtcFooterButton;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 386
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcFooterButton;->mHorizontal:Z

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFooterButton;->mHorizontal:Z

    goto :goto_0
.end method

.method private initFooterButton()V
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooterButton;->setBackgroundMode(I)V

    .line 166
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->setFooterButtonAppearance()V

    .line 167
    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mPopupWrapper:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mPopupWrapper:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcFooterButton;->setPopupDirection(Lcom/htc/widget/HtcPopupWindowWrapper;)V

    goto :goto_0
.end method

.method private setFooterButtonAppearance()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x203005c

    const v5, 0x2030051

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 233
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getViewOrientation()V

    .line 234
    iput-object v3, p0, Lcom/htc/widget/HtcFooterButton;->mCountry:Ljava/lang/String;

    .line 235
    iput-object v3, p0, Lcom/htc/widget/HtcFooterButton;->mLanguage:Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcFooterButton;->mLanguage:Ljava/lang/String;

    .line 237
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcFooterButton;->mCountry:Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lcom/htc/widget/HtcFooterButton;->mLanguage:Ljava/lang/String;

    sget-object v2, Lcom/htc/widget/HtcFooterButton;->Chinese:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcFooterButton;->mLanguage:Ljava/lang/String;

    sget-object v2, Lcom/htc/widget/HtcFooterButton;->Japanese:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcFooterButton;->mLanguage:Ljava/lang/String;

    sget-object v2, Lcom/htc/widget/HtcFooterButton;->Korean:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcFooterButton;->mCountry:Ljava/lang/String;

    const-string v2, "TH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 241
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 242
    .local v0, temp:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".*\\s.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 243
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcFooterButton;->setSingleLine(Z)V

    .line 244
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcFooterButton;->setMaxLines(I)V

    .line 245
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooterButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 246
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcFooterButton;->setHorizontalFadingEdgeEnabled(Z)V

    .line 265
    .end local v0           #temp:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    iget v1, p0, Lcom/htc/widget/HtcFooterButton;->mDisplayMode:I

    packed-switch v1, :pswitch_data_0

    .line 284
    iget-object v1, p0, Lcom/htc/widget/HtcFooterButton;->mTextRes:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eq v4, v1, :cond_7

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/htc/widget/HtcFooterButton;->mHorizontal:Z

    if-eqz v1, :cond_7

    .line 286
    iget-object v1, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v1, v3, v3}, Lcom/htc/widget/HtcFooterButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 290
    :goto_1
    iget-boolean v1, p0, Lcom/htc/widget/HtcFooterButton;->mHorizontal:Z

    if-eqz v1, :cond_8

    .line 291
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lcom/htc/widget/HtcFooterButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 292
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/htc/widget/HtcFooterButton;->setShadow(Landroid/content/Context;I)V

    .line 300
    :goto_2
    return-void

    .line 248
    .restart local v0       #temp:Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcFooterButton;->setSingleLine(Z)V

    .line 249
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooterButton;->setMaxLines(I)V

    .line 250
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooterButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 252
    .end local v0           #temp:Ljava/lang/CharSequence;
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcFooterButton;->mTextRes:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/htc/widget/HtcFooterButton;->mTextRes:Ljava/lang/String;

    const-string v2, ".*\\s.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 254
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcFooterButton;->setSingleLine(Z)V

    .line 255
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcFooterButton;->setMaxLines(I)V

    .line 256
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooterButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 257
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcFooterButton;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_0

    .line 259
    :cond_4
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcFooterButton;->setSingleLine(Z)V

    .line 260
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooterButton;->setMaxLines(I)V

    .line 261
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooterButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 267
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/htc/widget/HtcFooterButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 268
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/htc/widget/HtcFooterButton;->setShadow(Landroid/content/Context;I)V

    .line 269
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/htc/widget/HtcFooterButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 273
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lcom/htc/widget/HtcFooterButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 274
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/htc/widget/HtcFooterButton;->setShadow(Landroid/content/Context;I)V

    .line 275
    iget-object v1, p0, Lcom/htc/widget/HtcFooterButton;->mTextRes:Ljava/lang/String;

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eq v4, v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 277
    iget-object v1, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v1, v3, v3}, Lcom/htc/widget/HtcFooterButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 279
    :cond_6
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/htc/widget/HtcFooterButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 288
    :cond_7
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/htc/widget/HtcFooterButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 294
    :cond_8
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/htc/widget/HtcFooterButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 295
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/htc/widget/HtcFooterButton;->setShadow(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setPopupDirection(Lcom/htc/widget/HtcPopupWindowWrapper;)V
    .locals 3
    .parameter "wrapper"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 514
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getViewOrientation()V

    .line 515
    iget v0, p0, Lcom/htc/widget/HtcFooterButton;->mDisplayMode:I

    packed-switch v0, :pswitch_data_0

    .line 525
    iget-boolean v0, p0, Lcom/htc/widget/HtcFooterButton;->mHorizontal:Z

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p1, v2}, Lcom/htc/widget/HtcPopupWindowWrapper;->setExpandDirection(I)V

    .line 533
    :goto_0
    return-void

    .line 517
    :pswitch_0
    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setExpandDirection(I)V

    goto :goto_0

    .line 521
    :pswitch_1
    invoke-virtual {p1, v2}, Lcom/htc/widget/HtcPopupWindowWrapper;->setExpandDirection(I)V

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setExpandDirection(I)V

    goto :goto_0

    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setShadow(Landroid/content/Context;I)V
    .locals 8
    .parameter "c"
    .parameter "style"

    .prologue
    const/4 v7, 0x0

    .line 184
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    sget-object v5, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 189
    .local v4, shadow:Landroid/content/res/TypedArray;
    if-eqz v4, :cond_0

    .line 191
    const/16 v5, 0x24

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 192
    .local v0, color:I
    const/16 v5, 0x25

    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 193
    .local v1, dx:F
    const/16 v5, 0x26

    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 194
    .local v2, dy:F
    const/16 v5, 0x27

    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 195
    .local v3, r:F
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/htc/widget/HtcFooterButton;->setShadowLayer(FFFI)V

    goto :goto_0
.end method


# virtual methods
.method protected FooterDisplayMode(I)V
    .locals 0
    .parameter "displayMode"

    .prologue
    .line 457
    iput p1, p0, Lcom/htc/widget/HtcFooterButton;->mDisplayMode:I

    .line 458
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->initFooterButton()V

    .line 459
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 426
    invoke-super {p0}, Lcom/htc/widget/HtcIconButton;->drawableStateChanged()V

    .line 427
    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    .line 428
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 431
    :cond_0
    return-void
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected isFooterAlwaysBottom(Z)V
    .locals 0
    .parameter "bottom"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 542
    return-void
.end method

.method protected isFooterAlwaysRight(Z)V
    .locals 0
    .parameter "right"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 552
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 440
    invoke-super {p0, p1}, Lcom/htc/widget/HtcIconButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 443
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/htc/widget/HtcIconButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 367
    iget-object v0, p0, Lcom/htc/widget/HtcFooterButton;->mTextRes:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcFooterButton;->drawIconImage(Landroid/graphics/Canvas;)V

    .line 371
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->initFooterButton()V

    .line 175
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcIconButton;->onMeasure(II)V

    .line 176
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 447
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcIconButton;->onSizeChanged(IIII)V

    .line 449
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->initFooterButton()V

    .line 450
    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .parameter "adapter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 497
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 484
    :cond_0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 212
    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 215
    :cond_0
    if-eqz p3, :cond_1

    .line 216
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 218
    :cond_1
    if-eqz p2, :cond_2

    .line 219
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 221
    iget v0, p0, Lcom/htc/widget/HtcFooterButton;->M5:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooterButton;->setCompoundDrawablePadding(I)V

    .line 223
    :cond_2
    if-eqz p4, :cond_3

    .line 224
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 226
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFooterButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 227
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 356
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "mImage"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/htc/widget/HtcFooterButton;->mImage:Landroid/graphics/drawable/Drawable;

    .line 331
    if-eqz p1, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->setFooterButtonAppearance()V

    .line 334
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .parameter "resource"

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 341
    .local v1, rsrc:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 343
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 503
    :try_start_0
    invoke-direct {p0}, Lcom/htc/widget/HtcFooterButton;->getPopupWrapper()Lcom/htc/widget/HtcPopupWindowWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->showPopupWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    goto :goto_0
.end method
