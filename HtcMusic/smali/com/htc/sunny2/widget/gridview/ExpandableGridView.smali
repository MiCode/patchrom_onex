.class public Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
.super Lcom/htc/sunny2/widget/gridview/GridView;
.source "ExpandableGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;,
        Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;,
        Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;,
        Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    }
.end annotation


# static fields
.field private static final ABOVE_PARENT_ITEM_RENDER_ORDER:I = 0x0

.field private static final BELOW_PARENT_ITEM_RENDER_ORDER:I = 0x0

.field private static final CHILD_VIEW_BG_RENDER_ORDER:I = 0x1

.field private static final CHILD_VIEW_ITEM_RENDER_ORDER:I = 0x2

.field private static final COLLAPSE_CLICK_PARENT_ITEM:I = 0x0

.field private static final COLLAPSE_CLOSE_CHILD:I = 0x2

.field private static final COLLAPSE_DELETE_CHILD_ITEM:I = 0x1

.field private static final DEBUG:Z = false

.field private static final FAST_SCROLLER_RENDER_ORDER:I = 0x3

.field private static final MAKE_ITEM_ROW_COLLAPSE_ANIM:I = 0x2

.field private static final MAKE_ITEM_ROW_EXPANDOUT_ANIM:I = 0x1

.field private static final MAKE_ITEM_ROW_GENERAL:I = 0x0

.field private static final MAX_CHILD_VIEW_SIDE_LENGTH:I = 0x800

.field protected static final STORE_KEY_DO_BACKGROUND_ANIM:Ljava/lang/String; = "dobackgroundanimation"

.field protected static final STORE_KEY_OLDCHILDVIEWBGHEIGHT:Ljava/lang/String; = "oldChildViewBGHeight"

.field protected static final STORE_KEY_OLDCHILDVIEWBGPOSITIONY:Ljava/lang/String; = "oldChildViewBGPositionY"

.field protected static final STORE_KEY_OLDFIRSTCHILDIDX:Ljava/lang/String; = "oldFirstChildIdx"

.field protected static final STORE_KEY_OLDFIRSTIDXAFTERCHILD:Ljava/lang/String; = "oldFirstIdxAfterChild"

.field protected static final STORE_KEY_OLDFIRSTITEMAFTERCHILDPOSITIONY:Ljava/lang/String; = "oldFirstItemAfterChildPositionY"

.field protected static final STORE_KEY_OLDLASTCHILDIDX:Ljava/lang/String; = "oldLastChildIdx"

.field protected static final STORE_KEY_OLDONSCREENFIRSTCHILDIDX:Ljava/lang/String; = "oldOnScreenFirstChildIdx"

.field protected static final STORE_KEY_OLDONSCREENFIRSTCHILDITEMPOSITIONY:Ljava/lang/String; = "oldOnScreenFirstChildItemPositionY"

.field protected static final STORE_KEY_OLDONSCREENLASTCHILDIDX:Ljava/lang/String; = "oldOnScreenLastChildIdx"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdjustedDeleteAllParentIdx:I

.field private mAnimationRunning:Z

.field private mBelowParentsCollapseDistance:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private mChildBGSprite:Lcom/htc/sunny2/Sprite;

.field private mChildBGTexture:Lcom/htc/sunny2/Texture;

.field private mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

.field private mChildCellHeight:I

.field protected mChildCellRecycler:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/htc/sunny2/widget/gridview/GridView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mChildCellWidth:I

.field private mChildExtraPaddingLeft:I

.field private mChildExtraPaddingTop:I

.field private mChildHorizontalSpacing:I

.field private mChildIndicatorHeight:I

.field private mChildIndicatorOffsetX:I

.field private mChildIndicatorOffsetY:I

.field private mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

.field private mChildIndicatorSprite:Lcom/htc/sunny2/Sprite;

.field private mChildIndicatorTexture:Lcom/htc/sunny2/Texture;

.field private mChildIndicatorWidth:I

.field private mChildMarginBottom:I

.field private mChildMarginLeft:I

.field private mChildMarginRight:I

.field private mChildMarginTop:I

.field private mChildNumColumn:I

.field private mChildNumRow:I

.field private mChildPaddingBottom:I

.field private mChildPaddingLeft:I

.field private mChildPaddingRight:I

.field private mChildPaddingTop:I

.field private mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

.field private mChildTitleHeight:I

.field private mChildTitleSView:Lcom/htc/sunny2/view/SView;

.field private mChildTitleSprite:Lcom/htc/sunny2/Sprite;

.field private mChildTitleText:Landroid/widget/TextView;

.field private mChildTitleTexture:Lcom/htc/sunny2/Texture;

.field private mChildVerticalSpacing:I

.field private mChildViewBGBoundaryBufLength:I

.field mChildViewBackgroundResId:I

.field private mChildViewCollapsed:Z

.field private mChildViewOffsetX:I

.field private mChildViewOffsetY:I

.field private mChildViewTitle:Ljava/lang/String;

.field private mChildsCount:I

.field private mClickParentLevelStartIdx:I

.field private mClickedParentIdx:I

.field private mCollapseChildType:I

.field mEnlargeAnimListenr:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

.field private mExpBGHeight:I

.field private mExpBGWidth:I

.field mExpandOutAnimListenr:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

.field private mFirstChildIdx:I

.field private mIgnoreChildViewItem:Z

.field mIndicatorResId:I

.field private mIsAnimationOn:Z

.field private mLastChildIdx:I

.field private mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

.field private mOnPrepareListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

.field private mOriginalChildRootSViewGroupPos:Lcom/htc/sunny2/view/Vector3F;

.field private mOriginalDeleteAllParentIdx:I

.field mParentExpandOutMoveAnimListenr:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

.field private mParentExpandOutMoveDistance:I

.field mShrinkAnimListenr:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

.field private mTempCurrentClickedIndex:I

.field private mTitleContainer:Landroid/view/ViewGroup;

.field private mTitleLayoutResId:I

.field private mTitleTextViewResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 4
    .parameter "context"
    .parameter "sContext"
    .parameter "itemPrototype"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    .line 58
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    .line 67
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    .line 80
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    .line 94
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    .line 95
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    .line 96
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    .line 97
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    .line 99
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    .line 100
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunny2/Sprite;

    .line 101
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSprite:Lcom/htc/sunny2/Sprite;

    .line 103
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    .line 104
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    .line 105
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorWidth:I

    .line 106
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorHeight:I

    .line 107
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    .line 109
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunny2/Texture;

    .line 110
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunny2/Texture;

    .line 111
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleTexture:Lcom/htc/sunny2/Texture;

    .line 113
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    .line 114
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleText:Landroid/widget/TextView;

    .line 116
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetX:I

    .line 117
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetY:I

    .line 119
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    .line 120
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginRight:I

    .line 122
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginTop:I

    .line 123
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginBottom:I

    .line 125
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingTop:I

    .line 126
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    .line 127
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingLeft:I

    .line 128
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    .line 132
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewOffsetX:I

    .line 133
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewOffsetY:I

    .line 134
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    .line 135
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    .line 137
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z

    .line 138
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAnimationRunning:Z

    .line 140
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIsAnimationOn:Z

    .line 149
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCollapseChildType:I

    .line 154
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOriginalDeleteAllParentIdx:I

    .line 155
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAdjustedDeleteAllParentIdx:I

    .line 1800
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I

    .line 1801
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z

    .line 1887
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    .line 1888
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    .line 1889
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    .line 2026
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    .line 2027
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 2065
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIndicatorResId:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBackgroundResId:I

    .line 2219
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewTitle:Ljava/lang/String;

    .line 2220
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleLayoutResId:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleTextViewResId:I

    .line 2470
    new-instance v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$3;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$3;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandOutAnimListenr:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    .line 2485
    new-instance v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$4;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$4;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mEnlargeAnimListenr:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    .line 2510
    new-instance v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$5;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mParentExpandOutMoveAnimListenr:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    .line 2606
    new-instance v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$6;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mShrinkAnimListenr:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    .line 175
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->init()V

    .line 176
    return-void
.end method

