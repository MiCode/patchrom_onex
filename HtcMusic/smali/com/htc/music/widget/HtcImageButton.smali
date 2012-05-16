.class public Lcom/htc/music/widget/HtcImageButton;
.super Lcom/htc/widget/HtcImageButton;
.source "HtcImageButton.java"


# instance fields
.field private mMaxAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcImageButton;-><init>(Landroid/content/Context;)V

    .line 45
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/music/widget/HtcImageButton;->mMaxAlpha:I

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .parameter "context"
    .parameter "backgroundMode"
    .parameter "isContentMultiply"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcImageButton;-><init>(Landroid/content/Context;IZ)V

    .line 45
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/music/widget/HtcImageButton;->mMaxAlpha:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/music/widget/HtcImageButton;->mMaxAlpha:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/music/widget/HtcImageButton;->mMaxAlpha:I

    .line 26
    return-void
.end method


# virtual methods
.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/music/widget/HtcImageButton;->mMaxAlpha:I

    and-int/lit16 v1, p1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 56
    invoke-super {p0, p1}, Lcom/htc/widget/HtcImageButton;->setAlpha(I)V

    .line 58
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/widget/HtcImageButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    return-void
.end method

.method public setIconResource(I)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/htc/music/widget/HtcImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    .local v0, resources:Landroid/content/res/Resources;
    invoke-super {p0, p1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 43
    return-void
.end method

.method public setMaxAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 47
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/htc/music/widget/HtcImageButton;->mMaxAlpha:I

    .line 48
    iget v0, p0, Lcom/htc/music/widget/HtcImageButton;->mMaxAlpha:I

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/HtcImageButton;->setAlpha(I)V

    .line 49
    return-void
.end method
