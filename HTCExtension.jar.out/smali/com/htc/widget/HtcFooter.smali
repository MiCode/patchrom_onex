.class public Lcom/htc/widget/HtcFooter;
.super Landroid/view/ViewGroup;
.source "HtcFooter.java"


# static fields
.field private static final DEF_CHILD_WEIGHT:F = 1.0f

.field public static final DISPLAY_MODE_ALWAYSBOTTOM:I = 0x2

.field public static final DISPLAY_MODE_ALWAYSRIGHT:I = 0x1

.field public static final DISPLAY_MODE_DEFAULT:I


# instance fields
.field private final TRANSPARENT_RATIO:I

.field private dividerM2:I

.field private footerArea:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mDefHeight:I

.field private mDefWidth:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMode:I

.field private mHorizontal:Z

.field private mOneChildHeight:I

.field private mOneChildHeightOfLand:I

.field private mOneChildHeightOfPort:I

.field private mOneChildWidth:I

.field private mOneChildWidthOfLand:I

.field private mOneChildWidthOfPort:I

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeperatorHeight:I

.field private mSeperatorWidth:I

.field private mTransparent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v7, 0x2030103

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 174
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const v2, 0x43658000

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFooter;->TRANSPARENT_RATIO:I

    .line 79
    iput v3, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    .line 97
    iput-boolean v4, p0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    .line 104
    iput-boolean v3, p0, Lcom/htc/widget/HtcFooter;->mTransparent:Z

    .line 107
    iput v3, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    .line 1169
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    .line 175
    iput-object p1, p0, Lcom/htc/widget/HtcFooter;->mContext:Landroid/content/Context;

    .line 177
    sget-object v2, Lcom/htc/R$styleable;->HtcFooter:[I

    invoke-virtual {p1, p2, v2, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 180
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfPort:I

    .line 183
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfLand:I

    .line 186
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFooter;->mOneChildHeightOfPort:I

    .line 190
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFooter;->mOneChildHeightOfLand:I

    .line 194
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/widget/HtcFooter;->mTransparent:Z

    .line 200
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 202
    .local v1, nDisplayMode:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    sget-object v2, Lcom/android/internal/R$styleable;->ViewGroup_Layout:[I

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFooter;->mDefHeight:I

    .line 209
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFooter;->mDefWidth:I

    .line 212
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    iget-object v2, p0, Lcom/htc/widget/HtcFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    .line 215
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    .line 226
    return-void
.end method

.method private getChildWeight(Landroid/view/View;)I
    .locals 5
    .parameter "child"

    .prologue
    const/high16 v2, 0x3f80

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 302
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 304
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    :goto_0
    float-to-int v2, v2

    .line 310
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return v2

    .line 304
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    const/4 v2, 0x1

    goto :goto_1

    .line 310
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getChildWidth(Landroid/view/View;)I
    .locals 5
    .parameter "child"

    .prologue
    const/4 v2, 0x1

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 320
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 322
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x3f80

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 328
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return v2

    .line 322
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 328
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getChildrenTotalWeight()I
    .locals 5

    .prologue
    .line 336
    const/4 v3, 0x0

    .line 337
    .local v3, nTotalWeight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v2

    .line 339
    .local v2, nChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 340
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcFooter;->getChildWeight(Landroid/view/View;)I

    move-result v4

    int-to-float v0, v4

    .line 341
    .local v0, fChildWeight:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    const/4 v4, 0x0

    :goto_1
    add-int/2addr v3, v4

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_0
    float-to-int v4, v0

    goto :goto_1

    .line 343
    .end local v0           #fChildWeight:F
    :cond_1
    return v3
.end method

.method private getChildrenTotalWidth()I
    .locals 5

    .prologue
    .line 350
    const/4 v3, 0x0

    .line 351
    .local v3, nTotalWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v2

    .line 353
    .local v2, nChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 354
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcFooter;->getChildWidth(Landroid/view/View;)I

    move-result v4

    int-to-float v0, v4

    .line 355
    .local v0, fChildWidth:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    const/4 v4, 0x0

    :goto_1
    add-int/2addr v3, v4

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    :cond_0
    float-to-int v4, v0

    goto :goto_1

    .line 357
    .end local v0           #fChildWidth:F
    :cond_1
    return v3
.end method

.method private getSeparatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getViewOrientation()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcFooter;->mDisplay:Landroid/view/Display;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 272
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    .line 277
    :goto_0
    return-void

    .line 274
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    goto :goto_0
.end method

.method private getVisibleChildCount()I
    .locals 6

    .prologue
    .line 283
    const/4 v3, 0x0

    .line 284
    .local v3, nVisibleCount:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v2

    .line 287
    .local v2, nChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 288
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 290
    add-int/lit8 v3, v3, 0x1

    .line 287
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return v3
.end method

.method private initFooter()V
    .locals 3

    .prologue
    const v2, 0x2080041

    const v1, 0x2080036

    .line 232
    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getViewOrientation()V

    .line 233
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    packed-switch v0, :pswitch_data_0

    .line 247
    iget-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcFooter;->setSeparatorResource(I)V

    .line 259
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mTransparent:Z

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 260
    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->setFooterButton()V

    .line 261
    return-void

    .line 237
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcFooter;->setSeparatorResource(I)V

    goto :goto_0

    .line 243
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcFooter;->setSeparatorResource(I)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcFooter;->setSeparatorResource(I)V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setFooterButton()V
    .locals 5

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v1

    .line 668
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 669
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 670
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Lcom/htc/widget/HtcFooterButton;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 671
    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .end local v0           #child:Landroid/view/View;
    iget v3, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->FooterDisplayMode(I)V

    .line 668
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 674
    :cond_1
    return-void
.end method

.method private setSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "seperator"

    .prologue
    .line 996
    iput-object p1, p0, Lcom/htc/widget/HtcFooter;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 997
    if-nez p1, :cond_1

    .line 998
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorWidth(I)V

    .line 1042
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1001
    .restart local p1
    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 1002
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    packed-switch v0, :pswitch_data_0

    .line 1012
    iget-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    if-eqz v0, :cond_2

    .line 1013
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorHeight(I)V

    goto :goto_0

    .line 1004
    .restart local p1
    :pswitch_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorWidth(I)V

    goto :goto_0

    .line 1008
    .restart local p1
    :pswitch_1
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorHeight(I)V

    goto :goto_0

    .line 1015
    .restart local p1
    :cond_2
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorWidth(I)V

    goto :goto_0

    .line 1020
    .restart local p1
    :cond_3
    instance-of v0, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 1021
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    packed-switch v0, :pswitch_data_1

    .line 1031
    iget-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    if-eqz v0, :cond_4

    .line 1032
    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorHeight(I)V

    goto :goto_0

    .line 1023
    .restart local p1
    :pswitch_2
    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorWidth(I)V

    goto :goto_0

    .line 1027
    .restart local p1
    :pswitch_3
    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorHeight(I)V

    goto :goto_0

    .line 1034
    .restart local p1
    :cond_4
    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorWidth(I)V

    goto :goto_0

    .line 1002
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1021
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private setSeparatorResource(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 1049
    if-eqz p1, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1051
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1053
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method


# virtual methods
.method public GetAlwaysBottom()Z
    .locals 1

    .prologue
    .line 1127
    const/4 v0, 0x1

    return v0
.end method

.method public GetAlwaysRight()Z
    .locals 1

    .prologue
    .line 1137
    const/4 v0, 0x1

    return v0
.end method

.method public SetAlwaysBottom(Z)V
    .locals 1
    .parameter "bottom"

    .prologue
    .line 1108
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    .line 1109
    return-void
.end method

.method public SetAlwaysRight(Z)V
    .locals 1
    .parameter "right"

    .prologue
    .line 1117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    .line 1118
    return-void
.end method

.method public SetDisplayMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1147
    packed-switch p1, :pswitch_data_0

    .line 1154
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    .line 1158
    :goto_0
    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->initFooter()V

    .line 1159
    return-void

    .line 1150
    :pswitch_0
    iput p1, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    goto :goto_0

    .line 1147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 904
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 905
    return-void
.end method

.method public enableSecondBackground(Z)V
    .locals 0
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 983
    return-void
.end method

.method public enableTransparentBckground(Z)V
    .locals 10
    .parameter "bTransparent"

    .prologue
    .line 908
    const/4 v0, 0x0

    .line 910
    .local v0, backgroundDrawable:Landroid/graphics/drawable/Drawable;
    iput-boolean p1, p0, Lcom/htc/widget/HtcFooter;->mTransparent:Z

    .line 912
    iget-object v9, p0, Lcom/htc/widget/HtcFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 914
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingLeft()I

    move-result v2

    .line 915
    .local v2, leftPadding:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingRight()I

    move-result v6

    .line 916
    .local v6, rightPadding:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v8

    .line 917
    .local v8, topPadding:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingBottom()I

    move-result v1

    .line 919
    .local v1, bottomPadding:I
    const-string v7, "common_app_bkg_down_src"

    .line 920
    .local v7, sResName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 921
    .local v3, nDefResID:I
    iget v9, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    packed-switch v9, :pswitch_data_0

    .line 933
    iget-boolean v9, p0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    if-eqz v9, :cond_1

    .line 934
    const v3, 0x2080148

    .line 935
    const-string v7, "common_app_bkg_down_land_src"

    .line 944
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v7, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 945
    .local v4, nResID:I
    if-eqz v4, :cond_0

    .line 946
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 947
    iget-boolean v9, p0, Lcom/htc/widget/HtcFooter;->mTransparent:Z

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/htc/widget/HtcFooter;->TRANSPARENT_RATIO:I

    :goto_1
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 948
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 952
    :cond_0
    invoke-virtual {p0, v2, v8, v6, v1}, Lcom/htc/widget/HtcFooter;->setPadding(IIII)V

    .line 955
    return-void

    .line 923
    .end local v4           #nResID:I
    :pswitch_0
    const v3, 0x2080039

    .line 924
    const-string v7, "common_app_bkg_down_src"

    .line 926
    goto :goto_0

    .line 928
    :pswitch_1
    const v3, 0x2080148

    .line 929
    const-string v7, "common_app_bkg_down_land_src"

    .line 931
    goto :goto_0

    .line 937
    :cond_1
    const v3, 0x2080039

    .line 938
    const-string v7, "common_app_bkg_down_src"

    goto :goto_0

    .line 947
    .restart local v4       #nResID:I
    :cond_2
    const/16 v9, 0xff

    goto :goto_1

    .line 921
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    .line 726
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 729
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcFooter;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "p"

    .prologue
    .line 774
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 777
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 7
    .parameter "attrs"

    .prologue
    const/4 v5, -0x2

    .line 744
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 749
    .local v4, vglp:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/internal/R$styleable;->LinearLayout_Layout:[I

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 753
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x3

    const/high16 v6, 0x3f80

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 756
    .local v2, fWeight:F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 758
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 759
    return-object v3

    .line 745
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v2           #fWeight:F
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #vglp:Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v1

    .line 746
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .restart local v4       #vglp:Landroid/view/ViewGroup$LayoutParams;
    goto :goto_0
.end method

.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 1165
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    return v0
.end method

.method public getFooterArea()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getWidth()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getHeight()I

    move-result v1

    if-gez v1, :cond_1

    .line 1175
    :cond_0
    const/4 v1, 0x0

    .line 1190
    :goto_0
    return-object v1

    .line 1177
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 1178
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    .line 1180
    :cond_2
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1183
    .local v0, screenLoc:[I
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->getLocationOnScreen([I)V

    .line 1185
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1186
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1187
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1188
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1190
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getOneChildHeight()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildHeight:I

    return v0
.end method

.method public getOneChildWidth()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidth:I

    return v0
.end method

.method public getSeperatorHeight()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mSeperatorHeight:I

    return v0
.end method

.method public getSeperatorWidth()I
    .locals 1

    .prologue
    .line 681
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mSeperatorWidth:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1063
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1068
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const-wide/high16 v11, 0x3fe0

    .line 788
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 790
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 792
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 793
    .local v8, rect:Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 794
    .local v0, LastView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v4

    .line 795
    .local v4, nChildren:I
    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getVisibleChildCount()I

    move-result v7

    .line 796
    .local v7, nVisibleChildren:I
    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getSeparatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 797
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getSeperatorWidth()I

    move-result v9

    int-to-double v9, v9

    mul-double/2addr v9, v11

    double-to-int v5, v9

    .line 798
    .local v5, nHalfOfSperatorWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getSeperatorHeight()I

    move-result v9

    int-to-double v9, v9

    mul-double/2addr v9, v11

    double-to-int v6, v9

    .line 800
    .local v6, nHalfofSperatorHeihgt:I
    const/4 v9, 0x1

    if-ne v9, v7, :cond_1

    if-eqz v2, :cond_1

    .line 877
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 878
    return-void

    .line 835
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 836
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 837
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_3

    .line 838
    if-eqz v0, :cond_2

    .line 839
    if-eqz v2, :cond_2

    .line 840
    iget v9, p0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    packed-switch v9, :pswitch_data_0

    .line 855
    iget-boolean v9, p0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    if-eqz v9, :cond_4

    .line 856
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    add-int/2addr v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    iget v12, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    sub-int/2addr v11, v12

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 869
    :goto_1
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 870
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 873
    :cond_2
    move-object v0, v1

    .line 835
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 842
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    add-int/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v11

    add-int/2addr v11, v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v12

    iget v13, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    sub-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 848
    :pswitch_1
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    add-int/2addr v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    iget v12, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    sub-int/2addr v11, v12

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 861
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    add-int/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v11

    add-int/2addr v11, v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v12

    iget v13, p0, Lcom/htc/widget/HtcFooter;->dividerM2:I

    sub-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 840
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v8

    .line 373
    .local v8, nChildren:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getVisibleChildCount()I

    move-result v13

    .line 375
    .local v13, nVisibleCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingLeft()I

    move-result v18

    .line 376
    .local v18, parentLeft:I
    sub-int v21, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingRight()I

    move-result v22

    sub-int v19, v21, v22

    .line 378
    .local v19, parentRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v20

    .line 379
    .local v20, parentTop:I
    sub-int v21, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingBottom()I

    move-result v22

    sub-int v17, v21, v22

    .line 382
    .local v17, parentBottom:I
    packed-switch v13, :pswitch_data_0

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingLeft()I

    move-result v15

    .line 396
    .local v15, npl:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v16

    .line 398
    .local v16, npt:I
    move v10, v15

    .line 399
    .local v10, nLastLeft:I
    move/from16 v11, v16

    .line 400
    .local v11, nLastTop:I
    const/4 v12, 0x0

    .line 401
    .local v12, nViewCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v6

    .line 402
    .local v6, childTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingLeft()I

    move-result v5

    .line 403
    .local v5, childLeft:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_3

    .line 404
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 405
    .local v4, child:Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 406
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_1

    .line 424
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 425
    move v6, v11

    .line 426
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v21, v21, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v22, v22, v6

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 429
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v11, v11, v21

    .line 440
    :goto_1
    add-int/lit8 v12, v12, 0x1

    .line 403
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 384
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childLeft:I
    .end local v6           #childTop:I
    .end local v7           #i:I
    .end local v10           #nLastLeft:I
    .end local v11           #nLastTop:I
    .end local v12           #nViewCount:I
    .end local v15           #npl:I
    .end local v16           #npt:I
    :pswitch_0
    move/from16 v14, v19

    .line 385
    .local v14, nWidth:I
    move/from16 v9, v17

    .line 386
    .local v9, nHeight:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    if-ge v7, v8, :cond_3

    .line 387
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 388
    .restart local v4       #child:Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 389
    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 386
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 408
    .end local v9           #nHeight:I
    .end local v14           #nWidth:I
    .restart local v5       #childLeft:I
    .restart local v6       #childTop:I
    .restart local v10       #nLastLeft:I
    .restart local v11       #nLastTop:I
    .restart local v12       #nViewCount:I
    .restart local v15       #npl:I
    .restart local v16       #npt:I
    :pswitch_1
    move v5, v10

    .line 409
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v21, v21, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v22, v22, v11

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v5, v11, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 412
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v10, v10, v21

    .line 414
    goto :goto_1

    .line 416
    :pswitch_2
    move v6, v11

    .line 417
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v21, v21, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v22, v22, v6

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 420
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v11, v11, v21

    .line 422
    goto :goto_1

    .line 431
    :cond_2
    move v5, v10

    .line 432
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v21, v21, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v22, v22, v11

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v5, v11, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 435
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v10, v10, v21

    goto :goto_1

    .line 445
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childLeft:I
    .end local v6           #childTop:I
    .end local v10           #nLastLeft:I
    .end local v11           #nLastTop:I
    .end local v12           #nViewCount:I
    .end local v15           #npl:I
    .end local v16           #npt:I
    :cond_3
    return-void

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 406
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 32
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingLeft()I

    move-result v25

    .line 460
    .local v25, npl:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingRight()I

    move-result v26

    .line 461
    .local v26, npr:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v27

    .line 462
    .local v27, npt:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingBottom()I

    move-result v24

    .line 463
    .local v24, npb:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 464
    .local v23, nWidth:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 466
    .local v12, nHeight:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getViewOrientation()V

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    .line 469
    .local v28, vglp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_0

    .line 495
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    move/from16 v30, v0

    if-eqz v30, :cond_9

    .line 496
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 497
    .local v4, height:I
    if-eqz v28, :cond_0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v30, v0

    if-lez v30, :cond_0

    const/16 v30, -0x2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v30, -0x1

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 500
    :cond_0
    const/16 v30, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 504
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFooter;->mDefWidth:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v23

    .line 505
    move v12, v4

    .line 525
    .end local v4           #height:I
    :goto_0
    sub-int v30, v12, v27

    sub-int v11, v30, v24

    .line 526
    .local v11, nContentHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v10

    .line 527
    .local v10, nChildren:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getVisibleChildCount()I

    move-result v22

    .line 529
    .local v22, nVisibleCount:I
    sub-int v30, v23, v25

    sub-int v17, v30, v26

    .line 531
    .local v17, nTotalChildrenWidth:I
    const/4 v7, 0x0

    .line 532
    .local v7, nChildWMeasureSpec:I
    const/4 v6, 0x0

    .line 536
    .local v6, nChildHMeasureSpec:I
    packed-switch v22, :pswitch_data_1

    .line 550
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getChildrenTotalWeight()I

    move-result v18

    .line 553
    .local v18, nTotalWeight:I
    if-lez v18, :cond_d

    div-int v20, v17, v18

    .line 555
    .local v20, nUnitWidth:I
    :goto_1
    if-lez v18, :cond_e

    div-int v19, v11, v18

    .line 557
    .local v19, nUnitHeight:I
    :goto_2
    if-lez v18, :cond_f

    rem-int v14, v17, v18

    .line 559
    .local v14, nRemainderWidth:I
    :goto_3
    if-lez v18, :cond_10

    rem-int v13, v11, v18

    .line 562
    .local v13, nRemainderHeight:I
    :goto_4
    move/from16 v16, v14

    .line 563
    .local v16, nRestWidth:I
    move v15, v13

    .line 565
    .local v15, nRestHeight:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_5
    if-ge v5, v10, :cond_15

    .line 566
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 567
    .local v3, child:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/widget/HtcFooter;->getChildWeight(Landroid/view/View;)I

    move-result v21

    .line 569
    .local v21, nVisChildWeight:I
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_4

    .line 570
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFooter;->mDisplayMode:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_2

    .line 607
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcFooter;->mHorizontal:Z

    move/from16 v30, v0

    if-eqz v30, :cond_13

    .line 608
    mul-int v8, v21, v19

    .line 610
    .local v8, nChildWeight:I
    if-lez v15, :cond_2

    if-lez v21, :cond_2

    .line 611
    move/from16 v0, v21

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v30

    add-int v8, v8, v30

    .line 615
    :cond_2
    const/high16 v30, 0x4000

    move/from16 v0, v17

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 617
    const/high16 v30, 0x4000

    move/from16 v0, v30

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 620
    if-lez v15, :cond_3

    if-lez v21, :cond_3

    .line 621
    move/from16 v0, v21

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v30

    add-int v15, v15, v30

    .line 642
    .end local v8           #nChildWeight:I
    :cond_3
    :goto_6
    invoke-virtual {v3, v7, v6}, Landroid/view/View;->measure(II)V

    .line 565
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 471
    .end local v3           #child:Landroid/view/View;
    .end local v5           #i:I
    .end local v6           #nChildHMeasureSpec:I
    .end local v7           #nChildWMeasureSpec:I
    .end local v10           #nChildren:I
    .end local v11           #nContentHeight:I
    .end local v13           #nRemainderHeight:I
    .end local v14           #nRemainderWidth:I
    .end local v15           #nRestHeight:I
    .end local v16           #nRestWidth:I
    .end local v17           #nTotalChildrenWidth:I
    .end local v18           #nTotalWeight:I
    .end local v19           #nUnitHeight:I
    .end local v20           #nUnitWidth:I
    .end local v21           #nVisChildWeight:I
    .end local v22           #nVisibleCount:I
    :pswitch_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v29

    .line 472
    .local v29, width:I
    if-eqz v28, :cond_5

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v30, v0

    if-lez v30, :cond_5

    const/16 v30, -0x2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_5

    const/16 v30, -0x1

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 474
    :cond_5
    const/16 v30, 0x0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 478
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFooter;->mDefHeight:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v12

    .line 479
    move/from16 v23, v29

    .line 481
    goto/16 :goto_0

    .line 483
    .end local v29           #width:I
    :pswitch_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 484
    .restart local v4       #height:I
    if-eqz v28, :cond_7

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v30, v0

    if-lez v30, :cond_7

    const/16 v30, -0x2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    const/16 v30, -0x1

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 486
    :cond_7
    const/16 v30, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 490
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFooter;->mDefWidth:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v23

    .line 491
    move v12, v4

    .line 493
    goto/16 :goto_0

    .line 508
    .end local v4           #height:I
    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v29

    .line 509
    .restart local v29       #width:I
    if-eqz v28, :cond_a

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v30, v0

    if-lez v30, :cond_a

    const/16 v30, -0x2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_a

    const/16 v30, -0x1

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_b

    .line 512
    :cond_a
    const/16 v30, 0x0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 516
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFooter;->mDefHeight:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v12

    .line 517
    move/from16 v23, v29

    goto/16 :goto_0

    .line 538
    .end local v29           #width:I
    .restart local v6       #nChildHMeasureSpec:I
    .restart local v7       #nChildWMeasureSpec:I
    .restart local v10       #nChildren:I
    .restart local v11       #nContentHeight:I
    .restart local v17       #nTotalChildrenWidth:I
    .restart local v22       #nVisibleCount:I
    :pswitch_2
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_7
    if-ge v5, v10, :cond_15

    .line 539
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 540
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_c

    .line 541
    const/high16 v30, 0x4000

    move/from16 v0, v17

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 543
    const/high16 v30, 0x4000

    move/from16 v0, v30

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 545
    invoke-virtual {v3, v7, v6}, Landroid/view/View;->measure(II)V

    .line 538
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .end local v3           #child:Landroid/view/View;
    .end local v5           #i:I
    .restart local v18       #nTotalWeight:I
    :cond_d
    move/from16 v20, v17

    .line 553
    goto/16 :goto_1

    .restart local v20       #nUnitWidth:I
    :cond_e
    move/from16 v19, v11

    .line 555
    goto/16 :goto_2

    .line 557
    .restart local v19       #nUnitHeight:I
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 559
    .restart local v14       #nRemainderWidth:I
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 572
    .restart local v3       #child:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v13       #nRemainderHeight:I
    .restart local v15       #nRestHeight:I
    .restart local v16       #nRestWidth:I
    .restart local v21       #nVisChildWeight:I
    :pswitch_3
    mul-int v9, v21, v20

    .line 574
    .local v9, nChildWidth:I
    if-lez v16, :cond_11

    if-lez v21, :cond_11

    .line 575
    move/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    add-int v9, v9, v30

    .line 578
    :cond_11
    const/high16 v30, 0x4000

    move/from16 v0, v30

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 580
    const/high16 v30, 0x4000

    move/from16 v0, v30

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 582
    if-lez v16, :cond_3

    if-lez v21, :cond_3

    .line 583
    move/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    add-int v16, v16, v30

    goto/16 :goto_6

    .line 588
    .end local v9           #nChildWidth:I
    :pswitch_4
    mul-int v8, v21, v19

    .line 590
    .restart local v8       #nChildWeight:I
    if-lez v15, :cond_12

    if-lez v21, :cond_12

    .line 591
    move/from16 v0, v21

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v30

    add-int v8, v8, v30

    .line 595
    :cond_12
    const/high16 v30, 0x4000

    move/from16 v0, v17

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 597
    const/high16 v30, 0x4000

    move/from16 v0, v30

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 600
    if-lez v15, :cond_3

    if-lez v21, :cond_3

    .line 601
    move/from16 v0, v21

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v30

    add-int v15, v15, v30

    goto/16 :goto_6

    .line 625
    .end local v8           #nChildWeight:I
    :cond_13
    mul-int v9, v21, v20

    .line 627
    .restart local v9       #nChildWidth:I
    if-lez v16, :cond_14

    if-lez v21, :cond_14

    .line 628
    move/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    add-int v9, v9, v30

    .line 631
    :cond_14
    const/high16 v30, 0x4000

    move/from16 v0, v30

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 633
    const/high16 v30, 0x4000

    move/from16 v0, v30

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 635
    if-lez v16, :cond_3

    if-lez v21, :cond_3

    .line 636
    move/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    add-int v16, v16, v30

    goto/16 :goto_6

    .line 654
    .end local v3           #child:Landroid/view/View;
    .end local v9           #nChildWidth:I
    .end local v13           #nRemainderHeight:I
    .end local v14           #nRemainderWidth:I
    .end local v15           #nRestHeight:I
    .end local v16           #nRestWidth:I
    .end local v18           #nTotalWeight:I
    .end local v19           #nUnitHeight:I
    .end local v20           #nUnitWidth:I
    .end local v21           #nVisChildWeight:I
    :cond_15
    move/from16 v0, v23

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v30

    move/from16 v0, p2

    invoke-static {v12, v0}, Landroid/view/View;->getDefaultSize(II)I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcFooter;->setMeasuredDimension(II)V

    .line 660
    return-void

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 536
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 570
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1077
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1078
    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->initFooter()V

    .line 1083
    return-void
.end method

.method public setOneChildHeight(I)V
    .locals 1
    .parameter "nOneChildHeight"

    .prologue
    .line 144
    if-gez p1, :cond_0

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildHeight:I

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcFooter;->mOneChildHeight:I

    goto :goto_0
.end method

.method public setOneChildWidth(I)V
    .locals 1
    .parameter "nOneChildWidth"

    .prologue
    .line 131
    if-gez p1, :cond_0

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidth:I

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidth:I

    goto :goto_0
.end method

.method public setSeperatorHeight(I)V
    .locals 1
    .parameter "nSeperatorHeight"

    .prologue
    .line 709
    if-gez p1, :cond_0

    .line 710
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcFooter;->mSeperatorHeight:I

    .line 714
    :goto_0
    return-void

    .line 712
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcFooter;->mSeperatorHeight:I

    goto :goto_0
.end method

.method public setSeperatorWidth(I)V
    .locals 1
    .parameter "nSeperatorWidth"

    .prologue
    .line 697
    if-gez p1, :cond_0

    .line 698
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcFooter;->mSeperatorWidth:I

    .line 702
    :goto_0
    return-void

    .line 700
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcFooter;->mSeperatorWidth:I

    goto :goto_0
.end method

.method public setTranparentBckground(Z)V
    .locals 0
    .parameter "bTransparent"

    .prologue
    .line 958
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcFooter;->enableTransparentBckground(Z)V

    .line 959
    return-void
.end method