.method static synthetic access$002(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAnimationRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCollapseChildType:I

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCollapseChildType:I

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOriginalDeleteAllParentIdx:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAdjustedDeleteAllParentIdx:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z

    return p1
.end method

.method static synthetic access$2020(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAdjustedDeleteAllParentIdx:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAdjustedDeleteAllParentIdx:I

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->fitBottomSpace(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    return-object v0
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->doScrollExpandedParentItemToUpper()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->clearChildBackground(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->doScrollClickedItemToUpper(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->doFakeOnLayout(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIsAnimationOn:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method private addChildViewIndicator()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2372
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunny2/Texture;

    if-nez v1, :cond_1

    .line 2373
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->createChildViewIndicator()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorHeight:I

    .line 2374
    sget-object v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChildViewIndicator, mChildIndicatorTexture is null, retry to create it. mChildIndicatorHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorHeight:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunny2/Texture;

    if-nez v1, :cond_1

    .line 2387
    :cond_0
    :goto_0
    return-void

    .line 2380
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorWidth:I

    .line 2381
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v0

    .line 2383
    .local v0, indicatorH:I
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunny2/Sprite;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorWidth:I

    int-to-float v2, v2

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 2384
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunny2/Sprite;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 2386
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/view/SView;->addSprite(Lcom/htc/sunny2/Sprite;)V

    goto :goto_0
.end method

.method private addChildViewTitle(Ljava/lang/String;)V
    .locals 14
    .parameter "title"

    .prologue
    const/4 v13, 0x0

    .line 2302
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    if-nez v1, :cond_1

    .line 2303
    sget-object v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v2, "addChildViewTitle, mChildTitleHeight is 0, re-try to do prepareChildViewTitle."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->prepareChildViewTitle()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    .line 2305
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    if-nez v1, :cond_1

    .line 2306
    sget-object v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v2, "addChildViewTitle, mChildTitleHeight is 0, after re-try. still 0. return."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    :cond_0
    :goto_0
    return-void

    .line 2312
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    .line 2313
    sget-object v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v2, "addChildViewTitle, mTitleContainer is null! return."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2318
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleText:Landroid/widget/TextView;

    if-nez v1, :cond_3

    .line 2319
    sget-object v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v2, "addChildViewTitle, mChildTitleText is null! return."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2323
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2325
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    .line 2327
    .local v6, container:Landroid/view/ViewGroup;
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    invoke-direct {p0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildWidth(I)I

    move-result v12

    .line 2329
    .local v12, width:I
    const/high16 v1, 0x4000

    invoke-static {v12, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 2330
    .local v10, measureW:I
    invoke-static {v13, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 2331
    .local v9, measureH:I
    invoke-virtual {v6, v10, v9}, Landroid/view/ViewGroup;->measure(II)V

    .line 2332
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v6, v13, v13, v12, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 2335
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    .line 2337
    .local v8, height:I
    const/4 v3, 0x0

    .line 2338
    .local v3, mImgOriginalX:F
    const/4 v4, 0x0

    .line 2340
    .local v4, mTextviewOriginalY:F
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1, v13}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 2341
    .local v0, layer:Lcom/htc/sunny2/Sprite$Layer;
    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite$Layer;->getGeometry()[I

    move-result-object v7

    .line 2342
    .local v7, geometry:[I
    aget v1, v7, v13

    if-ne v12, v1, :cond_4

    const/4 v1, 0x1

    aget v1, v7, v1

    if-ne v8, v1, :cond_4

    float-to-int v1, v3

    const/4 v2, 0x2

    aget v2, v7, v2

    if-ne v1, v2, :cond_4

    float-to-int v1, v4

    const/4 v2, 0x3

    aget v2, v7, v2

    if-eq v1, v2, :cond_5

    .line 2344
    :cond_4
    int-to-float v1, v12

    int-to-float v2, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 2347
    :cond_5
    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleTexture:Lcom/htc/sunny2/Texture;

    .line 2348
    .local v11, texture:Lcom/htc/sunny2/Texture;
    if-nez v11, :cond_6

    .line 2349
    invoke-static {v6}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunny2/Texture;

    move-result-object v11

    .line 2350
    invoke-virtual {v0, v13, v11}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 2351
    iput-object v11, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleTexture:Lcom/htc/sunny2/Texture;

    .line 2357
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    if-eqz v1, :cond_0

    .line 2358
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/view/SView;->addSprite(Lcom/htc/sunny2/Sprite;)V

    goto/16 :goto_0

    .line 2354
    :cond_6
    invoke-virtual {v11, v6}, Lcom/htc/sunny2/Texture;->setView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private childColumnBestFit()Z
    .locals 15

    .prologue
    .line 198
    const/4 v9, 0x0

    .line 200
    .local v9, isChange:Z
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-lez v2, :cond_5

    .line 201
    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    add-int v4, v2, v3

    .line 202
    .local v4, startX:I
    const/4 v14, 0x0

    .line 203
    .local v14, totalItemWidth:I
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildWidth(I)I

    move-result v8

    .line 204
    .local v8, childLayoutWidth:I
    const/4 v13, -0x1

    .line 209
    .local v13, numColumn:I
    const/4 v1, 0x0

    .line 211
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    if-nez v1, :cond_0

    .line 218
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create(Z)Lcom/htc/sunny2/ViewItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;Z)V

    .line 220
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    invoke-interface {v3, v5}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 222
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v7

    .line 223
    .local v7, childCellWidth:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    .line 225
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 226
    iget-object v2, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const v3, 0x7f7fffff

    const v5, 0x7f7fffff

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 227
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 229
    const/4 v2, 0x1

    if-ge v7, v2, :cond_1

    .line 230
    sget-object v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "childColumnBestFit, mContext: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Child Cell with illegal width="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 270
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v4           #startX:I
    .end local v7           #childCellWidth:I
    .end local v8           #childLayoutWidth:I
    .end local v9           #isChange:Z
    .end local v13           #numColumn:I
    .end local v14           #totalItemWidth:I
    .local v10, isChange:I
    :goto_1
    return v10

    .line 213
    .end local v10           #isChange:I
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .restart local v4       #startX:I
    .restart local v8       #childLayoutWidth:I
    .restart local v9       #isChange:Z
    .restart local v13       #numColumn:I
    .restart local v14       #totalItemWidth:I
    :catch_0
    move-exception v12

    .line 214
    .local v12, nsee:Ljava/util/NoSuchElementException;
    sget-object v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "childColumnBestFit, NoSuchElementException, nsee: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    .end local v12           #nsee:Ljava/util/NoSuchElementException;
    .restart local v7       #childCellWidth:I
    :cond_1
    const/4 v11, 0x0

    .line 238
    .local v11, j:I
    :goto_2
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    .line 239
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    add-int/2addr v2, v8

    shr-int/lit8 v3, v7, 0x2

    add-int/2addr v2, v3

    if-le v4, v2, :cond_6

    .line 240
    move v13, v11

    .line 247
    if-gez v13, :cond_2

    .line 248
    iget v13, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 251
    :cond_2
    const/4 v2, 0x1

    if-le v2, v13, :cond_3

    .line 252
    const/4 v13, 0x1

    .line 256
    :cond_3
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    if-eq v13, v2, :cond_4

    .line 257
    iput v13, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    .line 258
    const/4 v9, 0x1

    .line 262
    :cond_4
    const/4 v2, 0x1

    if-lt v13, v2, :cond_5

    .line 263
    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int v2, v8, v2

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v14

    add-int/lit8 v3, v13, -0x1

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    mul-int/2addr v3, v5

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildExtraPaddingLeft:I

    .line 264
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildExtraPaddingLeft:I

    if-gez v2, :cond_5

    .line 265
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildExtraPaddingLeft:I

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v4           #startX:I
    .end local v7           #childCellWidth:I
    .end local v8           #childLayoutWidth:I
    .end local v11           #j:I
    .end local v13           #numColumn:I
    .end local v14           #totalItemWidth:I
    :cond_5
    move v10, v9

    .line 270
    .restart local v10       #isChange:I
    goto :goto_1

    .line 244
    .end local v10           #isChange:I
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .restart local v4       #startX:I
    .restart local v7       #childCellWidth:I
    .restart local v8       #childLayoutWidth:I
    .restart local v11       #j:I
    .restart local v13       #numColumn:I
    .restart local v14       #totalItemWidth:I
    :cond_6
    add-int/2addr v14, v7

    .line 237
    add-int/lit8 v11, v11, 0x1

    goto :goto_2
.end method

.method private childRowBestFit()Z
    .locals 15

    .prologue
    .line 280
    const/4 v9, 0x0

    .line 282
    .local v9, isChange:Z
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-lez v2, :cond_5

    .line 283
    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginTop:I

    add-int v5, v2, v3

    .line 284
    .local v5, startY:I
    const/4 v14, 0x0

    .line 285
    .local v14, totalItemHeight:I
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildHeight(I)I

    move-result v8

    .line 286
    .local v8, childLayoutHeight:I
    const/4 v13, -0x1

    .line 291
    .local v13, numRow:I
    const/4 v1, 0x0

    .line 293
    .local v1, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    if-nez v1, :cond_0

    .line 300
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create(Z)Lcom/htc/sunny2/ViewItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;Z)V

    .line 302
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    invoke-interface {v3, v4}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 304
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    .line 305
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v7

    .line 307
    .local v7, childCellheight:I
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 308
    iget-object v2, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const v3, 0x7f7fffff

    const v4, 0x7f7fffff

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 309
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 311
    const/4 v2, 0x1

    if-ge v7, v2, :cond_1

    .line 312
    sget-object v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "childRowBestFit, mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Child Cell with illegal height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 353
    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v5           #startY:I
    .end local v7           #childCellheight:I
    .end local v8           #childLayoutHeight:I
    .end local v9           #isChange:Z
    .end local v13           #numRow:I
    .end local v14           #totalItemHeight:I
    .local v10, isChange:I
    :goto_1
    return v10

    .line 295
    .end local v10           #isChange:I
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .restart local v5       #startY:I
    .restart local v8       #childLayoutHeight:I
    .restart local v9       #isChange:Z
    .restart local v13       #numRow:I
    .restart local v14       #totalItemHeight:I
    :catch_0
    move-exception v12

    .line 296
    .local v12, nsee:Ljava/util/NoSuchElementException;
    sget-object v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "childRowBestFit, NoSuchElementException, nsee: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    .end local v12           #nsee:Ljava/util/NoSuchElementException;
    .restart local v7       #childCellheight:I
    :cond_1
    const/4 v11, 0x0

    .line 320
    .local v11, j:I
    :goto_2
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    add-int/2addr v2, v7

    add-int/2addr v5, v2

    .line 321
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    add-int/2addr v2, v8

    shr-int/lit8 v3, v7, 0x2

    add-int/2addr v2, v3

    if-le v5, v2, :cond_6

    .line 322
    move v13, v11

    .line 329
    if-gez v13, :cond_2

    .line 330
    iget v13, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 333
    :cond_2
    const/4 v2, 0x1

    if-le v2, v13, :cond_3

    .line 334
    const/4 v13, 0x1

    .line 339
    :cond_3
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumRow:I

    if-eq v13, v2, :cond_4

    .line 340
    iput v13, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumRow:I

    .line 341
    const/4 v9, 0x1

    .line 345
    :cond_4
    if-lez v13, :cond_5

    .line 346
    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v2, v8, v2

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v14

    add-int/lit8 v3, v13, -0x1

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildExtraPaddingTop:I

    .line 347
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildExtraPaddingTop:I

    if-gez v2, :cond_5

    .line 348
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildExtraPaddingTop:I

    .end local v1           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v5           #startY:I
    .end local v7           #childCellheight:I
    .end local v8           #childLayoutHeight:I
    .end local v11           #j:I
    .end local v13           #numRow:I
    .end local v14           #totalItemHeight:I
    :cond_5
    move v10, v9

    .line 353
    .restart local v10       #isChange:I
    goto :goto_1

    .line 326
    .end local v10           #isChange:I
    .restart local v1       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .restart local v5       #startY:I
    .restart local v7       #childCellheight:I
    .restart local v8       #childLayoutHeight:I
    .restart local v11       #j:I
    .restart local v13       #numRow:I
    .restart local v14       #totalItemHeight:I
    :cond_6
    add-int/2addr v14, v7

    .line 319
    add-int/lit8 v11, v11, 0x1

    goto :goto_2
.end method

.method private clearChildBackground(Z)V
    .locals 6
    .parameter "full"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2076
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOriginalChildRootSViewGroupPos:Lcom/htc/sunny2/view/Vector3F;

    if-eqz v0, :cond_0

    .line 2077
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOriginalChildRootSViewGroupPos:Lcom/htc/sunny2/view/Vector3F;

    iget v1, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOriginalChildRootSViewGroupPos:Lcom/htc/sunny2/view/Vector3F;

    iget v2, v2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOriginalChildRootSViewGroupPos:Lcom/htc/sunny2/view/Vector3F;

    iget v3, v3, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/view/SViewGroup;->setPosition(FFF)V

    .line 2081
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_2

    .line 2082
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_1

    .line 2083
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 2086
    :cond_1
    if-eqz p1, :cond_2

    .line 2087
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    .line 2088
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    .line 2092
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_4

    .line 2093
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_3

    .line 2094
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 2097
    :cond_3
    if-eqz p1, :cond_4

    .line 2098
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    .line 2099
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunny2/Sprite;

    .line 2103
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_6

    .line 2104
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_5

    .line 2105
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 2108
    :cond_5
    if-eqz p1, :cond_6

    .line 2109
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    .line 2110
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSprite:Lcom/htc/sunny2/Sprite;

    .line 2115
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_7

    .line 2116
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2117
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunny2/Texture;

    .line 2120
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_8

    .line 2121
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2122
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleTexture:Lcom/htc/sunny2/Texture;

    .line 2125
    :cond_8
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    .line 2127
    if-eqz p1, :cond_10

    .line 2128
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewTitle:Ljava/lang/String;

    .line 2130
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_9

    .line 2131
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 2132
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunny2/Texture;

    .line 2136
    :cond_9
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_b

    .line 2137
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    if-eqz v0, :cond_a

    .line 2138
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SViewGroup;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 2139
    :cond_a
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 2140
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 2141
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->release()V

    .line 2142
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    .line 2145
    :cond_b
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_d

    .line 2146
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    if-eqz v0, :cond_c

    .line 2147
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SViewGroup;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 2148
    :cond_c
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 2149
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 2150
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->release()V

    .line 2151
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    .line 2154
    :cond_d
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_f

    .line 2155
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    if-eqz v0, :cond_e

    .line 2156
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SViewGroup;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 2157
    :cond_e
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 2158
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 2159
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->release()V

    .line 2160
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    .line 2163
    :cond_f
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    if-eqz v0, :cond_10

    .line 2164
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/view/SViewGroup;->dispatchResourceCreation(Z)V

    .line 2165
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/view/SViewGroup;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 2166
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SViewGroup;->release()V

    .line 2167
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    .line 2171
    :cond_10
    return-void
.end method

.method private createChildViewIndicator()I
    .locals 2

    .prologue
    .line 2364
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIndicatorResId:I

    if-gez v0, :cond_0

    .line 2365
    const/4 v0, 0x0

    .line 2368
    :goto_0
    return v0

    .line 2367
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIndicatorResId:I

    invoke-static {v0, v1}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunny2/Texture;

    .line 2368
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private doFakeOnLayout(I)V
    .locals 29
    .parameter "makeItemRowType"

    .prologue
    .line 376
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z

    .line 379
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    move/from16 v28, v0

    .line 380
    .local v28, width:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    move/from16 v22, v0

    .line 382
    .local v22, height:I
    const/4 v4, 0x1

    move/from16 v0, v28

    if-lt v0, v4, :cond_0

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ge v0, v4, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resetGesture()V

    .line 392
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    .line 394
    const v25, 0x7fffffff

    .line 395
    .local v25, oldFirstItemPositionX:I
    const v26, 0x7fffffff

    .line 396
    .local v26, oldFirstItemPositionY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v24, v0

    .line 397
    .local v24, oldFirstIdx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move/from16 v27, v0

    .line 399
    .local v27, oldLastIdx:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v0, v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    move/from16 v25, v0

    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v0, v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    move/from16 v26, v0

    .line 403
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v23, v0

    .local v23, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move/from16 v0, v23

    if-gt v0, v4, :cond_3

    .line 404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 405
    .local v18, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v18, :cond_2

    .line 406
    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    .line 407
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const v6, 0x7f7fffff

    const v8, 0x7f7fffff

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v8, v9}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 408
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    .line 403
    :cond_2
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 411
    .end local v18           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 414
    .end local v23           #i:I
    :cond_4
    const/4 v15, 0x0

    .line 416
    .local v15, bSetNewList:Z
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->checkNewMediaListOnLayout(III)Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;

    move-result-object v19

    .line 418
    .local v19, container:Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->isEnd:Z

    if-nez v4, :cond_0

    .line 421
    move-object/from16 v0, v19

    iget-boolean v15, v0, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->bSetNewList:Z

    .line 422
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    move/from16 v25, v0

    .line 423
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    move/from16 v26, v0

    .line 426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    move/from16 v0, v28

    neg-int v6, v0

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    div-int/lit8 v8, v22, 0x2

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v8, v9}, Lcom/htc/sunny2/SceneNode;->setPosition(FFF)V

    .line 428
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v4, :cond_10

    .line 429
    const/4 v7, 0x0

    .line 430
    .local v7, currentBase:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_11

    .line 431
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v7, v4, 0x0

    .line 437
    :goto_2
    move v14, v7

    .line 439
    .local v14, alignToUpperDist:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_14

    .line 440
    const/4 v4, 0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_5

    .line 441
    move/from16 v7, v26

    .line 444
    :cond_5
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_12

    .line 454
    const/4 v5, 0x0

    .line 455
    .local v5, startIdx:I
    move/from16 v17, v7

    .line 457
    .local v17, belowParentStartY:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt v4, v6, :cond_8

    .line 459
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v4, 0x1

    .line 460
    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->makeItemRow(IIIZI)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getHorizontalSpacingToNextRow(I)I

    move-result v6

    sub-int v7, v4, v6

    .line 461
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-ge v5, v4, :cond_7

    .line 462
    move/from16 v17, v7

    .line 464
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt v4, v6, :cond_8

    move/from16 v0, v22

    neg-int v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v4, v6

    if-gt v7, v4, :cond_6

    .line 467
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le v4, v6, :cond_9

    .line 471
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z

    .line 472
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->clearChildBackground(Z)V

    .line 476
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I

    .line 478
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-lez v4, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-lt v4, v6, :cond_d

    .line 480
    if-lez v17, :cond_a

    .line 481
    const/16 v17, 0x0

    .line 484
    :cond_a
    sub-int v4, v17, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    add-int v20, v4, v6

    .line 485
    .local v20, fakeChildViewHeight:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 488
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v9, v4, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move v11, v7

    move/from16 v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->makeItemRow(IIIZI)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getHorizontalSpacingToNextRow(I)I

    move-result v6

    sub-int v7, v4, v6

    .line 489
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_c

    move/from16 v0, v22

    neg-int v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v4, v6

    sub-int v4, v4, v20

    if-gt v7, v4, :cond_b

    .line 491
    :cond_c
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I

    .line 494
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_d

    move/from16 v0, v22

    neg-int v4, v0

    sub-int v4, v4, v20

    if-le v7, v4, :cond_d

    .line 495
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v9, v4, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move v11, v7

    move/from16 v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->makeItemRow(IIIZI)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getHorizontalSpacingToNextRow(I)I

    move-result v6

    sub-int v7, v4, v6

    .line 586
    .end local v5           #startIdx:I
    .end local v17           #belowParentStartY:I
    .end local v20           #fakeChildViewHeight:I
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v0, v24

    if-ne v0, v4, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move/from16 v0, v27

    if-ne v0, v4, :cond_e

    const/4 v4, 0x1

    if-ne v4, v15, :cond_f

    .line 587
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->invokeOnItemScrollListener()V

    .line 590
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyUpdatePreparator(Z)V

    .line 593
    .end local v7           #currentBase:I
    .end local v14           #alignToUpperDist:I
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    .line 595
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_20

    .line 596
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v4, :cond_1f

    .line 597
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->startExpandOutAnimation()V

    goto/16 :goto_0

    .line 434
    .restart local v7       #currentBase:I
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    add-int/lit8 v7, v4, 0x0

    goto/16 :goto_2

    .line 503
    .restart local v14       #alignToUpperDist:I
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v9, v4, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move v11, v7

    move/from16 v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->makeItemRow(IIIZI)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getHorizontalSpacingToNextRow(I)I

    move-result v6

    sub-int v7, v4, v6

    .line 504
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_13

    move/from16 v0, v22

    neg-int v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v4, v6

    if-gt v7, v4, :cond_12

    .line 508
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->fillUp()V

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->fillDown()V

    goto :goto_3

    .line 514
    :cond_14
    const/4 v4, 0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_15

    .line 515
    move/from16 v7, v25

    .line 518
    :cond_15
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_1d

    .line 528
    const/4 v5, 0x0

    .line 529
    .restart local v5       #startIdx:I
    move/from16 v16, v7

    .line 531
    .local v16, belowParentStartX:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt v4, v6, :cond_18

    .line 533
    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v4, 0x1

    .line 534
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move v9, v5

    move v10, v7

    move/from16 v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->makeItemColumn(IIIZI)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getVerticalSpacingToNextColumn(I)I

    move-result v6

    add-int v7, v4, v6

    .line 535
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-ge v5, v4, :cond_17

    .line 536
    move/from16 v16, v7

    .line 538
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_18

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt v4, v6, :cond_18

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int v4, v28, v4

    if-lt v7, v4, :cond_16

    .line 541
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le v4, v6, :cond_19

    .line 545
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z

    .line 546
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->clearChildBackground(Z)V

    .line 550
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I

    .line 552
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-lez v4, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-lt v4, v6, :cond_d

    .line 553
    if-gez v16, :cond_1a

    .line 554
    const/16 v16, 0x0

    .line 557
    :cond_1a
    sub-int v4, v16, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    add-int v21, v4, v6

    .line 558
    .local v21, fakeChildViewWidth:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 560
    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v9, v4, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move v10, v7

    move/from16 v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->makeItemColumn(IIIZI)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getVerticalSpacingToNextColumn(I)I

    move-result v6

    add-int v7, v4, v6

    .line 561
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_1c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int v4, v28, v4

    add-int v4, v4, v21

    if-lt v7, v4, :cond_1b

    .line 563
    :cond_1c
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I

    .line 566
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_d

    add-int v4, v28, v21

    if-ge v7, v4, :cond_d

    .line 567
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v9, v4, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move v10, v7

    move/from16 v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->makeItemColumn(IIIZI)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getVerticalSpacingToNextColumn(I)I

    move-result v6

    add-int v7, v4, v6

    goto/16 :goto_3

    .line 575
    .end local v5           #startIdx:I
    .end local v16           #belowParentStartX:I
    .end local v21           #fakeChildViewWidth:I
    :cond_1d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v9, v4, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move v10, v7

    move/from16 v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->makeItemColumn(IIIZI)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getVerticalSpacingToNextColumn(I)I

    move-result v6

    add-int v7, v4, v6

    .line 576
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_1e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int v4, v28, v4

    if-lt v7, v4, :cond_1d

    .line 580
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->fillLeft()V

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->fillRight()V

    goto/16 :goto_3

    .line 600
    .end local v7           #currentBase:I
    .end local v14           #alignToUpperDist:I
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAnimationRunning:Z

    .line 602
    sget-object v4, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v6, "doFakeOnLayout, MAKE_ITEM_ROW_EXPANDOUT_ANIM, End"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 605
    :cond_20
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_22

    .line 607
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v4, :cond_21

    .line 608
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->startCollapseAnimation()V

    goto/16 :goto_0

    .line 611
    :cond_21
    sget-object v4, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doFakeOnLayout, no child view, mCollapseChildType: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCollapseChildType:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 615
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->cancelAnimation()V

    .line 616
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAnimationRunning:Z

    .line 618
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->fitBottomSpace(I)V

    goto/16 :goto_0
.end method

.method private doScrollClickedItemToUpper(I)V
    .locals 8
    .parameter "clickedIndex"

    .prologue
    .line 2779
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2781
    .local v0, clickedCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_2

    .line 2782
    const/4 v4, 0x0

    .line 2783
    .local v4, nDistToAlign:I
    const/4 v1, 0x0

    .line 2785
    .local v1, forceBouncingBack:Z
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 2786
    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    neg-int v5, v5

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v4, v5, v6

    .line 2787
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2788
    .local v2, lastCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v5, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v6, v6

    iget v7, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v6, v7

    sub-int v3, v5, v6

    .line 2789
    .local v3, leftSpace:I
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-eqz v5, :cond_0

    if-lez v3, :cond_0

    .line 2790
    const/4 v1, 0x1

    .line 2803
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    new-instance v6, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerItemAlign;

    invoke-direct {v6}, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerItemAlign;-><init>()V

    const/16 v7, 0xfa

    invoke-virtual {v5, v4, v6, v7, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->scrollExpGridViewByDistance(ILcom/htc/sunny2/widget/gridview/interfaces/IScrollerDuration;IZ)V

    .line 2804
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v6, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;

    const-string v7, "ExpGridItemAlignAction"

    invoke-direct {v6, p0, p0, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 2809
    .end local v1           #forceBouncingBack:Z
    .end local v2           #lastCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v3           #leftSpace:I
    .end local v4           #nDistToAlign:I
    :goto_1
    return-void

    .line 2794
    .restart local v1       #forceBouncingBack:Z
    .restart local v4       #nDistToAlign:I
    :cond_1
    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int v4, v5, v6

    .line 2795
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2797
    .restart local v2       #lastCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v3, v5, v6

    .line 2798
    .restart local v3       #leftSpace:I
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-eqz v5, :cond_0

    if-lez v3, :cond_0

    .line 2799
    const/4 v1, 0x1

    goto :goto_0

    .line 2807
    .end local v1           #forceBouncingBack:Z
    .end local v2           #lastCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v3           #leftSpace:I
    .end local v4           #nDistToAlign:I
    :cond_2
    sget-object v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v6, "doScrollClickedItemToUpper, clickedCell is null."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private doScrollExpandedParentItemToUpper()V
    .locals 8

    .prologue
    .line 2814
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resetGesture()V

    .line 2816
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 2817
    const/4 v3, 0x0

    .line 2818
    .local v3, nDistToAlign:I
    const/4 v0, 0x0

    .line 2820
    .local v0, forceBouncingBack:Z
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 2821
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getDistFromExpandedParentItemToUpper()I

    move-result v3

    .line 2823
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2824
    .local v1, lastCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v5, v5

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 2825
    .local v2, leftSpace:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-eqz v4, :cond_0

    if-lez v2, :cond_0

    .line 2826
    const/4 v0, 0x1

    .line 2839
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    new-instance v5, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerItemAlign;

    invoke-direct {v5}, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerItemAlign;-><init>()V

    const/16 v6, 0xfa

    invoke-virtual {v4, v3, v5, v6, v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->scrollExpGridViewByDistance(ILcom/htc/sunny2/widget/gridview/interfaces/IScrollerDuration;IZ)V

    .line 2840
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;

    const-string v6, "ExpGridItemAlignAction"

    const/4 v7, 0x3

    invoke-direct {v5, p0, p0, v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 2845
    .end local v0           #forceBouncingBack:Z
    .end local v1           #lastCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v2           #leftSpace:I
    .end local v3           #nDistToAlign:I
    :goto_1
    return-void

    .line 2830
    .restart local v0       #forceBouncingBack:Z
    .restart local v3       #nDistToAlign:I
    :cond_1
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getDistFromExpandedParentItemToUpper()I

    move-result v3

    .line 2832
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2833
    .restart local v1       #lastCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int/2addr v4, v5

    iget v5, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 2834
    .restart local v2       #leftSpace:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-eqz v4, :cond_0

    if-lez v2, :cond_0

    .line 2835
    const/4 v0, 0x1

    goto :goto_0

    .line 2843
    .end local v0           #forceBouncingBack:Z
    .end local v1           #lastCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v2           #leftSpace:I
    .end local v3           #nDistToAlign:I
    :cond_2
    sget-object v4, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doScrollExpandedParentItemToUpper, mClickedParentIdx: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private fillLeftStartIndex(I)I
    .locals 4
    .parameter "currentStartIndex"

    .prologue
    .line 821
    const/4 v0, 0x0

    .line 823
    .local v0, startIdx:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-ne p1, v1, :cond_0

    .line 830
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 860
    :goto_0
    return v0

    .line 832
    :cond_0
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_1

    .line 839
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumRow:I

    rem-int/2addr v2, v3

    sub-int v0, v1, v2

    goto :goto_0

    .line 841
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 848
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumRow:I

    sub-int v0, p1, v1

    goto :goto_0

    .line 857
    :cond_2
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    sub-int v0, p1, v1

    goto :goto_0
.end method

.method private fillUpStartIndex(I)I
    .locals 4
    .parameter "currentStartIndex"

    .prologue
    .line 727
    const/4 v0, 0x0

    .line 729
    .local v0, startIdx:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-ne p1, v1, :cond_0

    .line 736
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 766
    :goto_0
    return v0

    .line 738
    :cond_0
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_1

    .line 745
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    rem-int/2addr v2, v3

    sub-int v0, v1, v2

    goto :goto_0

    .line 747
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 754
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    sub-int v0, p1, v1

    goto :goto_0

    .line 763
    :cond_2
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int v0, p1, v1

    goto :goto_0
.end method

.method private fitBottomSpace(I)V
    .locals 10
    .parameter "alignMode"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 624
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 625
    .local v1, lastCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    const/4 v2, 0x0

    .line 627
    .local v2, leftSpace:I
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v5, v9, :cond_1

    .line 628
    iget v5, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v6, v6

    iget v7, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v6, v7

    sub-int v2, v5, v6

    .line 634
    :goto_0
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-eqz v5, :cond_3

    if-lez v2, :cond_3

    .line 635
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 636
    .local v0, firstCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getLevelNumberByItem(I)I

    move-result v3

    .line 637
    .local v3, levelNo:I
    const/4 v4, 0x0

    .line 639
    .local v4, offset:I
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v5, v9, :cond_2

    .line 640
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v3

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    add-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 646
    :goto_1
    sget-object v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fitBottomSpace, leftSpace: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", offset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    neg-int v6, v4

    new-instance v7, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerItemAlign;

    invoke-direct {v7}, Lcom/htc/sunny2/widget/gridview/resource/DurationTunerItemAlign;-><init>()V

    const/16 v8, 0x190

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->scrollExpGridViewByDistance(ILcom/htc/sunny2/widget/gridview/interfaces/IScrollerDuration;IZ)V

    .line 649
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v6, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;

    const-string v7, "ExpGridItemAlignAction"

    invoke-direct {v6, p0, p0, v7, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 660
    .end local v0           #firstCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v3           #levelNo:I
    .end local v4           #offset:I
    :cond_0
    :goto_2
    return-void

    .line 631
    :cond_1
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v2, v5, v6

    goto :goto_0

    .line 643
    .restart local v0       #firstCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .restart local v3       #levelNo:I
    .restart local v4       #offset:I
    :cond_2
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v3

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    add-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    .line 652
    .end local v0           #firstCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v3           #levelNo:I
    .end local v4           #offset:I
    :cond_3
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 653
    iput-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAnimationRunning:Z

    .line 654
    iput-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z

    .line 655
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    if-eqz v5, :cond_0

    .line 656
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOriginalDeleteAllParentIdx:I

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAdjustedDeleteAllParentIdx:I

    invoke-interface {v5, v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;->onDeleteAllChildsReadyIRT(II)V

    goto :goto_2
.end method

.method private getChildHeight(I)I
    .locals 6
    .parameter "childCount"

    .prologue
    const/16 v2, 0x800

    .line 1957
    const/4 v1, 0x0

    .line 1959
    .local v1, height:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1960
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    if-nez v3, :cond_0

    .line 1961
    sget-object v3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v4, "getChildViewHeight, mChildTitleHeight is 0, re-try to do prepareChildViewTitle."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->prepareChildViewTitle()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    .line 1963
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    if-nez v3, :cond_0

    .line 1964
    sget-object v3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v4, "getChildViewHeight, mChildTitleHeight is 0, after re-try. still 0???."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildsLevelCount(I)I

    move-result v0

    .line 1971
    .local v0, childLevelCount:I
    if-lez v0, :cond_1

    .line 1972
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    mul-int/2addr v3, v0

    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingTop:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 1975
    :cond_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    add-int/2addr v3, v4

    if-le v1, v3, :cond_2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    add-int v1, v3, v4

    .line 1982
    .end local v0           #childLevelCount:I
    :cond_2
    :goto_0
    if-le v1, v2, :cond_3

    move v1, v2

    .line 1984
    :cond_3
    return v1

    .line 1979
    :cond_4
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginBottom:I

    sub-int v1, v3, v4

    goto :goto_0
.end method

.method private getChildItemStartX(II)I
    .locals 4
    .parameter "index"
    .parameter "base"

    .prologue
    .line 2007
    move v1, p2

    .line 2008
    .local v1, startX:I
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumRow:I

    div-int v0, v2, v3

    .line 2009
    .local v0, column:I
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildViewOneLevelLength()I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 2013
    return v1
.end method

.method private getChildItemStartY(II)I
    .locals 4
    .parameter "index"
    .parameter "base"

    .prologue
    .line 2017
    move v1, p2

    .line 2018
    .local v1, startY:I
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    div-int v0, v2, v3

    .line 2019
    .local v0, row:I
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildViewOneLevelLength()I

    move-result v2

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    .line 2023
    return v1
.end method

.method private getChildViewIndicatorPos(Z)Lcom/htc/sunny2/view/Vector3F;
    .locals 6
    .parameter "bRelativeToGridView"

    .prologue
    .line 2447
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 2448
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SViewGroup;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOriginalChildRootSViewGroupPos:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v5, Lcom/htc/sunny2/view/Vector3F;->mY:F

    sub-float v3, v4, v5

    .line 2450
    .local v3, yOffset:F
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/htc/sunny2/view/Vector3F;-><init>(Lcom/htc/sunny2/view/Vector3F;)V

    .line 2451
    .local v0, indicatorPos:Lcom/htc/sunny2/view/Vector3F;
    if-eqz p1, :cond_0

    .line 2452
    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    add-float/2addr v4, v3

    iput v4, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    :cond_0
    move-object v1, v0

    .line 2465
    .end local v0           #indicatorPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v3           #yOffset:F
    .local v1, indicatorPos:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 2459
    .end local v1           #indicatorPos:Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SViewGroup;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOriginalChildRootSViewGroupPos:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v5, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float v2, v4, v5

    .line 2461
    .local v2, xOffset:F
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/htc/sunny2/view/Vector3F;-><init>(Lcom/htc/sunny2/view/Vector3F;)V

    .line 2462
    .restart local v0       #indicatorPos:Lcom/htc/sunny2/view/Vector3F;
    if-eqz p1, :cond_2

    .line 2463
    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    add-float/2addr v4, v2

    iput v4, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    :cond_2
    move-object v1, v0

    .line 2465
    .restart local v1       #indicatorPos:Ljava/lang/Object;
    goto :goto_0
.end method

.method private getChildViewIndicatorPosX()I
    .locals 4

    .prologue
    .line 2390
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellWidth:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getChildViewIndicatorPosY()I
    .locals 4

    .prologue
    .line 2394
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    rem-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellHeight:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    neg-int v0, v0

    return v0
.end method

.method private getChildViewOneLevelLength()I
    .locals 3

    .prologue
    .line 1988
    const/4 v0, 0x0

    .line 1989
    .local v0, length:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v1, :cond_0

    .line 1990
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1991
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    add-int v0, v1, v2

    .line 1999
    :cond_0
    :goto_0
    return v0

    .line 1994
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    add-int v0, v1, v2

    goto :goto_0
.end method

.method private getChildWidth(I)I
    .locals 6
    .parameter "childCount"

    .prologue
    const/16 v2, 0x800

    .line 2200
    const/4 v1, 0x0

    .line 2201
    .local v1, width:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2202
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginRight:I

    sub-int v1, v3, v4

    .line 2214
    :goto_0
    if-le v1, v2, :cond_0

    move v1, v2

    .line 2216
    :cond_0
    return v1

    .line 2205
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildsLevelCount(I)I

    move-result v0

    .line 2206
    .local v0, childLevelCount:I
    if-lez v0, :cond_2

    .line 2207
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    mul-int/2addr v3, v0

    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 2210
    :cond_2
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    add-int/2addr v3, v4

    if-le v1, v3, :cond_3

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    add-int v1, v3, v4

    :cond_3
    goto :goto_0
.end method

.method private getChildsLevelCount(I)I
    .locals 5
    .parameter "childCount"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1940
    const/4 v0, 0x0

    .line 1942
    .local v0, count:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1943
    if-lez p1, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumRow:I

    if-lez v3, :cond_0

    .line 1944
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumRow:I

    div-int v3, p1, v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumRow:I

    rem-int v4, p1, v4

    if-lez v4, :cond_1

    :goto_0
    add-int v0, v3, v1

    .line 1953
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v1, v2

    .line 1944
    goto :goto_0

    .line 1948
    :cond_2
    if-lez p1, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    if-lez v3, :cond_0

    .line 1949
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    div-int v3, p1, v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    rem-int v4, p1, v4

    if-lez v4, :cond_3

    :goto_2
    add-int v0, v3, v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private getDistFromExpandedParentItemToUpper()I
    .locals 10

    .prologue
    .line 2848
    const/4 v3, 0x0

    .line 2850
    .local v3, distance:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 2851
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 2853
    .local v4, onScreenFirstCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 2865
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    if-gt v7, v8, :cond_1

    .line 2866
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int v6, v7, v8

    .line 2867
    .local v6, pRowDiff:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellHeight:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v6

    iget v8, v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v3, v7, v8

    .line 2980
    .end local v4           #onScreenFirstCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v6           #pRowDiff:I
    :cond_0
    :goto_0
    return v3

    .line 2880
    .restart local v4       #onScreenFirstCell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-direct {p0, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2882
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellHeight:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int v3, v7, v8

    .line 2885
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    div-int v1, v7, v8

    .line 2886
    .local v1, cRowDiff:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v1

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewOffsetY:I

    sub-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 2889
    iget v7, v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 2892
    neg-int v3, v3

    .line 2893
    goto :goto_0

    .line 2906
    .end local v1           #cRowDiff:I
    :cond_2
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ge v7, v8, :cond_0

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-direct {p0, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2908
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    invoke-direct {p0, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildsLevelCount(I)I

    move-result v2

    .line 2911
    .local v2, childLevelCount:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    add-int/lit8 v6, v7, 0x1

    .line 2912
    .restart local v6       #pRowDiff:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellHeight:I

    mul-int/2addr v7, v6

    add-int/lit8 v8, v6, 0x1

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    mul-int/2addr v8, v9

    add-int v3, v7, v8

    .line 2915
    if-lez v2, :cond_3

    .line 2916
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    mul-int/2addr v7, v2

    add-int/lit8 v8, v2, -0x1

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewOffsetY:I

    sub-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 2921
    :cond_3
    iget v7, v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 2924
    neg-int v3, v3

    .line 2925
    goto :goto_0

    .line 2931
    .end local v2           #childLevelCount:I
    .end local v6           #pRowDiff:I
    :cond_4
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    if-gt v7, v8, :cond_5

    .line 2932
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    div-int v5, v7, v8

    .line 2933
    .local v5, pColumnDiff:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellWidth:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v5

    iget v8, v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int v3, v7, v8

    .line 2934
    goto/16 :goto_0

    .line 2938
    .end local v5           #pColumnDiff:I
    :cond_5
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-direct {p0, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2940
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellWidth:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int v3, v7, v8

    .line 2943
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumRow:I

    div-int v0, v7, v8

    .line 2944
    .local v0, cColumnDiff:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v0

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewOffsetX:I

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 2947
    iget v7, v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    neg-int v7, v7

    add-int/2addr v3, v7

    .line 2950
    neg-int v3, v3

    .line 2951
    goto/16 :goto_0

    .line 2957
    .end local v0           #cColumnDiff:I
    :cond_6
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ge v7, v8, :cond_0

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-direct {p0, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2959
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    invoke-direct {p0, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildsLevelCount(I)I

    move-result v2

    .line 2962
    .restart local v2       #childLevelCount:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    div-int/2addr v7, v8

    add-int/lit8 v5, v7, 0x1

    .line 2963
    .restart local v5       #pColumnDiff:I
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellWidth:I

    mul-int/2addr v7, v5

    add-int/lit8 v8, v5, 0x1

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    mul-int/2addr v8, v9

    add-int v3, v7, v8

    .line 2966
    if-lez v2, :cond_7

    .line 2967
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    mul-int/2addr v7, v2

    add-int/lit8 v8, v2, -0x1

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewOffsetX:I

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 2972
    :cond_7
    iget v7, v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    neg-int v7, v7

    add-int/2addr v3, v7

    .line 2975
    neg-int v3, v3

    goto/16 :goto_0
.end method

.method private getItemRenderOrder(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 1438
    const/4 v0, 0x0

    .line 1440
    .local v0, renderOrder:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v1, :cond_0

    .line 1441
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-gt v1, p1, :cond_1

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt p1, v1, :cond_1

    .line 1442
    const/4 v0, 0x2

    .line 1449
    :cond_0
    :goto_0
    return v0

    .line 1444
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-le p1, v1, :cond_0

    .line 1445
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    .line 180
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumRow:I

    .line 181
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildExtraPaddingLeft:I

    .line 182
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellHeight:I

    .line 183
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellWidth:I

    .line 184
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    .line 185
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    .line 186
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAnimationRunning:Z

    .line 188
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    .line 189
    return-void
.end method

.method private isChildItem(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 2003
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareChildViewTitle()I
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 2271
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleLayoutResId:I

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleTextViewResId:I

    if-ne v5, v6, :cond_1

    .line 2272
    :cond_0
    sget-object v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareChildViewTitle return. mTitleLayoutResId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleLayoutResId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mTitleTextViewResId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleTextViewResId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    :goto_0
    return v1

    .line 2276
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    if-nez v5, :cond_2

    .line 2277
    iget-object v5, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 2278
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleLayoutResId:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    .line 2279
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 2280
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleTextViewResId:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleText:Landroid/widget/TextView;

    .line 2288
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    .line 2290
    .local v0, container:Landroid/view/ViewGroup;
    iget v5, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2291
    .local v4, measureW:I
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 2292
    .local v3, measureH:I
    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 2293
    iget v5, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v1, v1, v5, v6}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 2296
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 2298
    .local v1, height:I
    goto :goto_0

    .line 2283
    .end local v0           #container:Landroid/view/ViewGroup;
    .end local v1           #height:I
    .end local v3           #measureH:I
    .end local v4           #measureW:I
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    :cond_3
    sget-object v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v6, "prepareChildViewTitle, mTitleContainer is null! return 0"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setChildViewBGBoundaryBufLength(I)V
    .locals 6
    .parameter "itemLength"

    .prologue
    .line 1382
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1383
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    if-le v4, v5, :cond_1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    .line 1384
    .local v0, horizontalSpacing:I
    :goto_0
    add-int v1, p1, v0

    .line 1385
    .local v1, itemHeight:I
    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    if-le v4, v5, :cond_0

    .line 1386
    mul-int/lit8 v4, v1, 0x2

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    .line 1396
    .end local v0           #horizontalSpacing:I
    .end local v1           #itemHeight:I
    :cond_0
    :goto_1
    return-void

    .line 1383
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    goto :goto_0

    .line 1390
    :cond_2
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    if-le v4, v5, :cond_3

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    .line 1391
    .local v3, verticalSpacing:I
    :goto_2
    add-int v2, p1, v3

    .line 1392
    .local v2, itemWidth:I
    mul-int/lit8 v4, v2, 0x2

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    if-le v4, v5, :cond_0

    .line 1393
    mul-int/lit8 v4, v2, 0x2

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    goto :goto_1

    .line 1390
    .end local v2           #itemWidth:I
    .end local v3           #verticalSpacing:I
    :cond_3
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    goto :goto_2
.end method

.method private startCollapseAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2585
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 2586
    sget-object v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v3, "mClickedParentIdx is INVALID_POSITION, could not do animation."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    :goto_0
    return-void

    .line 2590
    :cond_0
    invoke-direct {p0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildViewIndicatorPos(Z)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    .line 2593
    .local v0, itemEndPos:Lcom/htc/sunny2/view/Vector3F;
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v2, v4, :cond_1

    .line 2594
    new-instance v1, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I

    int-to-float v2, v2

    invoke-direct {v1, p0, v0, v2, v4}, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Lcom/htc/sunny2/view/Vector3F;FI)V

    .line 2595
    .local v1, shrinkAnimationController:Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mShrinkAnimListenr:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 2596
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0

    .line 2599
    .end local v1           #shrinkAnimationController:Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;
    :cond_1
    new-instance v1, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Lcom/htc/sunny2/view/Vector3F;FI)V

    .line 2600
    .restart local v1       #shrinkAnimationController:Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mShrinkAnimListenr:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/view/animation/expgridview/ViewShrinkAnimation;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 2601
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0
.end method

.method private startExpandOutAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2408
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 2409
    sget-object v5, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v6, "mClickedParentIdx is INVALID_POSITION, could not do animation."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    :goto_0
    return-void

    .line 2413
    :cond_0
    invoke-direct {p0, v8}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildViewIndicatorPos(Z)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    .line 2416
    .local v4, startPos:Lcom/htc/sunny2/view/Vector3F;
    new-instance v2, Lcom/htc/sunny2/view/animation/expgridview/MultiViewExpandOutAnimation;

    invoke-direct {v2, p0, v4}, Lcom/htc/sunny2/view/animation/expgridview/MultiViewExpandOutAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Lcom/htc/sunny2/view/Vector3F;)V

    .line 2417
    .local v2, expandOutController:Lcom/htc/sunny2/view/animation/expgridview/MultiViewExpandOutAnimation;
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpandOutAnimListenr:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/view/animation/expgridview/MultiViewExpandOutAnimation;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 2418
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 2421
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildViewIndicatorPos(Z)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v4

    .line 2422
    new-instance v1, Lcom/htc/sunny2/view/animation/expgridview/ViewEnlargeAnimation;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    invoke-direct {v1, v5, v4}, Lcom/htc/sunny2/view/animation/expgridview/ViewEnlargeAnimation;-><init>(Lcom/htc/sunny2/view/SView;Lcom/htc/sunny2/view/Vector3F;)V

    .line 2423
    .local v1, enlargeAnimationController:Lcom/htc/sunny2/view/animation/expgridview/ViewEnlargeAnimation;
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mEnlargeAnimListenr:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v1, v5}, Lcom/htc/sunny2/view/animation/expgridview/ViewEnlargeAnimation;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 2424
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 2427
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    invoke-direct {p0, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildsLevelCount(I)I

    move-result v0

    .line 2429
    .local v0, childLevelCount:I
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v5, v8, :cond_1

    .line 2430
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    mul-int/2addr v5, v0

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I

    .line 2431
    new-instance v3, Lcom/htc/sunny2/view/animation/expgridview/ViewMoveAnimation;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I

    int-to-float v5, v5

    invoke-direct {v3, p0, v5, v8}, Lcom/htc/sunny2/view/animation/expgridview/ViewMoveAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;FI)V

    .line 2432
    .local v3, move:Lcom/htc/sunny2/view/animation/expgridview/ViewMoveAnimation;
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mParentExpandOutMoveAnimListenr:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/view/animation/expgridview/ViewMoveAnimation;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 2433
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0

    .line 2436
    .end local v3           #move:Lcom/htc/sunny2/view/animation/expgridview/ViewMoveAnimation;
    :cond_1
    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    mul-int/2addr v5, v0

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I

    .line 2437
    new-instance v3, Lcom/htc/sunny2/view/animation/expgridview/ViewMoveAnimation;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I

    int-to-float v5, v5

    const/4 v6, 0x2

    invoke-direct {v3, p0, v5, v6}, Lcom/htc/sunny2/view/animation/expgridview/ViewMoveAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;FI)V

    .line 2438
    .restart local v3       #move:Lcom/htc/sunny2/view/animation/expgridview/ViewMoveAnimation;
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mParentExpandOutMoveAnimListenr:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/view/animation/expgridview/ViewMoveAnimation;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 2439
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0
.end method

.method private updateChildMediaList(Lcom/htc/sunny2/IMediaList;Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V
    .locals 1
    .parameter
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;",
            "Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    const/4 v0, 0x0

    .line 1794
    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunny2/IMediaList;Z)V

    .line 1795
    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->clearChildBackground(Z)V

    .line 1796
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 1797
    return-void
.end method


# virtual methods
.method protected addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V
    .locals 2
    .parameter "cell"

    .prologue
    .line 1751
    if-nez p1, :cond_1

    .line 1752
    sget-object v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v1, "addCellToRecycler, cell is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_0
    :goto_0
    return-void

    .line 1756
    :cond_1
    invoke-virtual {p1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->isChild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1757
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1762
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)V

    goto :goto_0
.end method

.method protected calMaxDistanceToLeft(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)I
    .locals 4
    .parameter "screenItemFirst"

    .prologue
    .line 1662
    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    iget v3, p1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    sub-int v1, v2, v3

    .line 1664
    .local v1, maxDistanceToLeft:I
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_1

    .line 1666
    add-int/lit8 v2, v0, -0x1

    invoke-direct {p0, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1667
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getVerticalSpacingToNextColumn(I)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1668
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumRow:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1671
    :cond_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellWidth:I

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getVerticalSpacingToNextColumn(I)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1672
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1676
    :cond_1
    return v1
.end method

.method protected calMaxDistanceToTop(Lcom/htc/sunny2/widget/gridview/GridView$Cell;)I
    .locals 4
    .parameter "screenItemFirst"

    .prologue
    .line 1642
    iget v2, p1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    neg-int v2, v2

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v1, v2, v3

    .line 1644
    .local v1, maxDistanceToTop:I
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_1

    .line 1646
    add-int/lit8 v2, v0, -0x1

    invoke-direct {p0, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1647
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getHorizontalSpacingToNextRow(I)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1648
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1651
    :cond_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellHeight:I

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getHorizontalSpacingToNextRow(I)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1652
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1657
    :cond_1
    return v1
.end method

.method public collapseChildView(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 3443
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;Z)V

    .line 3444
    return-void
.end method

.method public collapseChildView(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "scrollToParentItem"

    .prologue
    .line 3451
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    .line 3452
    const/4 v0, 0x0

    .line 3454
    .local v0, r:Ljava/lang/Runnable;
    if-eqz p2, :cond_1

    .line 3455
    new-instance v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$8;

    .end local v0           #r:Ljava/lang/Runnable;
    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$8;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    .line 3496
    .restart local v0       #r:Ljava/lang/Runnable;
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 3497
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3502
    :cond_0
    :goto_1
    return-void

    .line 3471
    :cond_1
    new-instance v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$9;

    .end local v0           #r:Ljava/lang/Runnable;
    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$9;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    .restart local v0       #r:Ljava/lang/Runnable;
    goto :goto_0

    .line 3500
    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method protected columnBestFit()Z
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->childColumnBestFit()Z

    .line 194
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->columnBestFit()Z

    move-result v0

    return v0
.end method

.method protected cooperateAnimationItemId_IRT(Landroid/os/Bundle;)I
    .locals 2
    .parameter "bundle"

    .prologue
    .line 3300
    const-string v1, "oldOnScreenLastChildIdx"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3301
    .local v0, oldOnScreenLastChildIdx:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3302
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->cooperateAnimationItemId_IRT(Landroid/os/Bundle;)I

    move-result v0

    .line 3305
    .end local v0           #oldOnScreenLastChildIdx:I
    :cond_0
    return v0
.end method

.method public createResource()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1580
    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    .line 1581
    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunny2/Sprite;

    .line 1582
    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSprite:Lcom/htc/sunny2/Sprite;

    .line 1584
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->createChildViewIndicator()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorHeight:I

    .line 1585
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->prepareChildViewTitle()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    .line 1587
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->createResource()V

    .line 1589
    new-instance v0, Lcom/htc/sunny2/view/SViewGroup;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    .line 1590
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/view/SViewGroup;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 1591
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SViewGroup;->dispatchResourceCreation(Z)V

    .line 1592
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SViewGroup;->setRenderOrder(I)V

    .line 1593
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SViewGroup;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/sunny2/view/Vector3F;-><init>(Lcom/htc/sunny2/view/Vector3F;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOriginalChildRootSViewGroupPos:Lcom/htc/sunny2/view/Vector3F;

    .line 1595
    new-instance v0, Lcom/htc/sunny2/view/SView;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    .line 1596
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 1597
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 1598
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SView;->setRenderOrder(I)V

    .line 1600
    new-instance v0, Lcom/htc/sunny2/view/SView;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    .line 1601
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 1602
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 1603
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SView;->setRenderOrder(I)V

    .line 1605
    new-instance v0, Lcom/htc/sunny2/view/SView;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    .line 1606
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 1607
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 1608
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SView;->setRenderOrder(I)V

    .line 1610
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SViewGroup;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 1611
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SViewGroup;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 1612
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SViewGroup;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 1614
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 1616
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->setRenderOrder(I)V

    .line 1621
    :cond_0
    return-void
.end method

.method protected fillLeft()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 771
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 772
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 773
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mFirstIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mOnScreenItems.size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 776
    :cond_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-direct {p0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->fillLeftStartIndex(I)I

    move-result v3

    .line 778
    .local v3, startIdx:I
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 779
    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 780
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 784
    :cond_1
    :goto_0
    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    if-lez v4, :cond_6

    const/4 v4, -0x1

    if-le v3, v4, :cond_6

    .line 785
    if-gez v3, :cond_2

    .line 786
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mFirstIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 789
    :cond_2
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellWidth:I

    .line 790
    .local v1, cellWidth:I
    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 791
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    .line 794
    :cond_3
    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getVerticalSpacingToNextColumn(I)I

    move-result v5

    sub-int v2, v4, v5

    .line 796
    .local v2, newLeft:I
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z

    if-nez v4, :cond_4

    .line 797
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    if-ne v3, v4, :cond_5

    .line 798
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewOffsetX:I

    sub-int/2addr v2, v4

    .line 799
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingLeft:I

    sub-int/2addr v2, v4

    .line 811
    :cond_4
    :goto_1
    invoke-virtual {p0, v3, v2, v6, v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->makeItemColumn(IIIZ)I

    .line 813
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 814
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->fillLeftStartIndex(I)I

    move-result v3

    .line 816
    goto :goto_0

    .line 801
    :cond_5
    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumRow:I

    add-int/2addr v4, v3

    invoke-direct {p0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 803
    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    if-ge v4, v5, :cond_7

    .line 818
    .end local v1           #cellWidth:I
    .end local v2           #newLeft:I
    :cond_6
    return-void

    .line 807
    .restart local v1       #cellWidth:I
    .restart local v2       #newLeft:I
    :cond_7
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    sub-int/2addr v2, v4

    goto :goto_1
.end method

.method protected fillUp()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 664
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 665
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 666
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mFirstIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mOnScreenItems.size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 669
    :cond_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-direct {p0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->fillUpStartIndex(I)I

    move-result v3

    .line 671
    .local v3, startIdx:I
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 672
    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 673
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 677
    :cond_1
    :goto_0
    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    if-gez v4, :cond_6

    const/4 v4, -0x1

    if-le v3, v4, :cond_6

    .line 678
    if-gez v3, :cond_2

    .line 679
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mFirstIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 682
    :cond_2
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellHeight:I

    .line 683
    .local v1, cellHeight:I
    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 684
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    .line 687
    :cond_3
    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getHorizontalSpacingToNextRow(I)I

    move-result v5

    add-int v2, v4, v5

    .line 689
    .local v2, newTop:I
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z

    if-nez v4, :cond_4

    .line 697
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    if-ne v3, v4, :cond_5

    .line 698
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewOffsetY:I

    sub-int/2addr v2, v4

    .line 699
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingTop:I

    add-int/2addr v2, v4

    .line 719
    :cond_4
    :goto_1
    invoke-virtual {p0, v3, v6, v2, v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->makeItemRow(IIIZ)I

    .line 721
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 722
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->fillUpStartIndex(I)I

    move-result v3

    .line 723
    goto :goto_0

    .line 709
    :cond_5
    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    add-int/2addr v4, v3

    invoke-direct {p0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 711
    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    neg-int v5, v5

    if-le v4, v5, :cond_7

    .line 724
    .end local v1           #cellHeight:I
    .end local v2           #newTop:I
    :cond_6
    return-void

    .line 715
    .restart local v1       #cellHeight:I
    .restart local v2       #newTop:I
    :cond_7
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    add-int/2addr v2, v4

    goto :goto_1
.end method

.method public freeResource()V
    .locals 3

    .prologue
    .line 1625
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->clearChildBackground(Z)V

    .line 1627
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1628
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1629
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->recycle()V

    goto :goto_0

    .line 1631
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 1634
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeResource()V

    .line 1635
    return-void
.end method

.method public getBestChildInsertIndex(II)I
    .locals 5
    .parameter "parentIdx"
    .parameter "levelItemsCount"

    .prologue
    .line 2035
    const/4 v0, -0x1

    .line 2036
    .local v0, insertIndex:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2037
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 2043
    :goto_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    sub-int v1, v3, v4

    .line 2044
    .local v1, parentCount:I
    div-int v4, v1, p2

    rem-int v3, v1, p2

    if-lez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    add-int v2, v4, v3

    .line 2046
    .local v2, rowNum:I
    if-ltz p1, :cond_0

    .line 2047
    div-int v3, p1, p2

    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_3

    .line 2049
    move v0, v1

    .line 2058
    :cond_0
    :goto_2
    return v0

    .line 2040
    .end local v1           #parentCount:I
    .end local v2           #rowNum:I
    :cond_1
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    goto :goto_0

    .line 2044
    .restart local v1       #parentCount:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 2052
    .restart local v2       #rowNum:I
    :cond_3
    add-int v3, p1, p2

    rem-int v4, p1, p2

    sub-int v0, v3, v4

    goto :goto_2
.end method

.method public getChildFirstVisiblePosition()I
    .locals 4

    .prologue
    .line 1904
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getFirstVisiblePosition()I

    move-result v1

    .line 1905
    .local v1, firstVisiblePos:I
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getLastVisiblePosition()I

    move-result v2

    .line 1906
    .local v2, lastVisiblePos:I
    const/4 v0, -0x1

    .line 1908
    .local v0, childFirstVisiblePos:I
    invoke-direct {p0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1909
    move v0, v1

    .line 1915
    :cond_0
    :goto_0
    return v0

    .line 1911
    :cond_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-gt v1, v3, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-gt v3, v2, :cond_0

    .line 1912
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    goto :goto_0
.end method

.method public getChildLastVisiblePosition()I
    .locals 4

    .prologue
    .line 1919
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getFirstVisiblePosition()I

    move-result v1

    .line 1920
    .local v1, firstVisiblePos:I
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getLastVisiblePosition()I

    move-result v2

    .line 1921
    .local v2, lastVisiblePos:I
    const/4 v0, -0x1

    .line 1923
    .local v0, childlastVisiblePos:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-lt v2, v3, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt v1, v3, :cond_0

    .line 1924
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt v3, v2, :cond_1

    .line 1925
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    .line 1932
    :cond_0
    :goto_0
    return v0

    .line 1928
    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public getChildRootSViewGroup()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    return-object v0
.end method

.method public getChildsFirstIdx()I
    .locals 1

    .prologue
    .line 1892
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    return v0
.end method

.method public getChildsItemCount()I
    .locals 1

    .prologue
    .line 1900
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    return v0
.end method

.method public getChildsLastIdx()I
    .locals 1

    .prologue
    .line 1896
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    return v0
.end method

.method public getClickedParentIdx()I
    .locals 1

    .prologue
    .line 2030
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    return v0
.end method

.method protected getExtraPaddingRear()I
    .locals 3

    .prologue
    .line 1681
    const/4 v0, 0x0

    .line 1682
    .local v0, paddingRear:I
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-direct {p0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1683
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1684
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    .line 1694
    :goto_0
    return v0

    .line 1687
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    goto :goto_0

    .line 1691
    :cond_1
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v0

    goto :goto_0
.end method

.method protected getHorizontalSpacingToNextRow(I)I
    .locals 1
    .parameter "startIdx"

    .prologue
    .line 1409
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge p1, v0, :cond_2

    .line 1410
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-le p1, v0, :cond_1

    .line 1411
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v0

    .line 1418
    :goto_0
    return v0

    .line 1414
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    goto :goto_0

    .line 1418
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getLevelNumberByItem(I)I
    .locals 5
    .parameter "onScreenIdx"

    .prologue
    .line 1699
    const/4 v1, 0x0

    .line 1700
    .local v1, levelNo:I
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .local v2, modBase:I
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    .line 1702
    .local v0, childModBase:I
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1703
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 1704
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumRow:I

    .line 1707
    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v3, :cond_3

    .line 1708
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-ge p1, v3, :cond_1

    .line 1709
    div-int v1, p1, v2

    .line 1722
    :goto_0
    return v1

    .line 1711
    :cond_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt p1, v3, :cond_2

    .line 1712
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    div-int/2addr v3, v2

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int v4, p1, v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 1715
    :cond_2
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    div-int/2addr v3, v2

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v4, v4, 0x1

    sub-int v4, p1, v4

    div-int/2addr v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 1719
    :cond_3
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getLevelNumberByItem(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getPreviousRowInfomation(ILcom/htc/sunny2/widget/gridview/GridView$Cell;)Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    .locals 6
    .parameter "currentRowStartIdx"
    .parameter "currentCell"

    .prologue
    .line 3356
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v4, :cond_5

    .line 3357
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-ge p1, v4, :cond_0

    .line 3358
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridView;->getPreviousRowInfomation(ILcom/htc/sunny2/widget/gridview/GridView$Cell;)Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;

    move-result-object v1

    .line 3415
    :goto_0
    return-object v1

    .line 3370
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3371
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    .line 3372
    .local v1, info:Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int v0, p1, v4

    .line 3373
    .local v0, d:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    div-int v4, v0, v4

    if-nez v4, :cond_1

    .line 3375
    sget-object v4, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v5, "getPreviousRowStartIdx, mChildsCount>0, case1."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int v3, p1, v4

    .line 3377
    .local v3, previousRowStartIdx:I
    iput v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    .line 3378
    iget v4, p2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    goto :goto_0

    .line 3381
    .end local v3           #previousRowStartIdx:I
    :cond_1
    sget-object v4, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v5, "getPreviousRowStartIdx, mChildsCount>0, case2."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    sub-int v3, p1, v4

    .line 3383
    .restart local v3       #previousRowStartIdx:I
    iput v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    .line 3385
    iget v4, p2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {p2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    goto :goto_0

    .line 3391
    .end local v0           #d:I
    .end local v1           #info:Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    .end local v3           #previousRowStartIdx:I
    :cond_2
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v4, v4, 0x1

    sub-int v0, p1, v4

    .line 3393
    .restart local v0       #d:I
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int v4, v0, v4

    if-nez v4, :cond_4

    .line 3394
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    .line 3396
    .restart local v1       #info:Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    rem-int v2, v4, v5

    .line 3397
    .local v2, previousRowCount:I
    if-nez v2, :cond_3

    .line 3398
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    add-int/2addr v2, v4

    .line 3400
    :cond_3
    sget-object v4, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v5, "getPreviousRowStartIdx, mChildsCount>0, case3."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    sub-int v3, p1, v2

    .line 3402
    .restart local v3       #previousRowStartIdx:I
    iput v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    .line 3403
    iget v4, p2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    goto :goto_0

    .line 3408
    .end local v1           #info:Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;
    .end local v2           #previousRowCount:I
    .end local v3           #previousRowStartIdx:I
    :cond_4
    sget-object v4, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v5, "getPreviousRowStartIdx, mChildsCount>0, case4."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridView;->getPreviousRowInfomation(ILcom/htc/sunny2/widget/gridview/GridView$Cell;)Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;

    move-result-object v1

    goto/16 :goto_0

    .line 3415
    .end local v0           #d:I
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridView;->getPreviousRowInfomation(ILcom/htc/sunny2/widget/gridview/GridView$Cell;)Lcom/htc/sunny2/widget/gridview/GridView$DeleteAnimationRowInformation;

    move-result-object v1

    goto/16 :goto_0
.end method

.method protected getValidIndexDuringFastScroller(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 3421
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3431
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 3434
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getValidIndexDuringFastScroller(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getVerticalSpacingToNextColumn(I)I
    .locals 1
    .parameter "startIdx"

    .prologue
    .line 1424
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge p1, v0, :cond_2

    .line 1425
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-le p1, v0, :cond_1

    .line 1426
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v0

    .line 1433
    :goto_0
    return v0

    .line 1429
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    goto :goto_0

    .line 1433
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v0

    goto :goto_0
.end method

.method protected makeItemColumn(IIIZ)I
    .locals 6
    .parameter "startIdx"
    .parameter "startX"
    .parameter "startY"
    .parameter "scrollRight"

    .prologue
    .line 1131
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->makeItemColumn(IIIZI)I

    move-result v0

    return v0
.end method

.method protected makeItemColumn(IIIZI)I
    .locals 24
    .parameter "startIdx"
    .parameter "startX"
    .parameter "startY"
    .parameter "scrollRight"
    .parameter "prepareAnimation"

    .prologue
    .line 1136
    const/16 v19, 0x0

    .line 1138
    .local v19, makeChildColumn:Z
    invoke-direct/range {p0 .. p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1139
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z

    if-eqz v4, :cond_5

    .line 1145
    if-eqz p4, :cond_4

    .line 1146
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    add-int p1, p1, v4

    .line 1156
    :goto_0
    if-eqz p4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    .line 1157
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewOffsetX:I

    add-int p2, p2, v4

    .line 1170
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move/from16 v21, v0

    .line 1171
    .local v21, total:I
    const/4 v12, 0x0

    .line 1173
    .local v12, W:I
    if-eqz v19, :cond_11

    .line 1175
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildWidth(I)I

    move-result v23

    .line 1176
    .local v23, width:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildHeight(I)I

    move-result v16

    .line 1178
    .local v16, height:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBackgroundResId:I

    if-lez v4, :cond_2

    if-lez v23, :cond_2

    if-lez v16, :cond_2

    .line 1179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunny2/Texture;

    if-nez v4, :cond_2

    .line 1180
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    .line 1182
    if-eqz p4, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    .line 1186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBackgroundResId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    move/from16 v0, v16

    invoke-static {v4, v6, v7, v0}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunny2/Texture;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunny2/Texture;

    .line 1187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v6, v6

    move/from16 v0, v16

    int-to-float v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/view/SView;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    move/from16 v0, p2

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    move/from16 v0, v16

    int-to-float v7, v0

    neg-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginTop:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/htc/sunny2/view/SView;->setPosition(FFF)V

    .line 1193
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_1

    .line 1194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/view/SViewGroup;->setVisibility(Z)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 1201
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->addChildViewIndicator()V

    .line 1202
    const/16 v17, 0x0

    .line 1203
    .local v17, indicatorX:F
    move/from16 v0, p2

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetX:I

    int-to-float v6, v6

    add-float v17, v4, v6

    .line 1204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildViewIndicatorPosY()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0, v6, v7}, Lcom/htc/sunny2/view/SView;->setPosition(FFF)V

    .line 1239
    .end local v17           #indicatorX:F
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginTop:I

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildExtraPaddingTop:I

    add-int/2addr v4, v6

    sub-int p3, p3, v4

    .line 1241
    if-eqz p4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_3

    .line 1242
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingLeft:I

    add-int p2, p2, v4

    .line 1245
    :cond_3
    move/from16 v5, p2

    .line 1247
    .local v5, childViewItemStartX:I
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_a

    .line 1248
    if-eqz p4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_a

    .line 1249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1250
    .local v13, firstChildcell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v13, :cond_9

    .line 1251
    iget v4, v13, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildItemStartX(II)I

    move-result v5

    .line 1252
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int/2addr v4, v6

    if-lt v5, v4, :cond_a

    .line 1378
    .end local v5           #childViewItemStartX:I
    .end local v13           #firstChildcell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v16           #height:I
    .end local v23           #width:I
    :goto_3
    return v5

    .line 1149
    .end local v12           #W:I
    .end local v21           #total:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    move/from16 p1, v0

    goto/16 :goto_0

    .line 1153
    :cond_5
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1165
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-lez v4, :cond_0

    if-eqz p4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    move/from16 v0, p2

    if-eq v0, v4, :cond_0

    .line 1166
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    add-int p2, p2, v4

    goto/16 :goto_1

    .line 1207
    .restart local v12       #W:I
    .restart local v16       #height:I
    .restart local v21       #total:I
    .restart local v23       #width:I
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumRow:I

    add-int v4, v4, p1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-le v4, v6, :cond_2

    .line 1211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBackgroundResId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    move/from16 v0, v16

    invoke-static {v4, v6, v7, v0}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunny2/Texture;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunny2/Texture;

    .line 1212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v6, v6

    move/from16 v0, v16

    int-to-float v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/view/SView;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    add-int v6, v6, p2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    move/from16 v0, v16

    int-to-float v7, v0

    neg-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginTop:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/htc/sunny2/view/SView;->setPosition(FFF)V

    .line 1217
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_8

    .line 1218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/view/SViewGroup;->setVisibility(Z)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 1225
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->addChildViewIndicator()V

    .line 1226
    const/16 v17, 0x0

    .line 1227
    .restart local v17       #indicatorX:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    add-int v4, v4, p2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetX:I

    int-to-float v6, v6

    add-float v17, v4, v6

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildViewIndicatorPosY()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0, v6, v7}, Lcom/htc/sunny2/view/SView;->setPosition(FFF)V

    goto/16 :goto_2

    .line 1257
    .end local v17           #indicatorX:F
    .restart local v5       #childViewItemStartX:I
    .restart local v13       #firstChildcell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_9
    sget-object v4, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v6, "makeItemColumn, firstChildcell is null!!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    .end local v13           #firstChildcell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_a
    move/from16 v3, p1

    .local v3, idx:I
    const/16 v18, 0x0

    .local v18, j:I
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumRow:I

    move/from16 v0, v18

    if-ge v0, v4, :cond_1a

    move/from16 v0, v21

    if-ge v3, v0, :cond_1a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt v3, v4, :cond_1a

    .line 1264
    const/4 v2, 0x0

    .line 1266
    .local v2, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v2, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1272
    :goto_5
    if-nez v2, :cond_b

    .line 1273
    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create(Z)Lcom/htc/sunny2/ViewItem;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v2, v0, v4, v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;Z)V

    .line 1275
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_b
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v4, :cond_c

    .line 1276
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->cancelAnimation()V

    .line 1277
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 1278
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 1281
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    const/4 v7, 0x0

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 1284
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 1286
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v22

    .line 1287
    .local v22, w:I
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v15

    .line 1292
    .local v15, h:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    add-int/2addr v4, v15

    sub-int p3, p3, v4

    .line 1294
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_10

    .line 1295
    invoke-virtual/range {p0 .. p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getVerticalSpacingToNextColumn(I)I

    move-result v4

    neg-int v12, v4

    .line 1296
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setVisibility(Z)V

    .line 1304
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1306
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ge v3, v4, :cond_e

    .line 1307
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 1310
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le v3, v4, :cond_f

    .line 1311
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 1262
    :cond_f
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 1299
    :cond_10
    move/from16 v0, v22

    if-ge v12, v0, :cond_d

    .line 1300
    move/from16 v12, v22

    goto :goto_6

    .line 1316
    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v3           #idx:I
    .end local v5           #childViewItemStartX:I
    .end local v15           #h:I
    .end local v16           #height:I
    .end local v18           #j:I
    .end local v22           #w:I
    .end local v23           #width:I
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingTop:I

    sub-int/2addr v4, v6

    add-int p3, p3, v4

    .line 1318
    move/from16 v14, p1

    .line 1320
    .local v14, firstIndexInColumn:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    move/from16 v0, p1

    if-ge v0, v4, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    add-int v6, v6, p1

    add-int/lit8 v6, v6, -0x1

    if-gt v4, v6, :cond_12

    .line 1321
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 1324
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getItemRenderOrder(I)I

    move-result v20

    .line 1326
    .local v20, renderOrder:I
    move v3, v14

    .restart local v3       #idx:I
    const/16 v18, 0x0

    .restart local v18       #j:I
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    move/from16 v0, v18

    if-ge v0, v4, :cond_1a

    move/from16 v0, v21

    if-ge v3, v0, :cond_1a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-eq v3, v4, :cond_1a

    .line 1328
    const/4 v2, 0x0

    .line 1330
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v2, v0
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1336
    :goto_8
    if-nez v2, :cond_13

    .line 1337
    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create(Z)Lcom/htc/sunny2/ViewItem;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v2, v0, v4, v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;Z)V

    .line 1339
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_13
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v4, :cond_14

    .line 1340
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->cancelAnimation()V

    .line 1341
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 1342
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 1344
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v8

    const/4 v11, 0x0

    move-object v6, v2

    move v7, v3

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v11}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 1345
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 1347
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v22

    .line 1348
    .restart local v22       #w:I
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v15

    .line 1350
    .restart local v15       #h:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellWidth:I

    if-nez v4, :cond_15

    .line 1351
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellWidth:I

    .line 1354
    :cond_15
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellHeight:I

    if-nez v4, :cond_16

    .line 1355
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellHeight:I

    .line 1358
    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellWidth:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildViewBGBoundaryBufLength(I)V

    .line 1363
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v4, v15

    sub-int p3, p3, v4

    .line 1364
    move/from16 v0, v22

    if-ge v12, v0, :cond_17

    .line 1365
    move/from16 v12, v22

    .line 1368
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1369
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ge v3, v4, :cond_18

    .line 1370
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 1372
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le v3, v4, :cond_19

    .line 1373
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 1326
    :cond_19
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_7

    .line 1378
    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v14           #firstIndexInColumn:I
    .end local v15           #h:I
    .end local v20           #renderOrder:I
    .end local v22           #w:I
    :cond_1a
    add-int v5, p2, v12

    goto/16 :goto_3

    .line 1332
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .restart local v14       #firstIndexInColumn:I
    .restart local v20       #renderOrder:I
    :catch_0
    move-exception v4

    goto/16 :goto_8

    .line 1268
    .end local v14           #firstIndexInColumn:I
    .end local v20           #renderOrder:I
    .restart local v5       #childViewItemStartX:I
    .restart local v16       #height:I
    .restart local v23       #width:I
    :catch_1
    move-exception v4

    goto/16 :goto_5
.end method

.method protected makeItemRow(IIIZ)I
    .locals 6
    .parameter "startIdx"
    .parameter "startX"
    .parameter "startY"
    .parameter "scrollDown"

    .prologue
    .line 866
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->makeItemRow(IIIZI)I

    move-result v0

    return v0
.end method

.method protected makeItemRow(IIIZI)I
    .locals 25
    .parameter "startIdx"
    .parameter "startX"
    .parameter "startY"
    .parameter "scrollDown"
    .parameter "prepareAnimation"

    .prologue
    .line 872
    const/16 v20, 0x0

    .line 874
    .local v20, makeChildRow:Z
    invoke-direct/range {p0 .. p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 875
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z

    if-eqz v4, :cond_5

    .line 881
    if-eqz p4, :cond_4

    .line 882
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    add-int p1, p1, v4

    .line 892
    :goto_0
    if-eqz p4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    .line 893
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewOffsetY:I

    add-int p3, p3, v4

    .line 908
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move/from16 v22, v0

    .line 909
    .local v22, total:I
    const/4 v13, 0x0

    .line 911
    .local v13, H:I
    if-eqz v20, :cond_11

    .line 913
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildWidth(I)I

    move-result v24

    .line 914
    .local v24, width:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildHeight(I)I

    move-result v17

    .line 916
    .local v17, height:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBackgroundResId:I

    if-lez v4, :cond_2

    if-lez v24, :cond_2

    if-lez v17, :cond_2

    .line 917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunny2/Texture;

    if-nez v4, :cond_2

    .line 918
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    .line 920
    if-eqz p4, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    .line 924
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBackgroundResId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    move/from16 v0, v24

    invoke-static {v4, v5, v0, v7}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunny2/Texture;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunny2/Texture;

    .line 925
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    move/from16 v0, v24

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v7, v8, v9}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 926
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/view/SView;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    move/from16 v0, v24

    int-to-float v5, v0

    const/high16 v7, 0x4000

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    add-int v7, v7, p3

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/htc/sunny2/view/SView;->setPosition(FFF)V

    .line 932
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_1

    .line 933
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/view/SViewGroup;->setVisibility(Z)V

    .line 934
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 935
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 936
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 940
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->addChildViewTitle(Ljava/lang/String;)V

    .line 941
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    move/from16 v0, v24

    int-to-float v5, v0

    const/high16 v7, 0x4000

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move/from16 v0, p3

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/htc/sunny2/view/SView;->setPosition(FFF)V

    .line 944
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->addChildViewIndicator()V

    .line 945
    const/16 v18, 0x0

    .line 946
    .local v18, indicatorY:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    add-int v4, v4, p3

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorHeight:I

    int-to-float v5, v5

    const/high16 v7, 0x4000

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetY:I

    int-to-float v5, v5

    add-float v18, v4, v5

    .line 947
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildViewIndicatorPosX()I

    move-result v5

    int-to-float v5, v5

    const/4 v7, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0, v7}, Lcom/htc/sunny2/view/SView;->setPosition(FFF)V

    .line 985
    .end local v18           #indicatorY:F
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildExtraPaddingLeft:I

    add-int/2addr v4, v5

    add-int p2, p2, v4

    .line 987
    if-eqz p4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_3

    .line 988
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingTop:I

    sub-int p3, p3, v4

    .line 991
    :cond_3
    move/from16 v6, p3

    .line 992
    .local v6, childViewItemStartY:I
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_a

    .line 993
    if-eqz p4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_a

    .line 994
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 995
    .local v14, firstChildcell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v14, :cond_9

    .line 996
    iget v4, v14, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildItemStartY(II)I

    move-result v6

    .line 997
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-gt v6, v4, :cond_a

    .line 1125
    .end local v6           #childViewItemStartY:I
    .end local v14           #firstChildcell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v17           #height:I
    .end local v24           #width:I
    :goto_3
    return v6

    .line 885
    .end local v13           #H:I
    .end local v22           #total:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    move/from16 p1, v0

    goto/16 :goto_0

    .line 889
    :cond_5
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 902
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-lez v4, :cond_0

    if-eqz p4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v4, v4, 0x0

    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    .line 903
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    sub-int p3, p3, v4

    goto/16 :goto_1

    .line 950
    .restart local v13       #H:I
    .restart local v17       #height:I
    .restart local v22       #total:I
    .restart local v24       #width:I
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    add-int v4, v4, p1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-le v4, v5, :cond_2

    .line 954
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBackgroundResId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    move/from16 v0, v24

    invoke-static {v4, v5, v0, v7}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunny2/Texture;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunny2/Texture;

    .line 955
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    move/from16 v0, v24

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v7, v8, v9}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 956
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/view/SView;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 960
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    move/from16 v0, v24

    int-to-float v5, v0

    const/high16 v7, 0x4000

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    sub-int v7, p3, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/htc/sunny2/view/SView;->setPosition(FFF)V

    .line 962
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_8

    .line 963
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/view/SViewGroup;->setVisibility(Z)V

    .line 964
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 965
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 966
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 970
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->addChildViewTitle(Ljava/lang/String;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunny2/view/SView;

    move/from16 v0, v24

    int-to-float v5, v0

    const/high16 v7, 0x4000

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    sub-int v7, p3, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/htc/sunny2/view/SView;->setPosition(FFF)V

    .line 974
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->addChildViewIndicator()V

    .line 975
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunny2/view/SView;

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildViewIndicatorPosX()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    sub-int v7, p3, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorHeight:I

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetY:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/htc/sunny2/view/SView;->setPosition(FFF)V

    goto/16 :goto_2

    .line 1002
    .restart local v6       #childViewItemStartY:I
    .restart local v14       #firstChildcell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_9
    sget-object v4, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v5, "makeItemRow, firstChildcell is null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    .end local v14           #firstChildcell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_a
    move/from16 v3, p1

    .local v3, idx:I
    const/16 v19, 0x0

    .local v19, j:I
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    move/from16 v0, v19

    if-ge v0, v4, :cond_1a

    move/from16 v0, v22

    if-ge v3, v0, :cond_1a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt v3, v4, :cond_1a

    .line 1009
    const/4 v2, 0x0

    .line 1011
    .local v2, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v2, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1017
    :goto_5
    if-nez v2, :cond_b

    .line 1018
    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create(Z)Lcom/htc/sunny2/ViewItem;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v2, v0, v4, v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;Z)V

    .line 1020
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_b
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v4, :cond_c

    .line 1021
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->cancelAnimation()V

    .line 1022
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 1023
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 1026
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    const/4 v7, 0x0

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 1029
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 1031
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v23

    .line 1032
    .local v23, w:I
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v16

    .line 1038
    .local v16, h:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    add-int v4, v4, v23

    add-int p2, p2, v4

    .line 1040
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_10

    .line 1041
    invoke-virtual/range {p0 .. p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getHorizontalSpacingToNextRow(I)I

    move-result v4

    neg-int v13, v4

    .line 1042
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setVisibility(Z)V

    .line 1050
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1052
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ge v3, v4, :cond_e

    .line 1053
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 1056
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le v3, v4, :cond_f

    .line 1057
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 1007
    :cond_f
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    .line 1045
    :cond_10
    move/from16 v0, v16

    if-ge v13, v0, :cond_d

    .line 1046
    move/from16 v13, v16

    goto :goto_6

    .line 1062
    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v3           #idx:I
    .end local v6           #childViewItemStartY:I
    .end local v16           #h:I
    .end local v17           #height:I
    .end local v19           #j:I
    .end local v23           #w:I
    .end local v24           #width:I
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    add-int/2addr v4, v5

    add-int p2, p2, v4

    .line 1064
    move/from16 v15, p1

    .line 1066
    .local v15, firstIndexInRow:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    move/from16 v0, p1

    if-ge v0, v4, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    add-int v5, v5, p1

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_12

    .line 1067
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 1070
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getItemRenderOrder(I)I

    move-result v21

    .line 1072
    .local v21, renderOrder:I
    move v3, v15

    .restart local v3       #idx:I
    const/16 v19, 0x0

    .restart local v19       #j:I
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    move/from16 v0, v19

    if-ge v0, v4, :cond_1a

    move/from16 v0, v22

    if-ge v3, v0, :cond_1a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-eq v3, v4, :cond_1a

    .line 1074
    const/4 v2, 0x0

    .line 1076
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v2, v0
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1082
    :goto_8
    if-nez v2, :cond_13

    .line 1083
    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create(Z)Lcom/htc/sunny2/ViewItem;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v2, v0, v4, v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;Z)V

    .line 1085
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_13
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v4, :cond_14

    .line 1086
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->cancelAnimation()V

    .line 1087
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 1088
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 1090
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v9

    const/4 v12, 0x0

    move-object v7, v2

    move v8, v3

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v7 .. v12}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    .line 1091
    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 1093
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v23

    .line 1094
    .restart local v23       #w:I
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v16

    .line 1096
    .restart local v16       #h:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellWidth:I

    if-nez v4, :cond_15

    .line 1097
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellWidth:I

    .line 1100
    :cond_15
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellHeight:I

    if-nez v4, :cond_16

    .line 1101
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellHeight:I

    .line 1104
    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildViewBGBoundaryBufLength(I)V

    .line 1108
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int v4, v4, v23

    add-int p2, p2, v4

    .line 1109
    move/from16 v0, v16

    if-ge v13, v0, :cond_17

    .line 1110
    move/from16 v13, v16

    .line 1113
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1115
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ge v3, v4, :cond_18

    .line 1116
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 1119
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le v3, v4, :cond_19

    .line 1120
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    .line 1072
    :cond_19
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_7

    .line 1125
    .end local v2           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v15           #firstIndexInRow:I
    .end local v16           #h:I
    .end local v21           #renderOrder:I
    .end local v23           #w:I
    :cond_1a
    sub-int v6, p3, v13

    goto/16 :goto_3

    .line 1078
    .restart local v2       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .restart local v15       #firstIndexInRow:I
    .restart local v21       #renderOrder:I
    :catch_0
    move-exception v4

    goto/16 :goto_8

    .line 1013
    .end local v15           #firstIndexInRow:I
    .end local v21           #renderOrder:I
    .restart local v6       #childViewItemStartY:I
    .restart local v17       #height:I
    .restart local v24       #width:I
    :catch_1
    move-exception v4

    goto/16 :goto_5
.end method

.method protected onLayout(ZFFFII)V
    .locals 1
    .parameter "changed"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->cancelAnimation()V

    .line 364
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAnimationRunning:Z

    .line 365
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z

    .line 368
    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->clearChildBackground(Z)V

    .line 370
    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/widget/gridview/GridView;->onLayout(ZFFFII)V

    .line 372
    return-void
.end method

.method protected onScrollMotionIRT(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/16 v7, 0x800

    const/high16 v10, 0x4000

    .line 1457
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-nez v8, :cond_1

    .line 1557
    :cond_0
    :goto_0
    return-void

    .line 1459
    :cond_1
    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    .line 1460
    .local v6, totalCount:I
    if-eqz v6, :cond_0

    .line 1464
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v8, :cond_0

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v9, 0x7fffffff

    if-eq v8, v9, :cond_0

    .line 1468
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 1469
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunny2/Texture;

    if-eqz v8, :cond_2

    .line 1470
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    invoke-virtual {v8}, Lcom/htc/sunny2/view/SViewGroup;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v5

    .line 1471
    .local v5, originalChildRootPos:Lcom/htc/sunny2/view/Vector3F;
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v8}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v1

    .line 1473
    .local v1, childBGPos:Lcom/htc/sunny2/view/Vector3F;
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    add-int v2, v8, v9

    .line 1474
    .local v2, childHeightLimit:I
    if-ge v2, v7, :cond_3

    .line 1476
    :goto_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    if-ge v7, v2, :cond_4

    .line 1477
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    iget v8, v5, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v9, v5, Lcom/htc/sunny2/view/Vector3F;->mY:F

    int-to-float v10, p2

    add-float/2addr v9, v10

    iget v10, v5, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunny2/view/SViewGroup;->setPosition(FFF)V

    .line 1556
    .end local v1           #childBGPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v2           #childHeightLimit:I
    .end local v5           #originalChildRootPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(II)V

    goto :goto_0

    .restart local v1       #childBGPos:Lcom/htc/sunny2/view/Vector3F;
    .restart local v2       #childHeightLimit:I
    .restart local v5       #originalChildRootPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_3
    move v2, v7

    .line 1474
    goto :goto_1

    .line 1480
    :cond_4
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-gt v7, v8, :cond_6

    .line 1481
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1482
    .local v0, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_5

    .line 1483
    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    iget v8, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    sub-float v3, v7, v8

    .line 1484
    .local v3, childRootOffset:F
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    iget v8, v5, Lcom/htc/sunny2/view/Vector3F;->mX:F

    int-to-float v9, p2

    add-float/2addr v9, v3

    iget v10, v5, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunny2/view/SViewGroup;->setPosition(FFF)V

    goto :goto_2

    .line 1487
    .end local v3           #childRootOffset:F
    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1488
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_2

    .line 1489
    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellHeight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewOffsetY:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    iget v8, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    sub-float v3, v7, v8

    .line 1490
    .restart local v3       #childRootOffset:F
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    iget v8, v5, Lcom/htc/sunny2/view/Vector3F;->mX:F

    int-to-float v9, p2

    add-float/2addr v9, v3

    iget v10, v5, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunny2/view/SViewGroup;->setPosition(FFF)V

    goto :goto_2

    .line 1494
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v3           #childRootOffset:F
    :cond_6
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v7, v8, :cond_2

    .line 1495
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1496
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_7

    .line 1497
    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    iget v8, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    sub-float v3, v7, v8

    .line 1498
    .restart local v3       #childRootOffset:F
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    iget v8, v5, Lcom/htc/sunny2/view/Vector3F;->mX:F

    int-to-float v9, p2

    add-float/2addr v9, v3

    iget v10, v5, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunny2/view/SViewGroup;->setPosition(FFF)V

    goto/16 :goto_2

    .line 1500
    .end local v3           #childRootOffset:F
    :cond_7
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v8, v8, 0x1

    if-ne v7, v8, :cond_2

    .line 1501
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1502
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_2

    .line 1503
    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    iget v8, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    sub-float v3, v7, v8

    .line 1504
    .restart local v3       #childRootOffset:F
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    iget v8, v5, Lcom/htc/sunny2/view/Vector3F;->mX:F

    int-to-float v9, p2

    add-float/2addr v9, v3

    iget v10, v5, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunny2/view/SViewGroup;->setPosition(FFF)V

    goto/16 :goto_2

    .line 1512
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v1           #childBGPos:Lcom/htc/sunny2/view/Vector3F;
    .end local v2           #childHeightLimit:I
    .end local v3           #childRootOffset:F
    .end local v5           #originalChildRootPos:Lcom/htc/sunny2/view/Vector3F;
    :cond_8
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunny2/Texture;

    if-eqz v8, :cond_2

    .line 1513
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    invoke-virtual {v8}, Lcom/htc/sunny2/view/SViewGroup;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v5

    .line 1514
    .restart local v5       #originalChildRootPos:Lcom/htc/sunny2/view/Vector3F;
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v8}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v1

    .line 1516
    .restart local v1       #childBGPos:Lcom/htc/sunny2/view/Vector3F;
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    add-int v4, v8, v9

    .line 1517
    .local v4, childWidthLimit:I
    if-ge v4, v7, :cond_9

    .line 1519
    :goto_3
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    if-ge v7, v4, :cond_a

    .line 1520
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    iget v8, v5, Lcom/htc/sunny2/view/Vector3F;->mX:F

    int-to-float v9, p1

    add-float/2addr v8, v9

    iget v9, v5, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v10, v5, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunny2/view/SViewGroup;->setPosition(FFF)V

    goto/16 :goto_2

    :cond_9
    move v4, v7

    .line 1517
    goto :goto_3

    .line 1523
    :cond_a
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-gt v7, v8, :cond_c

    .line 1524
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1525
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_b

    .line 1526
    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingLeft:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    iget v8, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float v3, v7, v8

    .line 1527
    .restart local v3       #childRootOffset:F
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    int-to-float v8, p1

    add-float/2addr v8, v3

    iget v9, v5, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v10, v5, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunny2/view/SViewGroup;->setPosition(FFF)V

    goto/16 :goto_2

    .line 1531
    .end local v3           #childRootOffset:F
    :cond_b
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1532
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_2

    .line 1533
    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCellWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewOffsetX:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    iget v8, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float v3, v7, v8

    .line 1534
    .restart local v3       #childRootOffset:F
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    int-to-float v8, p1

    add-float/2addr v8, v3

    iget v9, v5, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v10, v5, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunny2/view/SViewGroup;->setPosition(FFF)V

    goto/16 :goto_2

    .line 1538
    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v3           #childRootOffset:F
    :cond_c
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v7, v8, :cond_2

    .line 1539
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1540
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_d

    .line 1541
    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    iget v8, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float v3, v7, v8

    .line 1542
    .restart local v3       #childRootOffset:F
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    int-to-float v8, p1

    add-float/2addr v8, v3

    iget v9, v5, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v10, v5, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunny2/view/SViewGroup;->setPosition(FFF)V

    goto/16 :goto_2

    .line 1544
    .end local v3           #childRootOffset:F
    :cond_d
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v8, v8, 0x1

    if-ne v7, v8, :cond_2

    .line 1545
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 1546
    .restart local v0       #cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_2

    .line 1547
    iget v7, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    iget v8, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float v3, v7, v8

    .line 1548
    .restart local v3       #childRootOffset:F
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    int-to-float v8, p1

    add-float/2addr v8, v3

    iget v9, v5, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v10, v5, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunny2/view/SViewGroup;->setPosition(FFF)V

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 1
    .parameter "event"
    .parameter "nHitSpriteId"

    .prologue
    .line 1571
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 1572
    const/4 v0, 0x1

    .line 1575
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridView;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public prepareDeleteAllChildView(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 3081
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIsAnimationOn:Z

    if-eqz v1, :cond_2

    .line 3082
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCollapseChildType:I

    .line 3083
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOriginalDeleteAllParentIdx:I

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mAdjustedDeleteAllParentIdx:I

    .line 3084
    const/4 v0, 0x0

    .line 3086
    .local v0, r:Ljava/lang/Runnable;
    new-instance v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$7;

    .end local v0           #r:Ljava/lang/Runnable;
    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$7;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    .line 3102
    .restart local v0       #r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 3103
    if-eqz v0, :cond_0

    .line 3104
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3114
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 3107
    .restart local v0       #r:Ljava/lang/Runnable;
    :cond_1
    if-eqz v0, :cond_0

    .line 3108
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3112
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_0
.end method

.method public prepareUpdateChildView(I)V
    .locals 3
    .parameter "clickedIndex"

    .prologue
    const/4 v1, 0x0

    .line 1807
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mCollapseChildType:I

    .line 1809
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I

    .line 1810
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z

    .line 1811
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIsAnimationOn:Z

    if-eqz v1, :cond_2

    .line 1812
    new-instance v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$1;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    .line 1826
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 1827
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1838
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 1830
    .restart local v0       #r:Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1834
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    if-eqz v1, :cond_0

    .line 1835
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I

    invoke-interface {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;->onPrepareReadyIRT(I)V

    goto :goto_0
.end method

.method protected resetLastIdxInOnLayout(I)I
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x2

    .line 1727
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1728
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    .line 1729
    .local v0, modBase:I
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v2, v3, :cond_0

    .line 1730
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumRow:I

    .line 1733
    :cond_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int v2, p1, v2

    rem-int/2addr v2, v0

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    .line 1745
    .end local v0           #modBase:I
    :goto_0
    return v2

    .line 1735
    :cond_1
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-le p1, v2, :cond_3

    .line 1736
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v1, v2, 0x1

    .line 1737
    .local v1, startIdx:I
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 1738
    .restart local v0       #modBase:I
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    if-ne v2, v3, :cond_2

    .line 1739
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 1742
    :cond_2
    sub-int v2, p1, v1

    rem-int/2addr v2, v0

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1745
    .end local v0           #modBase:I
    .end local v1           #startIdx:I
    :cond_3
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v2

    goto :goto_0
.end method

.method protected restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunny2/view/Vector3F;
    .locals 24
    .parameter "currentId"
    .parameter "oldIdx"
    .parameter "bundle"

    .prologue
    .line 3235
    const-string v20, "oldOnScreenFirstChildIdx"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 3236
    .local v13, oldOnScreenFirstChildIdx:I
    const-string v20, "oldOnScreenFirstChildItemPositionY"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 3237
    .local v14, oldOnScreenFirstChildItemPositionY:I
    const-string v20, "oldOnScreenLastChildIdx"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 3239
    .local v15, oldOnScreenLastChildIdx:I
    const-string v20, "oldFirstIdxAfterChild"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 3240
    .local v10, oldFirstIndexAfterChild:I
    const-string v20, "oldFirstItemAfterChildPositionY"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 3242
    .local v11, oldFirstItemAfterChildPositionY:I
    const-string v20, "oldFirstChildIdx"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 3243
    .local v9, oldFirstChildIdx:I
    const-string v20, "oldLastChildIdx"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 3245
    .local v12, oldLastChildIdx:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_0

    .line 3247
    invoke-super/range {p0 .. p3}, Lcom/htc/sunny2/widget/gridview/GridView;->restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v20

    .line 3293
    :goto_0
    return-object v20

    .line 3251
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3252
    .local v2, cell:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v17

    .line 3253
    .local v17, w:I
    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    .line 3255
    .local v8, h:I
    move/from16 v0, p2

    if-ge v0, v13, :cond_2

    .line 3257
    move/from16 v0, p2

    if-gt v9, v0, :cond_1

    move/from16 v0, p2

    if-gt v0, v12, :cond_1

    .line 3258
    sub-int v7, p2, v9

    .line 3259
    .local v7, d:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    move/from16 v20, v0

    rem-int v3, v7, v20

    .line 3260
    .local v3, childColId:I
    add-int/lit8 v20, v13, -0x1

    sub-int v20, v20, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    move/from16 v21, v0

    div-int v20, v20, v21

    add-int/lit8 v4, v20, 0x1

    .line 3263
    .local v4, childRowDiff:I
    div-int/lit8 v20, v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildExtraPaddingLeft:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    move/from16 v21, v0

    add-int v21, v21, v17

    mul-int v21, v21, v3

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    move/from16 v21, v0

    add-int v18, v20, v21

    .line 3264
    .local v18, x:I
    div-int/lit8 v20, v8, 0x2

    rsub-int/lit8 v20, v20, 0x0

    add-int v20, v20, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    move/from16 v21, v0

    add-int v21, v21, v8

    mul-int v21, v21, v4

    add-int v19, v20, v21

    .line 3266
    .local v19, y:I
    new-instance v20, Lcom/htc/sunny2/view/Vector3F;

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    goto/16 :goto_0

    .line 3269
    .end local v3           #childColId:I
    .end local v4           #childRowDiff:I
    .end local v7           #d:I
    .end local v18           #x:I
    .end local v19           #y:I
    :cond_1
    invoke-super/range {p0 .. p3}, Lcom/htc/sunny2/widget/gridview/GridView;->restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v20

    goto/16 :goto_0

    .line 3272
    :cond_2
    move/from16 v0, p2

    if-gt v13, v0, :cond_3

    move/from16 v0, p2

    if-gt v0, v12, :cond_3

    .line 3274
    sub-int v7, p2, v13

    .line 3275
    .restart local v7       #d:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    move/from16 v20, v0

    rem-int v3, v7, v20

    .line 3276
    .restart local v3       #childColId:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    move/from16 v20, v0

    div-int v5, v7, v20

    .line 3278
    .local v5, childRowId:I
    div-int/lit8 v20, v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildExtraPaddingLeft:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    move/from16 v21, v0

    add-int v21, v21, v17

    mul-int v21, v21, v3

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    move/from16 v21, v0

    add-int v18, v20, v21

    .line 3279
    .restart local v18       #x:I
    div-int/lit8 v20, v8, 0x2

    rsub-int/lit8 v20, v20, 0x0

    add-int v20, v20, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    move/from16 v21, v0

    add-int v21, v21, v8

    mul-int v21, v21, v5

    sub-int v19, v20, v21

    .line 3281
    .restart local v19       #y:I
    new-instance v20, Lcom/htc/sunny2/view/Vector3F;

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    goto/16 :goto_0

    .line 3286
    .end local v3           #childColId:I
    .end local v5           #childRowId:I
    .end local v7           #d:I
    .end local v18           #x:I
    .end local v19           #y:I
    :cond_3
    sub-int v7, p2, v10

    .line 3287
    .restart local v7       #d:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    move/from16 v20, v0

    rem-int v6, v7, v20

    .line 3288
    .local v6, colId:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    move/from16 v20, v0

    div-int v16, v7, v20

    .line 3290
    .local v16, rowId:I
    div-int/lit8 v20, v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    move/from16 v21, v0

    add-int v21, v21, v17

    mul-int v21, v21, v6

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    move/from16 v21, v0

    add-int v18, v20, v21

    .line 3291
    .restart local v18       #x:I
    div-int/lit8 v20, v8, 0x2

    rsub-int/lit8 v20, v20, 0x0

    add-int v20, v20, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    move/from16 v21, v0

    add-int v21, v21, v8

    mul-int v21, v21, v16

    sub-int v19, v20, v21

    .line 3293
    .restart local v19       #y:I
    new-instance v20, Lcom/htc/sunny2/view/Vector3F;

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    goto/16 :goto_0
.end method

.method protected rowBestFit()Z
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->childRowBestFit()Z

    .line 276
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->rowBestFit()Z

    move-result v0

    return v0
.end method

.method public setChildHorizontalSpacing(I)V
    .locals 0
    .parameter "hspace"

    .prologue
    .line 2264
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    .line 2265
    return-void
.end method

.method public setChildIndicatorOffset(II)V
    .locals 0
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 2238
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetX:I

    .line 2239
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetY:I

    .line 2240
    return-void
.end method

.method public setChildIndicatorOffsetY(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 2243
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetX:I

    invoke-virtual {p0, v0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildIndicatorOffset(II)V

    .line 2244
    return-void
.end method

.method public setChildMargin(II)V
    .locals 2
    .parameter "pLeft"
    .parameter "pRight"

    .prologue
    .line 2174
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginTop:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginBottom:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildMargin(IIII)V

    .line 2175
    return-void
.end method

.method public setChildMargin(IIII)V
    .locals 0
    .parameter "pTop"
    .parameter "pBottom"
    .parameter "pLeft"
    .parameter "pRight"

    .prologue
    .line 2182
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginTop:I

    .line 2183
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginBottom:I

    .line 2184
    iput p3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    .line 2185
    iput p4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildMarginRight:I

    .line 2186
    return-void
.end method

.method public setChildMediaList(Lcom/htc/sunny2/IMediaList;Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V
    .locals 3
    .parameter
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;",
            "Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1859
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    iget v1, p2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setSelection(IZ)V

    .line 1860
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->updateChildMediaList(Lcom/htc/sunny2/IMediaList;Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 1862
    new-instance v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$2;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$2;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    .line 1879
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1880
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1885
    :goto_0
    return-void

    .line 1883
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setChildPadding(IIII)V
    .locals 0
    .parameter "pTop"
    .parameter "pBottom"
    .parameter "pLeft"
    .parameter "pRight"

    .prologue
    .line 2193
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingTop:I

    .line 2194
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    .line 2195
    iput p3, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingLeft:I

    .line 2196
    iput p4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    .line 2197
    return-void
.end method

.method public setChildVerticalSpacing(I)V
    .locals 0
    .parameter "vspace"

    .prologue
    .line 2260
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    .line 2261
    return-void
.end method

.method public setChildViewBackground(II)V
    .locals 0
    .parameter "indicator"
    .parameter "background"

    .prologue
    .line 2068
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mIndicatorResId:I

    .line 2069
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewBackgroundResId:I

    .line 2070
    return-void
.end method

.method public setChildViewOffset(II)V
    .locals 0
    .parameter "Xoffset"
    .parameter "Yoffset"

    .prologue
    .line 2251
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewOffsetX:I

    .line 2252
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewOffsetY:I

    .line 2253
    return-void
.end method

.method public setChildViewOffsetY(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 2256
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildViewOffset(II)V

    .line 2257
    return-void
.end method

.method public setChildViewTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 2229
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildViewTitle:Ljava/lang/String;

    .line 2231
    return-void
.end method

.method public setChildViewTitleLayot(II)V
    .locals 3
    .parameter "titleLayoutResId"
    .parameter "titleTextViewResId"

    .prologue
    .line 2223
    sget-object v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChildViewTitleLayot, mTitleLayoutResId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTitleTextViewResId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleLayoutResId:I

    .line 2225
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mTitleTextViewResId:I

    .line 2226
    return-void
.end method

.method public setMediaList(Lcom/htc/sunny2/IMediaList;Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V
    .locals 0
    .parameter
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;",
            "Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1845
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<+Lcom/htc/sunny2/IMediaData;>;"
    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 1851
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 1852
    return-void
.end method

.method public setPrepareUpdateListener(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3054
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    .line 3055
    return-void
.end method

.method protected startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V
    .locals 16
    .parameter "cooperateItemId"
    .parameter "delayTime"
    .parameter "durition"
    .parameter "bundle"

    .prologue
    .line 3312
    const-string v11, "oldOnScreenLastChildIdx"

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 3313
    .local v9, oldOnScreenLastChildIdx:I
    const/4 v11, -0x1

    if-ne v9, v11, :cond_1

    .line 3314
    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/widget/gridview/GridView;->startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V

    .line 3349
    :cond_0
    :goto_0
    return-void

    .line 3317
    :cond_1
    const-string v11, "oldChildViewBGHeight"

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 3318
    .local v6, oldChildViewBGHeight:I
    const-string v11, "oldChildViewBGPositionY"

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    .line 3319
    .local v8, oldChildViewBGPositionY:F
    int-to-float v11, v6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v12, v12

    div-float v10, v11, v12

    .line 3321
    .local v10, scale:F
    new-instance v7, Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v11}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v11

    invoke-direct {v7, v11}, Lcom/htc/sunny2/view/Vector3F;-><init>(Lcom/htc/sunny2/view/Vector3F;)V

    .line 3328
    .local v7, oldChildViewBGPos:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetY:I

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    int-to-float v5, v11

    .line 3329
    .local v5, oldBGTopPadding:F
    mul-float v4, v5, v10

    .line 3330
    .local v4, newBGTopPadding:F
    sub-float v11, v4, v5

    add-float/2addr v11, v8

    iput v11, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 3332
    sget-object v11, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "startCooperateAnimation_IRT, cooperateItemId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", delayTime: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", durition: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p4

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    const-string v11, "dobackgroundanimation"

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 3336
    .local v3, doBackgroundAnimation:Z
    if-eqz v3, :cond_0

    .line 3339
    new-instance v2, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v2}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 3340
    .local v2, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    new-instance v11, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    invoke-direct {v11, v12, v10, v13}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    new-instance v12, Lcom/htc/sunny2/view/Vector3F;

    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f80

    const/high16 v15, 0x3f80

    invoke-direct {v12, v13, v14, v15}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v2, v11, v12}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 3341
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v11}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v11

    invoke-virtual {v2, v7, v11}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 3342
    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setStartOffset(J)V

    .line 3343
    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 3344
    sget-object v11, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEOUT_QUARTIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v2, v11}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 3345
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v11, v2}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto/16 :goto_0
.end method

.method protected storeCurrentState_IRT([I)Landroid/os/Bundle;
    .locals 22
    .parameter "deleteIndex"

    .prologue
    .line 3123
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mIgnorePinToBottmTopDuringDeleteAnimation:Z

    .line 3125
    if-nez p1, :cond_0

    .line 3126
    sget-object v19, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v20, "storeCurrentState_IRT, deleteIndex is null!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    invoke-super/range {p0 .. p1}, Lcom/htc/sunny2/widget/gridview/GridView;->storeCurrentState_IRT([I)Landroid/os/Bundle;

    move-result-object v2

    .line 3229
    :goto_0
    return-object v2

    .line 3130
    :cond_0
    move-object/from16 v0, p1

    array-length v4, v0

    .line 3131
    .local v4, delSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    move/from16 v19, v0

    add-int v9, v19, v4

    .line 3132
    .local v9, oldChildsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    move/from16 v19, v0

    add-int v14, v19, v4

    .line 3133
    .local v14, oldLastChildIdx:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    .line 3134
    .local v7, oldChildViewBGHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunny2/view/SViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/view/SViewGroup;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mOriginalChildRootSViewGroupPos:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v20, v0

    sub-float v18, v19, v20

    .line 3135
    .local v18, yOffset:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v19, v0

    add-float v8, v19, v18

    .line 3137
    .local v8, oldChildViewBGPositionY:F
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v4, :cond_1

    .line 3138
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v19, v0

    aget v20, p1, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_8

    aget v19, p1, v6

    move/from16 v0, v19

    if-gt v0, v14, :cond_8

    .line 3142
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mIgnorePinToBottmTopDuringDeleteAnimation:Z

    .line 3147
    :cond_1
    const/4 v5, 0x0

    .line 3149
    .local v5, doBackgroundAnimation:Z
    if-lez v7, :cond_5

    .line 3150
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildsLevelCount(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getChildsLevelCount(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 3152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-gt v0, v14, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v14, v0, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    .line 3153
    :cond_3
    sget-object v19, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v20, "storeCurrentState_IRT, call clearChildBackground."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->clearChildBackground(Z)V

    .line 3157
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-gt v0, v14, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-gt v14, v0, :cond_5

    .line 3158
    const/4 v5, 0x1

    .line 3163
    :cond_5
    const/4 v10, -0x1

    .line 3164
    .local v10, oldFirstIdx:I
    const/4 v13, 0x1

    .line 3166
    .local v13, oldFirstItemPositionY:I
    const/4 v15, -0x1

    .line 3167
    .local v15, oldOnScreenFirstChildIdx:I
    const/16 v16, 0x0

    .line 3168
    .local v16, oldOnScreenFirstChildItemPositionY:I
    const/16 v17, -0x1

    .line 3170
    .local v17, oldOnScreenLastChildIdx:I
    const/4 v11, -0x1

    .line 3171
    .local v11, oldFirstIndexAfterChild:I
    const/4 v12, 0x0

    .line 3173
    .local v12, oldFirstItemAfterChildPositionY:I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3175
    .local v2, b:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v19

    if-eqz v19, :cond_c

    .line 3176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3177
    .local v3, c:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v3, :cond_9

    .line 3178
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 3179
    iget v13, v3, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    .line 3185
    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-gt v6, v0, :cond_c

    .line 3186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #c:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    .line 3187
    .restart local v3       #c:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    if-eqz v3, :cond_b

    .line 3188
    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->isChild()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 3189
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_6

    .line 3190
    move v15, v6

    .line 3191
    iget v0, v3, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    move/from16 v16, v0

    .line 3194
    :cond_6
    move/from16 v0, v17

    if-le v6, v0, :cond_7

    .line 3195
    move/from16 v17, v6

    .line 3185
    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3137
    .end local v2           #b:Landroid/os/Bundle;
    .end local v3           #c:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .end local v5           #doBackgroundAnimation:Z
    .end local v10           #oldFirstIdx:I
    .end local v11           #oldFirstIndexAfterChild:I
    .end local v12           #oldFirstItemAfterChildPositionY:I
    .end local v13           #oldFirstItemPositionY:I
    .end local v15           #oldOnScreenFirstChildIdx:I
    .end local v16           #oldOnScreenFirstChildItemPositionY:I
    .end local v17           #oldOnScreenLastChildIdx:I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 3182
    .restart local v2       #b:Landroid/os/Bundle;
    .restart local v3       #c:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .restart local v5       #doBackgroundAnimation:Z
    .restart local v10       #oldFirstIdx:I
    .restart local v11       #oldFirstIndexAfterChild:I
    .restart local v12       #oldFirstItemAfterChildPositionY:I
    .restart local v13       #oldFirstItemPositionY:I
    .restart local v15       #oldOnScreenFirstChildIdx:I
    .restart local v16       #oldOnScreenFirstChildItemPositionY:I
    .restart local v17       #oldOnScreenLastChildIdx:I
    :cond_9
    sget-object v19, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "storeCurrentState_IRT mFirstIdx="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", cell=null"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3198
    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_7

    .line 3199
    move v11, v6

    .line 3200
    iget v12, v3, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    goto :goto_4

    .line 3205
    :cond_b
    sget-object v19, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "storeCurrentState_IRT, store child item. cell is null. i: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3215
    .end local v3           #c:Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    :cond_c
    const-string v19, "oldFirstChildIdx"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3216
    const-string v19, "oldLastChildIdx"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3217
    const-string v19, "oldFirstIdx"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3218
    const-string v19, "oldFirstItemPositionY"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3219
    const-string v19, "oldOnScreenFirstChildIdx"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3220
    const-string v19, "oldOnScreenFirstChildItemPositionY"

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3221
    const-string v19, "oldOnScreenLastChildIdx"

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3222
    const-string v19, "oldFirstIdxAfterChild"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3223
    const-string v19, "oldFirstItemAfterChildPositionY"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3225
    const-string v19, "oldChildViewBGHeight"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3226
    const-string v19, "oldChildViewBGPositionY"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3227
    const-string v19, "dobackgroundanimation"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public updateChildViewParameters(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 1767
    if-eqz p1, :cond_2

    .line 1771
    iget v2, p1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    .line 1772
    iget v2, p1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    .line 1773
    iget v2, p1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mChildsCount:I

    .line 1774
    iget v2, p1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    .line 1776
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    if-ltz v2, :cond_1

    .line 1777
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    .line 1778
    .local v0, modBase:I
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1779
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumRow:I

    .line 1781
    :cond_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    rem-int v1, v2, v0

    .line 1782
    .local v1, offset:I
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 1791
    .end local v0           #modBase:I
    .end local v1           #offset:I
    :goto_0
    return-void

    .line 1785
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    goto :goto_0

    .line 1789
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "updateMediaList, params could not be null!!!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected updateFirstIdxInScrollMotionIRT(I)V
    .locals 1
    .parameter "removedIdx"

    .prologue
    .line 1561
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-gt v0, p1, :cond_0

    .line 1562
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 1563
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getGridViewItem(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1564
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    .line 1567
    :cond_0
    return-void
.end method
