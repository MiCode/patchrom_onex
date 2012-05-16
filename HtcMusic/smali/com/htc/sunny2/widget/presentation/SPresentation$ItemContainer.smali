.class public Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
.super Lcom/htc/sunny2/view/SViewGroup;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/presentation/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemContainer"
.end annotation


# instance fields
.field public mDataIndex:I

.field public mForceHidden:Z

.field public mID:I

.field public mImageSprite:Lcom/htc/sunny2/Sprite;

.field public mImageTexture:Lcom/htc/sunny2/Texture;

.field public mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

.field public mLayoutPos:I

.field public mReflectSprite:Lcom/htc/sunny2/Sprite;

.field public mSkipItem:Z

.field public mTouchSprite:Lcom/htc/sunny2/Sprite;

.field final synthetic this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/presentation/SPresentation;Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "sContext"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 52
    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 55
    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    .line 56
    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunny2/Sprite;

    .line 57
    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    .line 58
    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    .line 60
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mID:I

    .line 61
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    .line 63
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    .line 75
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    .line 53
    return-void
.end method


# virtual methods
.method public setVisibility(Z)V
    .locals 2
    .parameter "bVisible"

    .prologue
    .line 68
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-ne v0, v1, :cond_0

    .line 69
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/htc/sunny2/view/SViewGroup;->setVisibility(Z)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SViewGroup;->setVisibility(Z)V

    goto :goto_0
.end method
