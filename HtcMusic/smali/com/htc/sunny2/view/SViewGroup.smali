.class public Lcom/htc/sunny2/view/SViewGroup;
.super Lcom/htc/sunny2/view/SView;
.source "SViewGroup.java"

# interfaces
.implements Lcom/htc/sunny2/view/SViewParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;,
        Lcom/htc/sunny2/view/SViewGroup$LayoutParams;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 0
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V
    .locals 0
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    .line 25
    return-void
.end method

.method protected constructor <init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V
    .locals 0
    .parameter "mode"
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/view/SView;-><init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    .line 17
    return-void
.end method

.method public static getChildMeasureSpec(III)I
    .locals 9
    .parameter "spec"
    .parameter "padding"
    .parameter "childDimension"

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 273
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 274
    .local v3, specMode:I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 276
    .local v4, specSize:I
    const/4 v5, 0x0

    sub-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 278
    .local v2, size:I
    const/4 v1, 0x0

    .line 279
    .local v1, resultSize:I
    const/4 v0, 0x0

    .line 281
    .local v0, resultMode:I
    sparse-switch v3, :sswitch_data_0

    .line 337
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 284
    :sswitch_0
    if-ltz p2, :cond_1

    .line 285
    move v1, p2

    .line 286
    const/high16 v0, 0x4000

    goto :goto_0

    .line 287
    :cond_1
    if-ne p2, v8, :cond_2

    .line 289
    move v1, v2

    .line 290
    const/high16 v0, 0x4000

    goto :goto_0

    .line 291
    :cond_2
    if-ne p2, v7, :cond_0

    .line 294
    move v1, v2

    .line 295
    const/high16 v0, -0x8000

    goto :goto_0

    .line 301
    :sswitch_1
    if-ltz p2, :cond_3

    .line 303
    move v1, p2

    .line 304
    const/high16 v0, 0x4000

    goto :goto_0

    .line 305
    :cond_3
    if-ne p2, v8, :cond_4

    .line 308
    move v1, v2

    .line 309
    const/high16 v0, -0x8000

    goto :goto_0

    .line 310
    :cond_4
    if-ne p2, v7, :cond_0

    .line 313
    move v1, v2

    .line 314
    const/high16 v0, -0x8000

    goto :goto_0

    .line 320
    :sswitch_2
    if-ltz p2, :cond_5

    .line 322
    move v1, p2

    .line 323
    const/high16 v0, 0x4000

    goto :goto_0

    .line 324
    :cond_5
    if-ne p2, v8, :cond_6

    .line 327
    const/4 v1, 0x0

    .line 328
    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :cond_6
    if-ne p2, v7, :cond_0

    .line 332
    const/4 v1, 0x0

    .line 333
    const/4 v0, 0x0

    goto :goto_0

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public addView(Lcom/htc/sunny2/view/SView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SViewGroup;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 129
    iget-object v0, p1, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eq v0, p0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reparent SView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "to parent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    invoke-virtual {p1, p0}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->setRenderOrder(I)V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SViewGroup;->requestLayout()V

    goto :goto_0
.end method

.method public addView(Lcom/htc/sunny2/view/SView;Z)V
    .locals 4
    .parameter "view"
    .parameter "bTopRender"

    .prologue
    .line 148
    if-nez p1, :cond_1

    .line 163
    :cond_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SViewGroup;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 152
    const/4 v3, 0x1

    if-ne v3, p2, :cond_3

    .line 153
    const/16 v3, 0x64

    invoke-virtual {p1, v3}, Lcom/htc/sunny2/view/SView;->setRenderOrder(I)V

    .line 158
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/SceneNode;

    .line 159
    .local v2, node:Lcom/htc/sunny2/SceneNode;
    if-eqz v2, :cond_2

    move-object v0, v2

    .line 160
    check-cast v0, Lcom/htc/sunny2/view/SView;

    .line 161
    .local v0, child:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->getRenderOrder()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SView;->setRenderOrder(I)V

    goto :goto_1

    .line 155
    .end local v0           #child:Lcom/htc/sunny2/view/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #node:Lcom/htc/sunny2/SceneNode;
    :cond_3
    const/16 v3, -0x64

    invoke-virtual {p1, v3}, Lcom/htc/sunny2/view/SView;->setRenderOrder(I)V

    goto :goto_0
.end method

.method public addViewWithoutLayout(Lcom/htc/sunny2/view/SView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SViewGroup;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 111
    iget-object v0, p1, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eq v0, p0, :cond_1

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reparent SView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "to parent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    invoke-virtual {p1, p0}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->setRenderOrder(I)V

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, handled:Z
    if-ne v0, v1, :cond_0

    .line 70
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchRenderOrderChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SView;->dispatchRenderOrderChanged(Z)V

    .line 30
    iget-object v2, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/SceneNode;

    .line 31
    .local v1, node:Lcom/htc/sunny2/SceneNode;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_0

    .line 32
    check-cast v1, Lcom/htc/sunny2/view/SView;

    .end local v1           #node:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v1, p1}, Lcom/htc/sunny2/view/SView;->dispatchRenderOrderChanged(Z)V

    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public dispatchResourceCreation(Z)V
    .locals 3
    .parameter "isCreated"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 77
    iget-object v2, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/SceneNode;

    .line 78
    .local v1, node:Lcom/htc/sunny2/SceneNode;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_0

    .line 79
    check-cast v1, Lcom/htc/sunny2/view/SView;

    .end local v1           #node:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v1, p1}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 38
    iget-object v2, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/SceneNode;

    .line 39
    .local v1, node:Lcom/htc/sunny2/SceneNode;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_0

    .line 40
    check-cast v1, Lcom/htc/sunny2/view/SView;

    .end local v1           #node:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v1, p1}, Lcom/htc/sunny2/view/SView;->setPressed(Z)V

    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 5
    .parameter "event"
    .parameter "nHitSpriteId"

    .prologue
    const/4 v3, 0x1

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, handled:Z
    iget-object v4, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/SceneNode;

    .line 48
    .local v2, node:Lcom/htc/sunny2/SceneNode;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/htc/sunny2/view/SView;

    if-eqz v4, :cond_0

    .line 49
    check-cast v2, Lcom/htc/sunny2/view/SView;

    .end local v2           #node:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v2, p1, p2}, Lcom/htc/sunny2/view/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    .line 50
    if-ne v0, v3, :cond_0

    .line 55
    :goto_0
    return v3

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/view/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v3

    goto :goto_0
.end method

.method public hasChild()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureChild(Lcom/htc/sunny2/view/SView;II)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/htc/sunny2/view/SView;->getLayoutParams()Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    move-result-object v2

    .line 216
    .local v2, lp:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/htc/sunny2/view/SViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 218
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/htc/sunny2/view/SViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 221
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Lcom/htc/sunny2/view/SView;->measure(II)V

    .line 222
    return-void
.end method

.method protected measureChildWithMargins(Lcom/htc/sunny2/view/SView;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 241
    invoke-virtual {p1}, Lcom/htc/sunny2/view/SView;->getLayoutParams()Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;

    .line 243
    .local v2, lp:Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/htc/sunny2/view/SViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 246
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/htc/sunny2/view/SViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 250
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Lcom/htc/sunny2/view/SView;->measure(II)V

    .line 251
    return-void
.end method

.method protected measureChildren(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 192
    iget-object v4, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 193
    .local v3, size:I
    const/4 v4, 0x1

    new-array v1, v4, [Lcom/htc/sunny2/view/SView;

    .line 194
    .local v1, children:[Lcom/htc/sunny2/view/SView;
    iget-object v4, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #children:[Lcom/htc/sunny2/view/SView;
    check-cast v1, [Lcom/htc/sunny2/view/SView;

    .line 195
    .restart local v1       #children:[Lcom/htc/sunny2/view/SView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 196
    aget-object v0, v1, v2

    .line 197
    .local v0, child:Lcom/htc/sunny2/view/SView;
    iget v4, v0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 198
    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/sunny2/view/SViewGroup;->measureChild(Lcom/htc/sunny2/view/SView;II)V

    .line 195
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v0           #child:Lcom/htc/sunny2/view/SView;
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 85
    invoke-super {p0}, Lcom/htc/sunny2/view/SView;->onDetachedFromWindow()V

    .line 86
    iget-object v3, p0, Lcom/htc/sunny2/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/SceneNode;

    .line 87
    .local v2, node:Lcom/htc/sunny2/SceneNode;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/htc/sunny2/view/SView;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 88
    check-cast v0, Lcom/htc/sunny2/view/SView;

    .line 89
    .local v0, child:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->onDetachedFromWindow()V

    .line 90
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SViewGroup;->removeView(Lcom/htc/sunny2/view/SView;)V

    goto :goto_0

    .line 92
    .end local v0           #child:Lcom/htc/sunny2/view/SView;
    .end local v2           #node:Lcom/htc/sunny2/SceneNode;
    :cond_1
    return-void
.end method

.method public removeView(Lcom/htc/sunny2/view/SView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 173
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SViewGroup;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SViewGroup;->requestLayout()V

    goto :goto_0
.end method

.method public showContextMenuForChild(Lcom/htc/sunny2/view/SView;)Z
    .locals 1
    .parameter "originalView"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/view/SViewParent;->showContextMenuForChild(Lcom/htc/sunny2/view/SView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
