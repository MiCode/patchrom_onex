.class Lcom/htc/widget/HtcListItem2TextComponent;
.super Landroid/widget/FrameLayout;
.source "HtcListItem2TextComponent.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemComponent;


# static fields
.field private static final INVALID_TEXTHEIGHT:I = -0x1

.field static final MAX_NUM_TEXT:I = 0x2

.field public static final MODE_DARK_LIST:I = 0x1

.field public static final MODE_WHITE_LIST:I


# instance fields
.field mBlackIconRightMargin:I

.field mBlackIconSize:I

.field protected mContext:Landroid/content/Context;

.field protected mFontSize:[I

.field mIsAutomotiveMode:Z

.field mIsFrontImageExist:Z

.field protected mIsMarqueeEnabled:Z

.field mItemMode:I

.field protected mMode:I

.field protected mRealHeightOfText:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected mText:[Landroid/widget/TextView;

.field mTextStyle:[I

.field protected mTextTopY:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mTextTopYUsed:Z

.field private mUseFontSizeInStyle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    .line 23
    iput v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextStyle:[I

    .line 35
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopYUsed:Z

    .line 46
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 51
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsAutomotiveMode:Z

    .line 54
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsFrontImageExist:Z

    .line 55
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM6()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mBlackIconRightMargin:I

    .line 56
    iput v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mBlackIconSize:I

    .line 130
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mUseFontSizeInStyle:Z

    .line 566
    iput v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    .line 87
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->init(Landroid/content/Context;)V

    .line 88
    return-void

    .line 29
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    .line 23
    iput v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextStyle:[I

    .line 35
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopYUsed:Z

    .line 46
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 51
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsAutomotiveMode:Z

    .line 54
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsFrontImageExist:Z

    .line 55
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM6()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mBlackIconRightMargin:I

    .line 56
    iput v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mBlackIconSize:I

    .line 130
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mUseFontSizeInStyle:Z

    .line 566
    iput v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    .line 102
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    .line 103
    iput p2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    .line 107
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->init(Landroid/content/Context;)V

    .line 108
    return-void

    .line 105
    :cond_0
    iput v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    goto :goto_0

    .line 29
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    .line 23
    iput v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextStyle:[I

    .line 35
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopYUsed:Z

    .line 46
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 51
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsAutomotiveMode:Z

    .line 54
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsFrontImageExist:Z

    .line 55
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM6()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mBlackIconRightMargin:I

    .line 56
    iput v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mBlackIconSize:I

    .line 130
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mUseFontSizeInStyle:Z

    .line 566
    iput v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void

    .line 29
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    .line 23
    iput v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextStyle:[I

    .line 35
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopYUsed:Z

    .line 46
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 51
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsAutomotiveMode:Z

    .line 54
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsFrontImageExist:Z

    .line 55
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM6()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mBlackIconRightMargin:I

    .line 56
    iput v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mBlackIconSize:I

    .line 130
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mUseFontSizeInStyle:Z

    .line 566
    iput v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void

    .line 29
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "text1"
    .parameter "text2"

    .prologue
    const/4 v0, 0x1

    .line 142
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    .line 61
    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {p1, v0}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 63
    iput-object p1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    .line 64
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    .line 66
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    .line 67
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mRealHeightOfText:[I

    .line 68
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mFontSize:[I

    .line 69
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 72
    if-eqz p2, :cond_0

    .line 73
    sget-object v1, Lcom/htc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->init(Landroid/content/Context;)V

    .line 83
    return-void

    .line 79
    :cond_0
    iput v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    .line 80
    iput-boolean v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    goto :goto_0
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "view"
    .parameter "text"

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItem2TextComponent;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    if-nez p2, :cond_1

    .line 174
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 175
    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 178
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "text"

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItem2TextComponent;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    if-nez p2, :cond_1

    .line 156
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 157
    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 160
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTextStyle(II)V
    .locals 3
    .parameter "index"
    .parameter "defStyle"

    .prologue
    .line 117
    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcFadingEdgeTextView;->setTextStyle(I)V

    .line 119
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsAutomotiveMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mUseFontSizeInStyle:Z

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mFontSize:[I

    aget v2, v2, p1

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextStyle:[I

    aput p2, v0, p1

    .line 128
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 541
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 542
    return-void
.end method

.method public enableMarquee(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 365
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setEnableMarquee(Z)V

    .line 366
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setEnableMarquee(Z)V

    .line 369
    return-void
.end method

.method public getPrimaryCharSequence()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 555
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    .line 557
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrimaryTextVisibility()I
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getSecondaryCharSequence()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 561
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    .line 563
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondaryTextVisibility()I
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method protected layoutText(IZI)V
    .locals 6
    .parameter "index"
    .parameter "isAlignLeft"
    .parameter "offsetX"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 457
    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    aget v2, v2, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    aget v2, v2, v5

    if-eqz v2, :cond_1

    .line 458
    :cond_0
    iput-boolean v5, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopYUsed:Z

    .line 460
    :cond_1
    const/4 v0, 0x0

    .line 461
    .local v0, top:I
    if-nez p1, :cond_4

    .line 462
    iget v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v2}, Lcom/htc/widget/HtcListItemUtil;->getPrimaryBaseLine(I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    sub-int v0, v2, v3

    .line 467
    iget-boolean v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopYUsed:Z

    if-eqz v2, :cond_2

    .line 468
    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    aget v0, v2, v1

    .line 486
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, p1

    if-eqz p2, :cond_7

    :goto_1
    add-int v3, p3, v1

    if-eqz p2, :cond_8

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    :goto_2
    add-int/2addr v1, p3

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 491
    :cond_3
    return-void

    .line 469
    :cond_4
    if-ne p1, v5, :cond_3

    .line 470
    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 471
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v3}, Lcom/htc/widget/HtcListItemUtil;->getDesiredBottomGap(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 473
    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 474
    iget v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v2}, Lcom/htc/widget/HtcListItemUtil;->getPrimaryBaseLine(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v4}, Lcom/htc/widget/HtcListItemUtil;->getPrimaryBaseLine(I)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 481
    :cond_5
    :goto_3
    iget-boolean v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopYUsed:Z

    if-eqz v2, :cond_2

    .line 482
    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    aget v0, v2, v5

    goto :goto_0

    .line 478
    :cond_6
    iget v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v2}, Lcom/htc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v3}, Lcom/htc/widget/HtcListItemUtil;->getDesiredBottomGap(I)I

    move-result v3

    sub-int v0, v2, v3

    goto :goto_3

    .line 486
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getMeasuredWidth()I

    move-result v1

    goto/16 :goto_2
.end method

.method protected layoutTextAtCenter(IZI)V
    .locals 5
    .parameter "index"
    .parameter "isAlignLeft"
    .parameter "offsetX"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 505
    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    aget v2, v2, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    aget v2, v2, v3

    if-eqz v2, :cond_1

    .line 506
    :cond_0
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopYUsed:Z

    .line 508
    :cond_1
    if-gt p1, v3, :cond_2

    if-gez p1, :cond_3

    .line 531
    :cond_2
    :goto_0
    return-void

    .line 511
    :cond_3
    if-ne p1, v3, :cond_4

    .line 512
    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 518
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 520
    .local v0, top:I
    iget-boolean v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopYUsed:Z

    if-eqz v2, :cond_5

    .line 521
    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    aget v0, v2, p1

    .line 526
    :cond_5
    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, p1

    if-eqz p2, :cond_6

    :goto_1
    add-int v3, p3, v1

    if-eqz p2, :cond_7

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    :goto_2
    add-int/2addr v1, p3

    iget-object v4, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getMeasuredWidth()I

    move-result v1

    goto :goto_2
.end method

.method public notifyItemMode(I)V
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 572
    iput p1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    .line 573
    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsAutomotiveMode:Z

    .line 574
    return-void

    .line 573
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 377
    const/4 v10, 0x0

    .line 378
    .local v10, totalHeight:I
    const/4 v9, 0x0

    .line 379
    .local v9, maxWidth:I
    const/4 v8, 0x1

    .line 382
    .local v8, isUseDesiredHeight:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-ge v7, v0, :cond_5

    .line 383
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 384
    if-nez v7, :cond_2

    .line 385
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v7

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;->measureChild(Landroid/view/View;II)V

    .line 387
    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v0}, Lcom/htc/widget/HtcListItemUtil;->getPrimaryTextBaseLine(I)I

    move-result v0

    add-int/2addr v10, v0

    .line 412
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 382
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 390
    :cond_2
    const/4 v0, 0x1

    if-ne v7, v0, :cond_0

    .line 391
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsFrontImageExist:Z

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v0, v7

    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mBlackIconSize:I

    iget v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mBlackIconRightMargin:I

    add-int v3, v0, v2

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcListItem2TextComponent;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 402
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 403
    const/4 v8, 0x0

    .line 404
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v1}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextBaseLine(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v10, v0

    goto :goto_1

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v7

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;->measureChild(Landroid/view/View;II)V

    goto :goto_2

    .line 408
    :cond_4
    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v0}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextBaseLine(I)I

    move-result v0

    add-int/2addr v10, v0

    goto :goto_1

    .line 416
    :cond_5
    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v0}, Lcom/htc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v6

    .line 417
    .local v6, desireHeight:I
    if-nez v8, :cond_a

    .line 419
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    .line 421
    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v0}, Lcom/htc/widget/HtcListItemUtil;->getDesiredTopGap(I)I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v1}, Lcom/htc/widget/HtcListItemUtil;->getDesiredBottomGap(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v1}, Lcom/htc/widget/HtcListItemUtil;->getDesiredCenterGap(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v10, v0

    .line 425
    if-ge v10, v6, :cond_6

    move v10, v6

    .line 440
    :cond_6
    :goto_3
    invoke-static {v9, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->resolveSize(II)I

    move-result v0

    invoke-static {v10, p2}, Lcom/htc/widget/HtcListItem2TextComponent;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem2TextComponent;->setMeasuredDimension(II)V

    .line 443
    return-void

    .line 426
    :cond_7
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    .line 428
    :cond_8
    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v0}, Lcom/htc/widget/HtcListItemUtil;->getDesiredTopGap(I)I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v1}, Lcom/htc/widget/HtcListItemUtil;->getDesiredBottomGap(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v10, v0

    goto :goto_3

    .line 433
    :cond_9
    move v10, v6

    goto :goto_3

    .line 436
    :cond_a
    move v10, v6

    goto :goto_3
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    .line 355
    :cond_0
    return-void

    .line 349
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 351
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 352
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem2TextComponent;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 353
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final setPrimaryLinkTextColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 245
    return-void
.end method

.method public final setPrimaryLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .parameter "colors"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 241
    return-void
.end method

.method public setPrimaryText(I)V
    .locals 3
    .parameter "rId"

    .prologue
    .line 199
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public final setPrimaryTextAutoLinkMask(I)V
    .locals 2
    .parameter "mask"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 233
    return-void
.end method

.method public setPrimaryTextStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setTextStyle(II)V

    .line 225
    return-void
.end method

.method public setPrimaryTextVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    return-void
.end method

.method public final setSecondaryLinkTextColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 321
    return-void
.end method

.method public final setSecondaryLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .parameter "colors"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 317
    return-void
.end method

.method public setSecondaryText(I)V
    .locals 3
    .parameter "rId"

    .prologue
    .line 287
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public final setSecondaryTextAutoLinkMask(I)V
    .locals 2
    .parameter "mask"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 309
    return-void
.end method

.method public setSecondaryTextStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 304
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setTextStyle(II)V

    .line 305
    return-void
.end method

.method public setSecondaryTextVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    return-void
.end method

.method public setUseFontSizeInStyle(Z)V
    .locals 3
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 136
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mUseFontSizeInStyle:Z

    .line 137
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextStyle:[I

    aget v0, v0, v1

    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcListItem2TextComponent;->setTextStyle(II)V

    .line 138
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mTextStyle:[I

    aget v0, v0, v2

    invoke-direct {p0, v2, v0}, Lcom/htc/widget/HtcListItem2TextComponent;->setTextStyle(II)V

    .line 139
    return-void
.end method
