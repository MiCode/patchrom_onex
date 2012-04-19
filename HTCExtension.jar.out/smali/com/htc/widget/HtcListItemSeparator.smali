.class public Lcom/htc/widget/HtcListItemSeparator;
.super Landroid/widget/FrameLayout;
.source "HtcListItemSeparator.java"


# static fields
.field private static HEIGHT_AUTOMOTIVE_DARK:I = 0x0

.field private static HEIGHT_WITHOUT_ACTIONBUTTON:I = 0x0

.field private static HEIGHT_WITHOUT_TEXT:I = 0x0

.field private static HEIGHT_WITH_ACTIONBUTTON:I = 0x0

.field private static HEIGHT_WITH_TOGGLEBUTTON:I = 0x0

.field public static final ICON_LEFT:I = 0x0

.field private static final ICON_MAX_NUM:I = 0x2

.field public static final ICON_RIGHT:I = 0x1

.field private static M1:I = 0x0

.field private static M2:I = 0x0

.field private static M4:I = 0x0

.field private static M5:I = 0x0

.field private static M6:I = 0x0

.field private static M7:I = 0x0

.field public static final MODE_AUTOMOTIVE_DARK:I = 0x4

.field public static final MODE_AUTOMOTIVE_WHITE:I = 0x2

.field public static final MODE_DARK_STYLE:I = 0x1

.field public static final MODE_WHITE_STYLE:I = 0x0

.field public static final TEXT_LEFT:I = 0x0

.field private static final TEXT_MAX_NUM:I = 0x3

.field public static final TEXT_MIDDLE:I = 0x1

.field public static final TEXT_RIGHT:I = 0x2

.field private static final WIDTH_DIVIDER:I = 0x2

.field private static WIDTH_ICONBUTTON:I = 0x0

.field private static WIDTH_IMAGEBUTTON:I = 0x0

.field private static final WIDTH_TOGGLEBUTTON:I = 0x7a


# instance fields
.field private mButtonFound:Z

.field private mContext:Landroid/content/Context;

