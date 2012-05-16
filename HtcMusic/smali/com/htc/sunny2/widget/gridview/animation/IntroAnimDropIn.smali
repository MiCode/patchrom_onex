.class public Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;
.super Lcom/htc/sunny2/widget/gridview/animation/MultiViewAnimationSet;
.source "IntroAnimDropIn.java"


# static fields
.field public static final DURATION_FOLDER_INTRO:I = 0xc8

.field public static final DURATION_FOLDER_INTRO_ITEM_DELAY:I = 0x32

.field public static final DURATION_FOLDER_INTRO_ITEM_SCALE_BEGIN:Lcom/htc/sunny2/view/Vector3F;

.field public static final DURATION_FOLDER_INTRO_ITEM_SCALE_END:Lcom/htc/sunny2/view/Vector3F;


# instance fields
.field private mView:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const v1, 0x3f19999a

    .line 15
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v1, v1, v1}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    sput-object v0, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;->DURATION_FOLDER_INTRO_ITEM_SCALE_BEGIN:Lcom/htc/sunny2/view/Vector3F;

    .line 16
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v2, v2, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    sput-object v0, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;->DURATION_FOLDER_INTRO_ITEM_SCALE_END:Lcom/htc/sunny2/view/Vector3F;

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/animation/MultiViewAnimationSet;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 23
    return-void
.end method

.method private createSAnimationController(Lcom/htc/sunny2/view/SView;I)Lcom/htc/sunny2/view/animation/SAnimationController;
    .locals 6
    .parameter "view"
    .parameter "delayTime"

    .prologue
    const/4 v5, 0x0

    .line 50
    new-instance v1, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v1}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 52
    .local v1, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    invoke-virtual {p1}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v2

    .line 54
    .local v2, pos:Lcom/htc/sunny2/view/Vector3F;
    sget-object v3, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;->DURATION_FOLDER_INTRO_ITEM_SCALE_BEGIN:Lcom/htc/sunny2/view/Vector3F;

    sget-object v4, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;->DURATION_FOLDER_INTRO_ITEM_SCALE_END:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 57
    invoke-virtual {p1}, Lcom/htc/sunny2/view/SView;->getAlpha()F

    move-result v0

    .line 58
    .local v0, alpha:F
    const/high16 v3, 0x437f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v1, v5, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 60
    int-to-long v3, p2

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 62
    invoke-virtual {v1, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 63
    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 64
    sget-object v3, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 65
    invoke-virtual {v1, p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 67
    return-object v1
.end method


# virtual methods
.method protected onStart()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 26
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    if-nez v5, :cond_0

    .line 27
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Can\'t prepare the ExpandOutAnimation for null GridView"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 30
    :cond_0
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/animation/MultiViewAnimationSet;->onStart()V

    .line 32
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v4

    .line 33
    .local v4, start:I
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v3

    .line 34
    .local v3, last:I
    if-eq v4, v6, :cond_1

    if-ne v3, v6, :cond_4

    .line 35
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v5, :cond_2

    .line 36
    iget-object v5, p0, Lcom/htc/sunny2/view/animation/SAnimationController;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v5}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;->reset()V

    .line 47
    :cond_3
    return-void

    .line 41
    :cond_4
    move v2, v4

    .local v2, i:I
    const/4 v1, 0x0

    .local v1, delayTime:I
    :goto_0
    add-int/lit8 v5, v3, 0x1

    if-ge v2, v5, :cond_3

    .line 43
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;->mView:Lcom/htc/sunny2/widget/gridview/GridView;

    sub-int v6, v2, v4

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->getChild(I)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 44
    .local v0, child:Lcom/htc/sunny2/view/SView;
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/animation/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-direct {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/animation/IntroAnimDropIn;->createSAnimationController(Lcom/htc/sunny2/view/SView;I)Lcom/htc/sunny2/view/animation/SAnimationController;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 41
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x32

    goto :goto_0
.end method
