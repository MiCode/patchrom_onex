.class public Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;
.super Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;
.source "ViewShrinkAnimation.java"


# static fields
.field public static final MOVE_DIRECTION_X:I = 0x0

.field public static final MOVE_DIRECTION_Y:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChildRootSViewGroupIndex:I

.field private mDistance:F

.field mEndPosition:Lcom/htc/sunny2/view/Vector3F;

.field mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

.field private mMoveDirection:I

.field private mMoveItemsCount:I

.field private mShrinkItemsCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Lcom/htc/sunny2/view/Vector3F;F)V
    .locals 1
    .parameter "v"
    .parameter "itemEndPosition"
    .parameter "distance"

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Lcom/htc/sunny2/view/Vector3F;FI)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Lcom/htc/sunny2/view/Vector3F;FI)V
    .locals 3
    .parameter "v"
    .parameter "itemEndPosition"
    .parameter "distance"
    .parameter "moveDirection"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    .line 19
    iput v2, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    .line 20
    iput v2, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mMoveItemsCount:I

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mChildRootSViewGroupIndex:I

    .line 31
    iput-object p1, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    .line 33
    if-nez p2, :cond_0

    .line 34
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v1, v1, v1}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mEndPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 40
    :goto_0
    iput p3, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mDistance:F

    .line 41
    iput p4, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mMoveDirection:I

    .line 42
    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, p2}, Lcom/htc/sunny2/view/Vector3F;-><init>(Lcom/htc/sunny2/view/Vector3F;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mEndPosition:Lcom/htc/sunny2/view/Vector3F;

    goto :goto_0
.end method

.method private move()V
    .locals 8

    .prologue
    .line 158
    new-instance v3, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v3}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    .line 160
    .local v3, newPos:Lcom/htc/sunny2/view/Vector3F;
    iget v6, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    iget v7, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mMoveItemsCount:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v6, v7, :cond_0

    iget v2, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mMoveItemsCount:I

    .line 161
    .local v2, moveItemsCount:I
    :goto_0
    const/4 v5, 0x0

    .line 163
    .local v5, tempSView:Lcom/htc/sunny2/view/SView;
    iget v6, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 165
    iget-object v6, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    iget v7, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    add-int/2addr v7, v0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tempSView:Lcom/htc/sunny2/view/SView;
    check-cast v5, Lcom/htc/sunny2/view/SView;

    .line 166
    .restart local v5       #tempSView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v5}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    .line 167
    .local v4, originalPos:Lcom/htc/sunny2/view/Vector3F;
    iget v6, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iput v6, v3, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 168
    iget v6, v4, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v7, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mDistance:F

    add-float/2addr v6, v7

    iput v6, v3, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 169
    iget v6, v4, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iput v6, v3, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 171
    invoke-direct {p0, v4, v3}, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->moveViewAnimationController(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v1

    .line 172
    .local v1, moveController:Lcom/htc/sunny2/view/animation/SAnimationController;
    invoke-virtual {v5, v1}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    .end local v0           #i:I
    .end local v1           #moveController:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v2           #moveItemsCount:I
    .end local v4           #originalPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v5           #tempSView:Lcom/htc/sunny2/view/SView;
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget v7, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    sub-int v2, v6, v7

    goto :goto_0

    .line 176
    .restart local v2       #moveItemsCount:I
    .restart local v5       #tempSView:Lcom/htc/sunny2/view/SView;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v2, :cond_2

    .line 177
    iget-object v6, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    iget v7, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    add-int/2addr v7, v0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tempSView:Lcom/htc/sunny2/view/SView;
    check-cast v5, Lcom/htc/sunny2/view/SView;

    .line 178
    .restart local v5       #tempSView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v5}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    .line 179
    .restart local v4       #originalPos:Lcom/htc/sunny2/view/Vector3F;
    iget v6, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v7, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mDistance:F

    sub-float/2addr v6, v7

    iput v6, v3, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 180
    iget v6, v4, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iput v6, v3, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 181
    iget v6, v4, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iput v6, v3, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 183
    invoke-direct {p0, v4, v3}, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->moveViewAnimationController(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v1

    .line 184
    .restart local v1       #moveController:Lcom/htc/sunny2/view/animation/SAnimationController;
    invoke-virtual {v5, v1}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 187
    .end local v1           #moveController:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v4           #originalPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_2
    return-void
.end method

.method private moveViewAnimationController(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)Lcom/htc/sunny2/view/animation/SAnimationController;
    .locals 3
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 191
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 193
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 194
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 195
    sget-object v1, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEOUT_QUARTIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 196
    invoke-virtual {v0, p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 198
    return-object v0
.end method

.method private prepareMove()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 141
    iget-object v3, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getLastVisiblePosition()I

    move-result v2

    .line 142
    .local v2, lastParent:I
    iget-object v3, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildLastVisiblePosition()I

    move-result v1

    .line 144
    .local v1, lastChild:I
    if-eq v1, v4, :cond_0

    if-eq v2, v4, :cond_0

    .line 145
    add-int/lit8 v0, v1, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v2, :cond_1

    .line 146
    iget-object v3, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getGridViewItem(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->addSView(Lcom/htc/sunny2/view/SView;)V

    .line 147
    iget v3, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mMoveItemsCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mMoveItemsCount:I

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    .end local v0           #i:I
    :cond_0
    sget-object v3, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareMove, no mvoe items, lastChild: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lastParent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    return-void
.end method

.method private shrinkAnimationController(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;I)Lcom/htc/sunny2/view/animation/SAnimationController;
    .locals 4
    .parameter "viewPos"
    .parameter "endPos"
    .parameter "alphaEnd"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    .line 121
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 122
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v1, v2, v2, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v2, v3, v3, v3}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 123
    if-ltz p3, :cond_0

    .line 124
    const/16 v1, 0xff

    invoke-virtual {v0, v1, p3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 126
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 128
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 129
    sget-object v1, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEOUT_QUARTIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 130
    invoke-virtual {v0, p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 132
    return-object v0
.end method


# virtual methods
.method protected onStart()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->onStart()V

    .line 51
    invoke-virtual {p0}, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->prepareShrink()V

    .line 52
    invoke-direct {p0}, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->prepareMove()V

    .line 57
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->reset()V

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->shrink()V

    .line 66
    invoke-direct {p0}, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->move()V

    goto :goto_0
.end method

.method prepareShrink()V
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 74
    iget-object v4, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-eqz v4, :cond_2

    .line 75
    iget-object v4, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildFirstVisiblePosition()I

    move-result v0

    .line 76
    .local v0, firstChild:I
    iget-object v4, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildLastVisiblePosition()I

    move-result v2

    .line 78
    .local v2, lastChild:I
    if-eq v0, v5, :cond_3

    if-eq v2, v5, :cond_3

    .line 79
    const/4 v3, 0x0

    .line 80
    .local v3, tempSView:Lcom/htc/sunny2/view/SView;
    move v1, v0

    .local v1, i:I
    :goto_0
    if-gt v1, v2, :cond_1

    .line 81
    iget-object v4, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getGridViewItem(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-result-object v3

    .line 82
    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->addSView(Lcom/htc/sunny2/view/SView;)V

    .line 84
    iget v4, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    .line 80
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mExpGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildRootSViewGroup()Lcom/htc/sunny2/view/SView;

    move-result-object v3

    .line 89
    if-eqz v3, :cond_2

    .line 90
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->addSView(Lcom/htc/sunny2/view/SView;)V

    .line 91
    iget v4, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    iput v4, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mChildRootSViewGroupIndex:I

    .line 92
    iget v4, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    .line 99
    .end local v0           #firstChild:I
    .end local v1           #i:I
    .end local v2           #lastChild:I
    .end local v3           #tempSView:Lcom/htc/sunny2/view/SView;
    :cond_2
    :goto_1
    return-void

    .line 96
    .restart local v0       #firstChild:I
    .restart local v2       #lastChild:I
    :cond_3
    sget-object v4, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareShrink, no shrink items, firstChild: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lastChild: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method shrink()V
    .locals 6

    .prologue
    .line 102
    iget v4, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    iget-object v5, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v4, v5, :cond_1

    iget v1, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mShrinkItemsCount:I

    .line 104
    .local v1, shrinkItemsCount:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 105
    iget-object v4, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/view/SView;

    .line 107
    .local v2, tempSView:Lcom/htc/sunny2/view/SView;
    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v2}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    .line 109
    .local v3, viewPos:Lcom/htc/sunny2/view/Vector3F;
    iget v4, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mChildRootSViewGroupIndex:I

    if-ne v0, v4, :cond_2

    .line 110
    iget-object v4, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mEndPosition:Lcom/htc/sunny2/view/Vector3F;

    const/4 v5, -0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->shrinkAnimationController(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;I)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 104
    .end local v3           #viewPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    .end local v0           #i:I
    .end local v1           #shrinkItemsCount:I
    .end local v2           #tempSView:Lcom/htc/sunny2/view/SView;
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/view/animation/expgridview/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 113
    .restart local v0       #i:I
    .restart local v1       #shrinkItemsCount:I
    .restart local v2       #tempSView:Lcom/htc/sunny2/view/SView;
    .restart local v3       #viewPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->mEndPosition:Lcom/htc/sunny2/view/Vector3F;

    const/16 v5, 0x80

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->shrinkAnimationController(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;I)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_2

    .line 117
    .end local v2           #tempSView:Lcom/htc/sunny2/view/SView;
    .end local v3           #viewPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_3
    return-void
.end method
