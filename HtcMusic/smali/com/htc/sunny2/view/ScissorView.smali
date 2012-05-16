.class public Lcom/htc/sunny2/view/ScissorView;
.super Lcom/htc/sunny2/view/SView;
.source "ScissorView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 11
    sget-object v0, Lcom/htc/sunny2/SceneNode$NODE_MODE;->NODE_MODE_SCISSORNODE:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/htc/sunny2/view/SView;-><init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V
    .locals 1
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    .line 15
    sget-object v0, Lcom/htc/sunny2/SceneNode$NODE_MODE;->NODE_MODE_SCISSORNODE:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/htc/sunny2/view/SView;-><init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onLayout(ZFFFII)V
    .locals 5
    .parameter "changed"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 19
    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/view/SView;->onLayout(ZFFFII)V

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, left:I
    const/4 v1, 0x0

    .line 23
    .local v1, top:I
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    instance-of v2, v2, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    check-cast v2, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;

    iget v0, v2, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->leftMargin:I

    .line 25
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    check-cast v2, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;

    iget v1, v2, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->topMargin:I

    .line 28
    :cond_0
    iget v2, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    add-int/lit8 v3, v0, 0x0

    add-int/lit8 v4, v1, 0x0

    invoke-static {v2, v3, v4, p5, p6}, Lcom/htc/sunny2/Sunny2;->Scissor_SetArea(IIIII)V

    .line 29
    return-void
.end method
