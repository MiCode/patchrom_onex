.class Lcom/htc/widget/HtcSpinner$BackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HtcSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundDrawable"
.end annotation


# instance fields
.field private mButtonRest:Landroid/graphics/drawable/Drawable;

.field private mCenterX:I

.field private mCenterY:I

.field private mHeight:I

.field private mOuter:Landroid/graphics/drawable/Drawable;

.field private mOuterPressed:Landroid/graphics/drawable/Drawable;

.field private mWidth:I

.field final synthetic this$0:Lcom/htc/widget/HtcSpinner;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcSpinner;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcSpinner;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 241
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 242
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x208001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    .line 243
    iget-object v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 244
    const v1, 0x208001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    .line 245
    iget-object v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 246
    const v1, 0x208001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    .line 247
    iget-object v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 248
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 253
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcSpinner;

    #getter for: Lcom/htc/widget/HtcSpinner;->mIsAnimating:Z
    invoke-static {v0}, Lcom/htc/widget/HtcSpinner;->access$000(Lcom/htc/widget/HtcSpinner;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/HtcSpinner;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->this$0:Lcom/htc/widget/HtcSpinner;

    #getter for: Lcom/htc/widget/HtcSpinner;->mMultiplyColor:I
    invoke-static {v1}, Lcom/htc/widget/HtcSpinner;->access$100(Lcom/htc/widget/HtcSpinner;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 255
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 258
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "bounds"

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 263
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 264
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 265
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 266
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mCenterX:I

    .line 267
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mCenterY:I

    .line 268
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mWidth:I

    .line 269
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mHeight:I

    .line 270
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mOuterPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 274
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 296
    return-void
.end method

.method public setScale(F)V
    .locals 7
    .parameter "scale"

    .prologue
    .line 283
    iget v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mWidth:I

    iget v2, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 284
    .local v0, scaleValue:I
    iget-object v1, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mCenterX:I

    iget v3, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mCenterY:I

    iget v4, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    iget v4, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mCenterX:I

    iget v5, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mCenterY:I

    iget v6, p0, Lcom/htc/widget/HtcSpinner$BackgroundDrawable;->mHeight:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 288
    return-void
.end method