.field private mCustomTextStyle:[I

.field private mDivider:Landroid/widget/ImageView;

.field private mIconButton:Lcom/htc/widget/HtcIconButton;

.field private mImageButton:Lcom/htc/widget/HtcImageButton;

.field private mImageView:[Landroid/widget/ImageView;

.field private mIsIconButton:Z

.field private mIsImageButton:Z

.field private mIsToggleButton:Z

.field private mMode:I

.field private mTextView:[Landroid/widget/TextView;

.field private mToggleButton:Lcom/htc/widget/HtcToggleButton;

.field private mUseSectionDivider:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x7a

    const/4 v1, 0x7

    .line 62
    const/16 v0, 0x40

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITH_TOGGLEBUTTON:I

    .line 63
    const/16 v0, 0x28

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITH_ACTIONBUTTON:I

    .line 64
    const/16 v0, 0x24

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITHOUT_ACTIONBUTTON:I

    .line 65
    const/4 v0, 0x2

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITHOUT_TEXT:I

    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_AUTOMOTIVE_DARK:I

    .line 71
    const/16 v0, 0x16

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->M1:I

    .line 72
    const/16 v0, 0x10

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    .line 73
    const/16 v0, 0x9

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->M4:I

    .line 74
    sput v1, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    .line 75
    const/4 v0, 0x4

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->M6:I

    .line 76
    sput v1, Lcom/htc/widget/HtcListItemSeparator;->M7:I

    .line 81
    sput v2, Lcom/htc/widget/HtcListItemSeparator;->WIDTH_ICONBUTTON:I

    .line 82
    sput v2, Lcom/htc/widget/HtcListItemSeparator;->WIDTH_IMAGEBUTTON:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 39
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 40
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 42
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 58
    iput v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mCustomTextStyle:[I

    .line 193
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;->init(Landroid/content/Context;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 39
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 40
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 42
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 58
    iput v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mCustomTextStyle:[I

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemSeparator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 39
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 40
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 42
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 58
    iput v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mCustomTextStyle:[I

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemSeparator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 204
    return-void
.end method

.method private changeTextColor(I)V
    .locals 6
    .parameter "style"

    .prologue
    .line 718
    const v1, 0x206004c

    .line 719
    .local v1, colorId:I
    if-nez p1, :cond_2

    .line 721
    const v1, 0x206004c

    .line 729
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    .local v0, arr$:[Landroid/widget/TextView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 730
    .local v4, text:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 731
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 729
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 722
    .end local v0           #arr$:[Landroid/widget/TextView;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #text:Landroid/widget/TextView;
    :cond_2
    const/4 v5, 0x1

    if-ne p1, v5, :cond_3

    .line 724
    const v1, 0x2060050

    goto :goto_0

    .line 725
    :cond_3
    const/4 v5, 0x4

    if-ne p1, v5, :cond_0

    .line 727
    const v1, 0x206004f

    goto :goto_0

    .line 732
    .restart local v0       #arr$:[Landroid/widget/TextView;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_4
    return-void
.end method

.method private findButton()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getChildCount()I

    move-result v0

    .line 213
    .local v0, count:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 214
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemSeparator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 215
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/widget/HtcIconButton;

    if-eqz v3, :cond_1

    .line 216
    check-cast v2, Lcom/htc/widget/HtcIconButton;

    .end local v2           #v:Landroid/view/View;
    iput-object v2, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    .line 217
    iput-boolean v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 218
    iput-boolean v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 219
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 220
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 243
    :cond_0
    :goto_1
    return-void

    .line 222
    .restart local v2       #v:Landroid/view/View;
    :cond_1
    instance-of v3, v2, Lcom/htc/widget/HtcToggleButton;

    if-eqz v3, :cond_2

    .line 223
    check-cast v2, Lcom/htc/widget/HtcToggleButton;

    .end local v2           #v:Landroid/view/View;
    iput-object v2, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    .line 224
    iget-object v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcToggleButton;->setFocusable(Z)V

    .line 225
    iput-boolean v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 226
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 227
    iput-boolean v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 228
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    goto :goto_1

    .line 232
    .restart local v2       #v:Landroid/view/View;
    :cond_2
    instance-of v3, v2, Lcom/htc/widget/HtcImageButton;

    if-eqz v3, :cond_3

    .line 233
    check-cast v2, Lcom/htc/widget/HtcImageButton;

    .end local v2           #v:Landroid/view/View;
    iput-object v2, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/widget/HtcImageButton;

    .line 234
    iput-boolean v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 235
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 236
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 237
    iput-boolean v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    .line 238
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    goto :goto_1

    .line 213
    .restart local v2       #v:Landroid/view/View;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private getImageView(I)Landroid/widget/ImageView;
    .locals 4
    .parameter "whichIcon"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p1

    .line 583
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemSeparator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getTextView(I)Landroid/widget/TextView;
    .locals 4
    .parameter "whichText"

    .prologue
    const/4 v3, -0x2

    .line 547
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p1

    .line 549
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemSeparator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;->initSize(Landroid/content/Context;)V

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    .line 91
    iput-object p1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    .line 94
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .line 95
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;->initSize(Landroid/content/Context;)V

    .line 99
    new-array v4, v9, [Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    .line 100
    new-array v4, v7, [Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    .line 101
    iput-object p1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    .line 104
    sget-object v4, Lcom/htc/R$styleable;->HtcListItemSeparator:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, a:Landroid/content/res/TypedArray;
    new-array v3, v9, [Ljava/lang/String;

    .line 110
    .local v3, texts:[Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 111
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 112
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 114
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 115
    aget-object v4, v3, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcListItemSeparator;->getTextView(I)Landroid/widget/TextView;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_1
    new-array v2, v7, [I

    .line 120
    .local v2, iconIds:[I
    invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v6

    .line 121
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v8

    .line 123
    const/4 v1, 0x0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 124
    aget v4, v2, v1

    if-eqz v4, :cond_2

    .line 125
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcListItemSeparator;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v4

    aget v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 126
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    sget-object v4, Lcom/htc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    .line 131
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    iget v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .line 136
    return-void
.end method

.method private initSize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const v2, 0x2050109

    .line 159
    if-nez p1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x2050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITH_TOGGLEBUTTON:I

    .line 166
    const v1, 0x2050108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITH_ACTIONBUTTON:I

    .line 169
    const v1, 0x2050107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITHOUT_ACTIONBUTTON:I

    .line 172
    const v1, 0x2050106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITHOUT_TEXT:I

    .line 175
    const v1, 0x205010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_AUTOMOTIVE_DARK:I

    .line 177
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->WIDTH_ICONBUTTON:I

    .line 179
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->WIDTH_IMAGEBUTTON:I

    .line 183
    const/high16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->M1:I

    .line 184
    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    .line 185
    const v1, 0x2050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->M4:I

    .line 186
    const v1, 0x205000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    .line 187
    const v1, 0x205000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->M6:I

    .line 188
    sget v1, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->M7:I

    goto :goto_0
.end method

.method private isVisible(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 709
    if-nez p1, :cond_1

    .line 713
    :cond_0
    :goto_0
    return v0

    .line 711
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 712
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeButton()V
    .locals 4

    .prologue
    .line 755
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getChildCount()I

    move-result v0

    .line 757
    .local v0, count:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 758
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemSeparator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 759
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/widget/HtcIconButton;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/htc/widget/HtcToggleButton;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/htc/widget/HtcImageButton;

    if-eqz v3, :cond_1

    .line 760
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListItemSeparator;->removeView(Landroid/view/View;)V

    .line 757
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 763
    .end local v2           #v:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private setBackgroundImage(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const v1, 0x208011e

    .line 640
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    if-eqz v0, :cond_1

    .line 641
    const v0, 0x2080042

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundResource(I)V

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    if-nez p1, :cond_2

    .line 645
    const v0, 0x2080099

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundResource(I)V

    goto :goto_0

    .line 646
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 647
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundResource(I)V

    goto :goto_0

    .line 649
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 650
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setDivider(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const v4, 0x2080036

    .line 143
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    .line 145
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemSeparator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    :cond_0
    if-nez p1, :cond_2

    .line 148
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    const v1, 0x2080037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 152
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setTextAppearance(I)V
    .locals 7
    .parameter "style"

    .prologue
    const v6, 0x2030048

    const v5, 0x2030006

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 661
    if-nez p1, :cond_5

    .line 662
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x203004d

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 664
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 665
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x203004d

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 674
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Lcom/htc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 704
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;->changeTextColor(I)V

    .line 706
    return-void

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 668
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 669
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 670
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 671
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 677
    :cond_5
    if-ne p1, v3, :cond_a

    .line 678
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 679
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x203000b

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 680
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 681
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x203000b

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 690
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Lcom/htc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 683
    :cond_7
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 684
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 685
    :cond_8
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 686
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 687
    :cond_9
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 688
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2

    .line 694
    :cond_a
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 696
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x2030086

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 697
    :cond_b
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 698
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x2030086

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 699
    :cond_c
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 700
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x2030086

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 701
    :cond_d
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x2030086

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_1
.end method

.method private setupCustomTextStyle()V
    .locals 4

    .prologue
    .line 746
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 747
    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mCustomTextStyle:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mCustomTextStyle:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 746
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    :cond_1
    return-void
.end method


# virtual methods
.method public getIcon(I)Landroid/widget/ImageView;
    .locals 1
    .parameter "whichIcon"

    .prologue
    .line 596
    packed-switch p1, :pswitch_data_0

    .line 602
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 599
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 361
    const/4 v4, 0x0

    .line 362
    .local v4, width:I
    const/4 v0, 0x0

    .line 363
    .local v0, height:I
    const/4 v3, 0x0

    .line 364
    .local v3, tmpright:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v2

    .line 365
    .local v2, tmpleft:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v1

    .line 368
    .local v1, rightedge:I
    iget-boolean v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    if-eqz v5, :cond_0

    .line 369
    iget-boolean v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_4

    .line 371
    sget v4, Lcom/htc/widget/HtcListItemSeparator;->WIDTH_ICONBUTTON:I

    .line 372
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcIconButton;->getMeasuredHeight()I

    move-result v0

    .line 373
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/widget/HtcIconButton;->layout(IIII)V

    .line 379
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v5

    sub-int v2, v5, v4

    .line 380
    const/4 v4, 0x2

    .line 381
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 382
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    sub-int v6, v2, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 387
    sub-int/2addr v2, v4

    .line 388
    move v1, v2

    .line 390
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_7

    .line 434
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    .line 435
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 436
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    sget v6, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    sub-int v6, v2, v6

    sub-int/2addr v6, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    sget v8, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    sub-int v8, v2, v8

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 442
    sub-int v5, v2, v4

    sget v6, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    sub-int/2addr v5, v6

    sget v6, Lcom/htc/widget/HtcListItemSeparator;->M7:I

    sub-int v2, v5, v6

    .line 443
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 444
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 445
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 446
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    sub-int v6, v2, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 465
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_8

    .line 466
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    .line 467
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 468
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    sget v6, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    sget v8, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    add-int/2addr v8, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 474
    sget v5, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    add-int/2addr v5, v4

    sget v6, Lcom/htc/widget/HtcListItemSeparator;->M7:I

    add-int v3, v5, v6

    .line 475
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    .line 476
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 477
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 478
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    add-int v7, v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 507
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    .line 508
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 509
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 510
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    sub-int v6, v1, v4

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    add-int v8, v1, v4

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 516
    :cond_3
    return-void

    .line 391
    :cond_4
    iget-boolean v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcToggleButton;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_5

    .line 393
    const/16 v4, 0x7a

    .line 394
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcToggleButton;->getMeasuredHeight()I

    move-result v0

    .line 395
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/widget/HtcToggleButton;->layout(IIII)V

    .line 401
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v5

    sub-int v2, v5, v4

    .line 402
    move v1, v2

    .line 404
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 405
    :cond_5
    iget-boolean v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcImageButton;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_6

    .line 407
    sget v4, Lcom/htc/widget/HtcListItemSeparator;->WIDTH_IMAGEBUTTON:I

    .line 408
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcImageButton;->getMeasuredHeight()I

    move-result v0

    .line 409
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/widget/HtcImageButton;->layout(IIII)V

    .line 415
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v5

    sub-int v2, v5, v4

    .line 416
    const/4 v4, 0x2

    .line 417
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 418
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    sub-int v6, v2, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 423
    sub-int/2addr v2, v4

    .line 424
    move v1, v2

    .line 426
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 428
    :cond_6
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 453
    :cond_7
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 454
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 455
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 456
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    sub-int v6, v2, v4

    sget v7, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    sget v8, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    sub-int v8, v2, v8

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_1

    .line 485
    :cond_8
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    .line 486
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 487
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 489
    iget v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_9

    .line 490
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    sget v6, Lcom/htc/widget/HtcListItemSeparator;->M1:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    sget v8, Lcom/htc/widget/HtcListItemSeparator;->M1:I

    add-int/2addr v8, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_2

    .line 496
    :cond_9
    iget-object v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    sget v6, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    sget v8, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    add-int/2addr v8, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "wSpec"
    .parameter "hSpec"

    .prologue
    .line 252
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    if-nez v10, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemSeparator;->findButton()V

    .line 256
    :cond_0
    iget v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .line 257
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemSeparator;->setupCustomTextStyle()V

    .line 260
    const/4 v9, 0x0

    .line 261
    .local v9, w:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 273
    :goto_0
    :sswitch_0
    const/4 v7, 0x0

    .line 276
    .local v7, maxHeight:I
    iget v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_5

    .line 277
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    if-eqz v10, :cond_4

    .line 278
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    if-eqz v10, :cond_1

    .line 279
    sget v7, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITH_ACTIONBUTTON:I

    .line 280
    :cond_1
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    if-eqz v10, :cond_2

    .line 281
    sget v7, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITH_TOGGLEBUTTON:I

    .line 283
    :cond_2
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    if-eqz v10, :cond_3

    .line 285
    sget v7, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITH_ACTIONBUTTON:I

    .line 291
    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/widget/HtcImageButton;

    if-nez v10, :cond_6

    .line 294
    sget v7, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITHOUT_TEXT:I

    .line 295
    const v10, 0x2080042

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundResource(I)V

    .line 296
    invoke-virtual {p0, v9, v7}, Lcom/htc/widget/HtcListItemSeparator;->setMeasuredDimension(II)V

    .line 354
    :goto_2
    return-void

    .line 264
    .end local v7           #maxHeight:I
    :sswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 265
    goto :goto_0

    .line 288
    .restart local v7       #maxHeight:I
    :cond_4
    sget v7, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITHOUT_ACTIONBUTTON:I

    goto :goto_1

    .line 301
    :cond_5
    sget v7, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_AUTOMOTIVE_DARK:I

    .line 306
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getChildCount()I

    move-result v2

    .line 308
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v2, :cond_7

    .line 309
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListItemSeparator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 310
    .local v1, child:Landroid/view/View;
    invoke-virtual {p0, v1, p1, p2}, Lcom/htc/widget/HtcListItemSeparator;->measureChild(Landroid/view/View;II)V

    .line 308
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 314
    .end local v1           #child:Landroid/view/View;
    :cond_7
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    .local v0, arr$:[Landroid/widget/TextView;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_4
    if-ge v5, v6, :cond_9

    aget-object v8, v0, v5

    .line 315
    .local v8, text:Landroid/widget/TextView;
    if-eqz v8, :cond_8

    .line 316
    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 314
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 320
    .end local v8           #text:Landroid/widget/TextView;
    :cond_9
    const/4 v3, 0x0

    .line 321
    .local v3, dividerHeight:I
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    if-eqz v10, :cond_e

    .line 322
    sget v10, Lcom/htc/widget/HtcListItemSeparator;->M4:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v3, v7, v10

    .line 329
    :cond_a
    :goto_5
    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    const/4 v11, 0x2

    const/high16 v12, 0x4000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, 0x4000

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/ImageView;->measure(II)V

    .line 334
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    if-eqz v10, :cond_d

    .line 335
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    if-eqz v10, :cond_b

    .line 336
    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    sget v11, Lcom/htc/widget/HtcListItemSeparator;->WIDTH_ICONBUTTON:I

    const/high16 v12, 0x4000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, 0x4000

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcIconButton;->measure(II)V

    .line 340
    :cond_b
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    if-eqz v10, :cond_c

    .line 341
    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    const/16 v11, 0x7a

    const/high16 v12, 0x4000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, 0x4000

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcToggleButton;->measure(II)V

    .line 346
    :cond_c
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    if-eqz v10, :cond_d

    .line 347
    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/widget/HtcImageButton;

    sget v11, Lcom/htc/widget/HtcListItemSeparator;->WIDTH_IMAGEBUTTON:I

    const/high16 v12, 0x4000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, 0x4000

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcImageButton;->measure(II)V

    .line 353
    :cond_d
    invoke-virtual {p0, v9, v7}, Lcom/htc/widget/HtcListItemSeparator;->setMeasuredDimension(II)V

    goto/16 :goto_2

    .line 323
    :cond_e
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    if-eqz v10, :cond_f

    .line 324
    sget v10, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v3, v7, v10

    goto :goto_5

    .line 326
    :cond_f
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    if-eqz v10, :cond_a

    .line 327
    sget v10, Lcom/htc/widget/HtcListItemSeparator;->M4:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v3, v7, v10

    goto :goto_5

    .line 261
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setBackgroundStyle(I)V
    .locals 2
    .parameter "style"

    .prologue
    const/4 v1, 0x1

    .line 614
    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iput p1, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    .line 617
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundImage(I)V

    .line 618
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->setDivider(I)V

    .line 619
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->setTextAppearance(I)V

    .line 620
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 621
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 623
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setMode(I)V

    goto :goto_0

    .line 626
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setMode(I)V

    goto :goto_0

    .line 630
    :pswitch_3
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setMode(I)V

    goto :goto_0

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setIcon(II)V
    .locals 1
    .parameter "whichIcon"
    .parameter "resId"

    .prologue
    .line 573
    packed-switch p1, :pswitch_data_0

    .line 578
    :goto_0
    return-void

    .line 576
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "whichIcon"
    .parameter "d"

    .prologue
    .line 561
    packed-switch p1, :pswitch_data_0

    .line 566
    :goto_0
    return-void

    .line 564
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setIconButton(Lcom/htc/widget/HtcIconButton;)V
    .locals 5
    .parameter "iconButton"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 766
    if-eqz p1, :cond_0

    .line 767
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListItemSeparator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    iput-object p1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    .line 769
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 770
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 771
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 772
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 773
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    if-nez v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x2030048

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    if-ne v0, v3, :cond_2

    .line 776
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x2030006

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 779
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 780
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x2030086

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public setImageButton(Lcom/htc/widget/HtcImageButton;)V
    .locals 5
    .parameter "imageButton"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 788
    if-eqz p1, :cond_0

    .line 789
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListItemSeparator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    iput-object p1, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/widget/HtcImageButton;

    .line 791
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 792
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 793
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    .line 794
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 795
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 797
    :cond_0
    return-void
.end method

.method public setText(II)V
    .locals 1
    .parameter "whichText"
    .parameter "resId"

    .prologue
    .line 537
    packed-switch p1, :pswitch_data_0

    .line 544
    :goto_0
    return-void

    .line 541
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 542
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->setTextAppearance(I)V

    goto :goto_0

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setText(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "whichText"
    .parameter "text"

    .prologue
    .line 523
    packed-switch p1, :pswitch_data_0

    .line 530
    :goto_0
    return-void

    .line 527
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->setTextAppearance(I)V

    goto :goto_0

    .line 523
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setTextStyle(II)V
    .locals 1
    .parameter "index"
    .parameter "style"

    .prologue
    .line 741
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mCustomTextStyle:[I

    aput p2, v0, p1

    .line 743
    :cond_0
    return-void
.end method

.method public setToggleButton(Lcom/htc/widget/HtcToggleButton;)V
    .locals 5
    .parameter "toggleButton"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 805
    if-eqz p1, :cond_0

    .line 806
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListItemSeparator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 807
    iput-object p1, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    .line 808
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 809
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 810
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 811
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 813
    :cond_0
    return-void
.end method
