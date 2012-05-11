.class public Lcom/htc/fragment/widget/CarouselHost;
.super Landroid/widget/FrameLayout;
.source "CarouselHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Lcom/htc/fragment/widget/DragController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/CarouselHost$1;,
        Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;,
        Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;,
        Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;,
        Lcom/htc/fragment/widget/CarouselHost$TabContainer;,
        Lcom/htc/fragment/widget/CarouselHost$FakeScreen;,
        Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;,
        Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;,
        Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;,
        Lcom/htc/fragment/widget/CarouselHost$TabSpec;,
        Lcom/htc/fragment/widget/CarouselHost$OnTabBeforeChangeListener;,
        Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;
    }
.end annotation


# static fields
.field static BACKGROUND_DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field public static final TASK_STATE_DEFAULT:I = 0x63

.field public static final TASK_STATE_POOL:I = 0x64

.field public static final TASK_STATE_UNREMOVABLE:I = 0x65


# instance fields
.field private attached:Z

.field private contentHeight:I

.field private contentWidth:I

.field private customSpace:I

.field private customViewContainer:Landroid/widget/FrameLayout;

.field private decorViewHash:Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;

.field private display:Landroid/view/Display;

.field private enableCustomView:Z

.field eresources:Landroid/content/res/Resources;

.field private isFullScreen:Z

.field private isPortrait:Z

.field protected mBackupCurrentTag:Ljava/lang/String;

.field private mBitmapOffsetX:I

.field private mBitmapOffsetY:I

.field private mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

.field private final mContext:Landroid/content/Context;

.field private mCorOffsetX:F

.field private mCorOffsetY:F

.field protected mCurrentTabTag:Ljava/lang/String;

.field private mCurrentView:Landroid/view/View;

.field private mDragInfo:Ljava/lang/Object;

.field private mDragRect:Landroid/graphics/Rect;

.field private mDragSource:Lcom/htc/fragment/widget/DragSource;

.field private mDragView:Landroid/widget/FrameLayout;

.field private mDragging:Z

.field private mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

.field private final mDropCoordinates:[I

.field private mDropTarget:Lcom/htc/fragment/widget/DropTarget;

.field private mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

.field private mIsProviderAP:Z

.field private mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

.field private mOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

.field private mOriginator:Landroid/view/View;

.field private mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

.field private final mRect:Landroid/graphics/Rect;

.field private mShouldDrop:Z

.field private mShouldStopFling:Z

.field private mShouldThrowEvent:Z

.field private mSourceX:F

.field private mSourceY:F

.field private mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

.field private mTabPrefix:Ljava/lang/String;

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private resetBound:Z

.field private setCurrentTabBeforeAttached:Ljava/lang/Object;

.field private shadowOverlay:Landroid/graphics/drawable/Drawable;

.field private tipBubble:Landroid/widget/TextView;

.field private viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

.field private widgetSpace:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "TabBackground"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/fragment/widget/CarouselHost;->BACKGROUND_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 96
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    .line 115
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragRect:Landroid/graphics/Rect;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mRect:Landroid/graphics/Rect;

    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropCoordinates:[I

    .line 142
    new-instance v0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;-><init>(Lcom/htc/fragment/widget/CarouselHost;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    .line 190
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    .line 191
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    .line 193
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    .line 194
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    .line 195
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    .line 197
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->display:Landroid/view/Display;

    .line 199
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    .line 370
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView:Z

    .line 372
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    .line 374
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    .line 702
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    .line 1862
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    .line 1936
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    .line 1937
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    .line 2841
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    .line 2882
    new-instance v0, Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;

    invoke-direct {v0, p0, v1}, Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;-><init>(Lcom/htc/fragment/widget/CarouselHost;Lcom/htc/fragment/widget/CarouselHost$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->decorViewHash:Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;

    .line 152
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    .line 154
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setOrientation()V

    .line 155
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->initCarouselHost()V

    .line 157
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    .line 158
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    .line 115
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragRect:Landroid/graphics/Rect;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mRect:Landroid/graphics/Rect;

    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropCoordinates:[I

    .line 142
    new-instance v0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;-><init>(Lcom/htc/fragment/widget/CarouselHost;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    .line 190
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    .line 191
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    .line 193
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    .line 194
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    .line 195
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    .line 197
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->display:Landroid/view/Display;

    .line 199
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    .line 370
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView:Z

    .line 372
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    .line 374
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    .line 702
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    .line 1862
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    .line 1936
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    .line 1937
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    .line 2841
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    .line 2882
    new-instance v0, Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;

    invoke-direct {v0, p0, v1}, Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;-><init>(Lcom/htc/fragment/widget/CarouselHost;Lcom/htc/fragment/widget/CarouselHost$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->decorViewHash:Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;

    .line 163
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    .line 165
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setOrientation()V

    .line 166
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->initCarouselHost()V

    .line 168
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    .line 169
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    .line 170
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/app/LocalFragmentManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselContentGallery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/fragment/widget/CarouselHost;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->decorViewHash:Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/fragment/widget/CarouselHost;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/DragSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/DropTarget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropTarget:Lcom/htc/fragment/widget/DropTarget;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/fragment/widget/CarouselHost;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/fragment/widget/CarouselHost;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/fragment/widget/CarouselHost;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/CarouselHost;->moveIndicator(FF)V

    return-void
.end method

.method private addTab(Lcom/htc/fragment/widget/CarouselHost$TabSpec;Z)V
    .locals 6
    .parameter "tabSpec"
    .parameter "isRemovable"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 729
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;

    move-result-object v3

    if-nez v3, :cond_0

    .line 730
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "you must specify a way to create the tab indicator."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 733
    :cond_0
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v3

    if-nez v3, :cond_1

    .line 734
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "you must specify a way to create the tab content"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 737
    :cond_1
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mIsProviderAP:Z

    if-eqz v3, :cond_2

    .line 738
    new-instance v0, Lcom/htc/fragment/widget/TaskInfo;

    invoke-direct {v0}, Lcom/htc/fragment/widget/TaskInfo;-><init>()V

    .line 739
    .local v0, task:Lcom/htc/fragment/widget/TaskInfo;
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;

    .line 741
    .local v1, temp:Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->gId:Ljava/lang/String;

    .line 742
    invoke-virtual {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    .line 743
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$200(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->taskName:Ljava/lang/String;

    .line 744
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->resPackage:Ljava/lang/String;

    .line 745
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->icon:Ljava/lang/String;

    .line 746
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$400(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    .line 747
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$500(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->overlay:Ljava/lang/String;

    .line 748
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v2

    check-cast v2, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;

    .line 749
    .local v2, temp2:Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;
    #getter for: Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->access$700(Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    .line 750
    iput v4, v0, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    .line 751
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    .line 752
    if-ne p2, v4, :cond_3

    .line 753
    iput v4, v0, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    .line 756
    :goto_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselFragment;->addAndSyncTask(Lcom/htc/fragment/widget/TaskInfo;)V

    .line 758
    .end local v0           #task:Lcom/htc/fragment/widget/TaskInfo;
    .end local v1           #temp:Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;
    .end local v2           #temp2:Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;
    :cond_2
    return-void

    .line 755
    .restart local v0       #task:Lcom/htc/fragment/widget/TaskInfo;
    .restart local v1       #temp:Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;
    .restart local v2       #temp2:Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;
    :cond_3
    iput v5, v0, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    goto :goto_0
.end method

.method private addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V
    .locals 10
    .parameter "tag"
    .parameter "context"
    .parameter "title"
    .parameter "rest"
    .parameter "on"
    .parameter "overlay"
    .parameter "intent"
    .parameter "isRemovable"

    .prologue
    .line 662
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    if-nez v6, :cond_0

    .line 664
    invoke-static {p2, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    .line 665
    .local v5, titleIcon:Landroid/content/Intent$ShortcutIconResource;
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v6

    invoke-static {p2, p4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v7

    invoke-static {p2, p5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v8

    move/from16 v0, p6

    invoke-static {p2, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v9

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0, v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v4

    .line 671
    .local v4, tab:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    move/from16 v0, p8

    invoke-direct {p0, v4, v0}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Lcom/htc/fragment/widget/CarouselHost$TabSpec;Z)V

    .line 698
    :goto_0
    return-void

    .line 675
    .end local v4           #tab:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    .end local v5           #titleIcon:Landroid/content/Intent$ShortcutIconResource;
    :cond_0
    new-instance v1, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v1}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 676
    .local v1, onIcon:Landroid/content/Intent$ShortcutIconResource;
    new-instance v3, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v3}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 677
    .local v3, restIcon:Landroid/content/Intent$ShortcutIconResource;
    new-instance v5, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v5}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 678
    .restart local v5       #titleIcon:Landroid/content/Intent$ShortcutIconResource;
    new-instance v2, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v2}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 680
    .local v2, overlayIcon:Landroid/content/Intent$ShortcutIconResource;
    const-string v6, "fake package"

    iput-object v6, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 681
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    invoke-virtual {v6, p5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 683
    const-string v6, "fake package"

    iput-object v6, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 684
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    invoke-virtual {v6, p4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 686
    const-string v6, "fake package"

    iput-object v6, v5, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 687
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 689
    const-string v6, "fake package"

    iput-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 690
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 692
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v5, v3, v1, v2}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0, v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v4

    .line 696
    .restart local v4       #tab:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    move/from16 v0, p8

    invoke-direct {p0, v4, v0}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Lcom/htc/fragment/widget/CarouselHost$TabSpec;Z)V

    goto :goto_0
.end method

.method private createDragView(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    .line 1941
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v9}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 1942
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x33

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1945
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1947
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 1949
    .local v2, location:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1951
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    aget v10, v2, v10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1952
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x1

    aget v10, v2, v10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1961
    .end local v2           #location:[I
    :goto_0
    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    if-ltz v9, :cond_0

    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    if-gez v9, :cond_1

    .line 1963
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1965
    .local v5, resource:Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1967
    .local v1, backgroundPadding:Landroid/graphics/Rect;
    const v9, 0x208019e

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1968
    .local v7, tileDrawable:Landroid/graphics/drawable/Drawable;
    const v9, 0x208019f

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1970
    .local v0, backDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1971
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget v10, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    .line 1972
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    .line 1976
    .end local v0           #backDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #backgroundPadding:Landroid/graphics/Rect;
    .end local v5           #resource:Landroid/content/res/Resources;
    .end local v7           #tileDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    if-gtz v9, :cond_3

    const/4 v9, -0x2

    :goto_1
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1977
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    if-gtz v9, :cond_4

    const/4 v9, -0x2

    :goto_2
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1980
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x398

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1987
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1988
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x3

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1993
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x2090022

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/fragment/widget/CarouselFrameLayout;

    .line 1994
    .local v8, windowView:Lcom/htc/fragment/widget/CarouselFrameLayout;
    const v9, 0x2020062

    invoke-virtual {v8, v9}, Lcom/htc/fragment/widget/CarouselFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1996
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mOriginator:Landroid/view/View;

    const v10, 0x2020061

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/fragment/widget/CarouselTextView;

    .line 1997
    .local v3, oldView:Lcom/htc/fragment/widget/CarouselTextView;
    const v9, 0x2020061

    invoke-virtual {v8, v9}, Lcom/htc/fragment/widget/CarouselFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/fragment/widget/CarouselTextView;

    .line 1999
    .local v6, textView:Lcom/htc/fragment/widget/CarouselTextView;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/htc/fragment/widget/CarouselTextView;->enableForceSingleLine(Z)V

    .line 2000
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/htc/fragment/widget/CarouselTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2001
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/htc/fragment/widget/CarouselTextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 2002
    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/htc/fragment/widget/CarouselTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2003
    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/htc/fragment/widget/CarouselTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2005
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/htc/fragment/widget/TaskInfo;

    iget v9, v9, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v4, 0x1

    .line 2008
    .local v4, removeable:Z
    :goto_3
    if-nez v4, :cond_6

    .line 2009
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    const-string v10, "common_subnav_tab_rearrange_unremoveable"

    const v11, 0x208019f

    invoke-static {v9, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/fragment/widget/CarouselFrameLayout;->setBackgroundResource(I)V

    .line 2015
    :goto_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    iput-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowManager:Landroid/view/WindowManager;

    .line 2016
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowManager:Landroid/view/WindowManager;

    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v9, v8, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2018
    iput-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    .line 2019
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2020
    return-void

    .line 1956
    .end local v3           #oldView:Lcom/htc/fragment/widget/CarouselTextView;
    .end local v4           #removeable:Z
    .end local v6           #textView:Lcom/htc/fragment/widget/CarouselTextView;
    .end local v8           #windowView:Lcom/htc/fragment/widget/CarouselFrameLayout;
    :cond_2
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1957
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    .line 1976
    :cond_3
    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    goto/16 :goto_1

    .line 1977
    :cond_4
    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    goto/16 :goto_2

    .line 2005
    .restart local v3       #oldView:Lcom/htc/fragment/widget/CarouselTextView;
    .restart local v6       #textView:Lcom/htc/fragment/widget/CarouselTextView;
    .restart local v8       #windowView:Lcom/htc/fragment/widget/CarouselFrameLayout;
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 2012
    .restart local v4       #removeable:Z
    :cond_6
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    const-string v10, "common_subnav_tab_rearrange_removeable"

    const v11, 0x208019d

    invoke-static {v9, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/fragment/widget/CarouselFrameLayout;->setBackgroundResource(I)V

    goto :goto_4
.end method

.method private drop(FF)Z
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2320
    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mSourceX:F

    .line 2321
    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mSourceY:F

    .line 2322
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->invalidate()V

    .line 2324
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropCoordinates:[I

    .line 2325
    .local v7, coordinates:[I
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1, v7}, Lcom/htc/fragment/widget/CarouselHost;->findDropTarget(II[I)Lcom/htc/fragment/widget/DropTarget;

    move-result-object v8

    .line 2328
    .local v8, dropTarget:Lcom/htc/fragment/widget/DropTarget;
    instance-of v0, v8, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_1

    .line 2329
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    instance-of v0, v0, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_0

    .line 2330
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setDragBinGridViewToFalse()V

    .line 2331
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    instance-of v0, v0, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_1

    .line 2332
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->realign()V

    .line 2338
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-eq v0, v8, :cond_2

    .line 2339
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/htc/fragment/widget/DropTarget;->onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    .line 2342
    :cond_2
    iput-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropTarget:Lcom/htc/fragment/widget/DropTarget;

    .line 2343
    if-eqz v8, :cond_9

    .line 2344
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    move-object v0, v8

    invoke-interface/range {v0 .. v6}, Lcom/htc/fragment/widget/DropTarget;->onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    .line 2345
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    move-object v0, v8

    invoke-interface/range {v0 .. v6}, Lcom/htc/fragment/widget/DropTarget;->acceptDrop(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2346
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    move-object v0, v8

    invoke-interface/range {v0 .. v6}, Lcom/htc/fragment/widget/DropTarget;->onDrop(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    .line 2347
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    move-object v0, v8

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0, v9}, Lcom/htc/fragment/widget/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 2349
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_3

    .line 2350
    instance-of v0, v8, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    instance-of v0, v0, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_4

    .line 2351
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v11, v9}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(IZ)V

    :cond_3
    :goto_0
    move v0, v9

    .line 2387
    .end local v8           #dropTarget:Lcom/htc/fragment/widget/DropTarget;
    :goto_1
    return v0

    .line 2352
    .restart local v8       #dropTarget:Lcom/htc/fragment/widget/DropTarget;
    :cond_4
    instance-of v0, v8, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_5

    .line 2353
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v11}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(I)V

    goto :goto_0

    .line 2355
    :cond_5
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->setLateShrinkedFlag()V

    goto :goto_0

    .line 2361
    :cond_6
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_7

    .line 2362
    instance-of v0, v8, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_8

    .line 2363
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v11, v9}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(IZ)V

    .line 2368
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    check-cast v8, Landroid/view/View;

    .end local v8           #dropTarget:Lcom/htc/fragment/widget/DropTarget;
    invoke-interface {v0, v8, v10}, Lcom/htc/fragment/widget/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v0, v9

    .line 2370
    goto :goto_1

    .line 2365
    .restart local v8       #dropTarget:Lcom/htc/fragment/widget/DropTarget;
    :cond_8
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v11}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(I)V

    goto :goto_2

    .line 2375
    :cond_9
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_a

    .line 2376
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v11}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(I)V

    .line 2379
    :cond_a
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    check-cast v8, Landroid/view/View;

    .end local v8           #dropTarget:Lcom/htc/fragment/widget/DropTarget;
    invoke-interface {v0, v8, v10}, Lcom/htc/fragment/widget/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 2382
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setDragBinGridViewToFalse()V

    .line 2383
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    instance-of v0, v0, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_b

    .line 2384
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->realign()V

    :cond_b
    move v0, v10

    .line 2387
    goto :goto_1
.end method

.method private endDrag()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2169
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    if-eqz v1, :cond_2

    .line 2170
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    .line 2172
    const/4 v0, 0x0

    .line 2173
    .local v0, needShowTip:Z
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-ne v1, v2, :cond_3

    .line 2175
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselWidget;->getCount()I

    move-result v1

    if-gt v1, v3, :cond_0

    .line 2176
    const/4 v0, 0x1

    .line 2182
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 2183
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 2184
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->createTipBubble()V

    .line 2185
    :cond_1
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    const v2, 0x20400c0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2186
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2187
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->showTipBubble()V

    .line 2190
    .end local v0           #needShowTip:Z
    :cond_2
    return-void

    .line 2177
    .restart local v0       #needShowTip:Z
    :cond_3
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    instance-of v1, v1, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropTarget:Lcom/htc/fragment/widget/DropTarget;

    instance-of v1, v1, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v1, :cond_0

    .line 2179
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselWidget;->getCount()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/htc/fragment/widget/TaskInfo;

    iget v1, v1, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    if-ne v1, v3, :cond_0

    .line 2180
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/htc/fragment/widget/DropTarget;
    .locals 17
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 2396
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragRect:Landroid/graphics/Rect;

    .line 2397
    .local v8, r:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 2398
    .local v5, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v12

    add-int v9, p2, v12

    .line 2399
    .local v9, scrolledX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v12

    add-int v10, p3, v12

    .line 2401
    .local v10, scrolledY:I
    add-int/lit8 v6, v5, -0x1

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_8

    .line 2402
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2403
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_7

    .line 2404
    invoke-virtual {v4, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2407
    instance-of v12, v4, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v12, :cond_4

    .line 2409
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v12, :cond_0

    .line 2410
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x205006b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    .line 2412
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v12, :cond_3

    .line 2413
    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 2426
    :cond_1
    :goto_1
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2427
    const/4 v11, 0x0

    .line 2428
    .local v11, target:Lcom/htc/fragment/widget/DropTarget;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v7

    .line 2429
    .local v7, id:I
    const v12, 0x1020011

    if-eq v7, v12, :cond_7

    .line 2430
    instance-of v12, v4, Landroid/view/ViewGroup;

    if-eqz v12, :cond_2

    .line 2431
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int p2, v9, v12

    .line 2432
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int p3, v10, v12

    move-object v12, v4

    .line 2433
    check-cast v12, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/htc/fragment/widget/CarouselHost;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/htc/fragment/widget/DropTarget;

    move-result-object v11

    .line 2435
    :cond_2
    if-nez v11, :cond_6

    .line 2436
    instance-of v12, v4, Lcom/htc/fragment/widget/DropTarget;

    if-eqz v12, :cond_7

    .line 2437
    const/4 v12, 0x0

    aput p2, p4, v12

    .line 2438
    const/4 v12, 0x1

    aput p3, p4, v12

    .line 2440
    check-cast v4, Lcom/htc/fragment/widget/DropTarget;

    .line 2450
    .end local v4           #child:Landroid/view/View;
    .end local v7           #id:I
    .end local v11           #target:Lcom/htc/fragment/widget/DropTarget;
    :goto_2
    return-object v4

    .line 2415
    .restart local v4       #child:Landroid/view/View;
    :cond_3
    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    add-int/2addr v14, v15

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 2417
    :cond_4
    instance-of v12, v4, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v12, :cond_1

    .line 2419
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v12, :cond_5

    .line 2420
    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 2422
    :cond_5
    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .restart local v7       #id:I
    .restart local v11       #target:Lcom/htc/fragment/widget/DropTarget;
    :cond_6
    move-object v4, v11

    .line 2443
    goto :goto_2

    .line 2401
    .end local v7           #id:I
    .end local v11           #target:Lcom/htc/fragment/widget/DropTarget;
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .line 2450
    .end local v4           #child:Landroid/view/View;
    :cond_8
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initCarouselHost()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->setFocusableInTouchMode(Z)V

    .line 174
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->setDescendantFocusability(I)V

    .line 176
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    .line 177
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    .line 178
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 1131
    :cond_0
    return-void
.end method

.method private moveIndicator(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 2031
    :goto_0
    return-void

    .line 2025
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetX:F

    add-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2026
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetY:F

    add-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2028
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2029
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2030
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private printViewTree(Landroid/view/ViewGroup;I)V
    .locals 5
    .parameter "container"
    .parameter "level"

    .prologue
    .line 427
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 429
    .local v1, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CarouselTraceView] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 430
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 431
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 432
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 433
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v0, v3}, Lcom/htc/fragment/widget/CarouselHost;->printViewTree(Landroid/view/ViewGroup;I)V

    .line 430
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 435
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CarouselTraceView] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 438
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setDragBinGridViewToFalse()V
    .locals 4

    .prologue
    .line 2827
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v2, :cond_0

    .line 2829
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    .line 2830
    .local v0, orgWidthHeight:I
    :goto_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/CarouselWidget;->setDragBinGridView(Z)V

    .line 2832
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v1

    .line 2836
    .local v1, targetWidthHeight:I
    :goto_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2, v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->startWidthHeightAnimation(II)V

    .line 2838
    .end local v0           #orgWidthHeight:I
    .end local v1           #targetWidthHeight:I
    :cond_0
    return-void

    .line 2829
    :cond_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    goto :goto_0

    .line 2832
    .restart local v0       #orgWidthHeight:I
    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeightWithNoAnimation()I

    move-result v1

    goto :goto_1
.end method

.method private setDragBinGridViewToTrue()V
    .locals 4

    .prologue
    .line 2815
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v2, :cond_0

    .line 2817
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    .line 2818
    .local v0, orgWidthHeight:I
    :goto_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/CarouselWidget;->setDragBinGridView(Z)V

    .line 2820
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v1

    .line 2821
    .local v1, targetWidthHeight:I
    :goto_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2, v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->startWidthHeightAnimation(II)V

    .line 2823
    .end local v0           #orgWidthHeight:I
    .end local v1           #targetWidthHeight:I
    :cond_0
    return-void

    .line 2817
    :cond_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    goto :goto_0

    .line 2820
    .restart local v0       #orgWidthHeight:I
    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v1

    goto :goto_1
.end method

.method private setOrientation()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 203
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->display:Landroid/view/Display;

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->display:Landroid/view/Display;

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 208
    .local v0, orientation:I
    sget-boolean v1, Lcom/htc/fragment/widget/CarouselFragment;->disableLandscape:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    .line 211
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x2080038

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    .line 212
    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    .line 213
    return-void

    .line 208
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPanelView(Landroid/view/View;)V
    .locals 2
    .parameter "panelView"

    .prologue
    .line 2845
    if-nez p1, :cond_0

    .line 2864
    :goto_0
    return-void

    .line 2850
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    if-nez v0, :cond_1

    .line 2853
    const-string v0, "Carousel"

    const-string v1, "create viewSwitcher"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    new-instance v0, Lcom/htc/fragment/widget/CarouselViewSwitcher;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/fragment/widget/CarouselViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    .line 2857
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->addView(Landroid/view/View;)V

    .line 2858
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->removeView(Landroid/view/View;)V

    .line 2859
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->addPositiveView(Landroid/view/View;)V

    .line 2863
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->addNegativeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public addTab(Landroid/content/Context;Lcom/htc/fragment/widget/CarouselTabSpec;)V
    .locals 15
    .parameter "context"
    .parameter "spec"

    .prologue
    .line 547
    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->isInCarouselWidget:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 548
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->tag:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->str_title_id:I

    move-object/from16 v0, p2

    iget v5, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_rest_id:I

    move-object/from16 v0, p2

    iget v6, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_on_id:I

    move-object/from16 v0, p2

    iget v7, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_overlay_id:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->intent:Landroid/content/Intent;

    move-object/from16 v0, p2

    iget-boolean v9, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->isRemovable:Z

    move-object v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/htc/fragment/widget/CarouselHost;->addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V

    .line 574
    :goto_0
    return-void

    .line 550
    :cond_0
    move-object/from16 v0, p2

    iget v1, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->str_title_id:I

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v14

    .line 551
    .local v14, titleIcon:Landroid/content/Intent$ShortcutIconResource;
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->tag:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v1

    move-object/from16 v0, p2

    iget v2, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_rest_id:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_on_id:I

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    move-object/from16 v0, p2

    iget v4, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_overlay_id:I

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v1, v14, v2, v3, v4}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v14}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v10

    .line 557
    .local v10, tabSpec:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    new-instance v11, Lcom/htc/fragment/widget/TaskInfo;

    invoke-direct {v11}, Lcom/htc/fragment/widget/TaskInfo;-><init>()V

    .line 558
    .local v11, task:Lcom/htc/fragment/widget/TaskInfo;
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;
    invoke-static {v10}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;

    move-result-object v12

    check-cast v12, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;

    .line 560
    .local v12, temp:Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->gId:Ljava/lang/String;

    .line 561
    invoke-virtual {v10}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    .line 562
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$200(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->taskName:Ljava/lang/String;

    .line 563
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->resPackage:Ljava/lang/String;

    .line 564
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->icon:Ljava/lang/String;

    .line 565
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$400(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    .line 566
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$500(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->overlay:Ljava/lang/String;

    .line 567
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v10}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v13

    check-cast v13, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;

    .line 568
    .local v13, temp2:Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;
    #getter for: Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;
    invoke-static {v13}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->access$700(Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    .line 569
    const/4 v1, 0x0

    iput v1, v11, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    .line 570
    const/4 v1, 0x1

    iput v1, v11, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    .line 571
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v11, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    .line 572
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v1, v11}, Lcom/htc/fragment/widget/CarouselFragment;->addAndSyncTask(Lcom/htc/fragment/widget/TaskInfo;)V

    goto/16 :goto_0
.end method

.method public addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V
    .locals 9
    .parameter "tag"
    .parameter "context"
    .parameter "title"
    .parameter "rest"
    .parameter "on"
    .parameter "overlay"
    .parameter "intent"

    .prologue
    .line 720
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/fragment/widget/CarouselHost;->addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V

    .line 721
    return-void
.end method

.method public addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V
    .locals 17
    .parameter "tag"
    .parameter "context"
    .parameter "title"
    .parameter "rest"
    .parameter "on"
    .parameter "overlay"
    .parameter "intent"
    .parameter "state"

    .prologue
    .line 596
    const/4 v11, 0x1

    .local v11, isInCarouselWidget:Z
    const/4 v10, 0x1

    .line 597
    .local v10, isRemovable:Z
    packed-switch p8, :pswitch_data_0

    .line 611
    const/4 v11, 0x1

    .line 612
    const/4 v10, 0x1

    .line 616
    :goto_0
    const/4 v2, 0x1

    if-ne v11, v2, :cond_0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 617
    invoke-direct/range {v2 .. v10}, Lcom/htc/fragment/widget/CarouselHost;->addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V

    .line 643
    :goto_1
    return-void

    .line 599
    :pswitch_0
    const/4 v11, 0x1

    .line 600
    const/4 v10, 0x1

    .line 601
    goto :goto_0

    .line 603
    :pswitch_1
    const/4 v11, 0x0

    .line 604
    const/4 v10, 0x1

    .line 605
    goto :goto_0

    .line 607
    :pswitch_2
    const/4 v11, 0x1

    .line 608
    const/4 v10, 0x0

    .line 609
    goto :goto_0

    .line 619
    :cond_0
    invoke-static/range {p2 .. p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v16

    .line 620
    .local v16, titleIcon:Landroid/content/Intent$ShortcutIconResource;
    invoke-virtual/range {p0 .. p1}, Lcom/htc/fragment/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v2

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v2

    move-object/from16 v0, p7

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v12

    .line 626
    .local v12, tabSpec:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    new-instance v13, Lcom/htc/fragment/widget/TaskInfo;

    invoke-direct {v13}, Lcom/htc/fragment/widget/TaskInfo;-><init>()V

    .line 627
    .local v13, task:Lcom/htc/fragment/widget/TaskInfo;
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;

    .line 629
    .local v14, temp:Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->gId:Ljava/lang/String;

    .line 630
    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    .line 631
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$200(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->taskName:Ljava/lang/String;

    .line 632
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->resPackage:Ljava/lang/String;

    .line 633
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->icon:Ljava/lang/String;

    .line 634
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$400(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    .line 635
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$500(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->overlay:Ljava/lang/String;

    .line 636
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v15

    check-cast v15, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;

    .line 637
    .local v15, temp2:Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;
    #getter for: Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;
    invoke-static {v15}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->access$700(Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    .line 638
    const/4 v2, 0x0

    iput v2, v13, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    .line 639
    const/4 v2, 0x1

    iput v2, v13, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v13, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v2, v13}, Lcom/htc/fragment/widget/CarouselFragment;->addAndSyncTask(Lcom/htc/fragment/widget/TaskInfo;)V

    goto/16 :goto_1

    .line 597
    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method cancelDrag()V
    .locals 10

    .prologue
    const/high16 v9, -0x3b86

    const/4 v8, 0x0

    .line 2151
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    if-eqz v1, :cond_1

    .line 2152
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropCoordinates:[I

    .line 2153
    .local v7, coordinates:[I
    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2, v7}, Lcom/htc/fragment/widget/CarouselHost;->findDropTarget(II[I)Lcom/htc/fragment/widget/DropTarget;

    move-result-object v0

    .line 2155
    .local v0, dropTarget:Lcom/htc/fragment/widget/DropTarget;
    if-eqz v0, :cond_0

    .line 2156
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    aget v2, v7, v8

    const/4 v3, 0x1

    aget v3, v7, v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/htc/fragment/widget/DropTarget;->onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    .line 2159
    :cond_0
    invoke-direct {p0, v9, v9}, Lcom/htc/fragment/widget/CarouselHost;->drop(FF)Z

    .line 2160
    iput-boolean v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    .line 2161
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    invoke-virtual {v1, v8}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->stop(Z)V

    .line 2165
    .end local v0           #dropTarget:Lcom/htc/fragment/widget/DropTarget;
    .end local v7           #coordinates:[I
    :goto_0
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->endDrag()V

    .line 2166
    return-void

    .line 2163
    :cond_1
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    invoke-virtual {v1, v8}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->stop(Z)V

    goto :goto_0
.end method

.method closeTabByTag(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 916
    if-eqz p1, :cond_0

    .line 918
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabClosed()V

    .line 919
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    .line 921
    :cond_0
    return-void
.end method

.method createTipBubble()V
    .locals 4

    .prologue
    .line 1868
    const-string v0, "Carousel"

    const-string v1, "createTipBubble()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1873
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    .line 1874
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    const v1, 0x20401d3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1875
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    const v2, 0x2030021

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1876
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselSkinUtil;->setDarkShadow(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1877
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1879
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 340
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 342
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    if-eqz v2, :cond_0

    .line 343
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/htc/fragment/widget/CarouselHost;->moveIndicator(FF)V

    .line 346
    :cond_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    .line 348
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    if-eqz v2, :cond_2

    .line 350
    iput-boolean v5, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    .line 352
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getMeasuredWidth()I

    move-result v1

    .line 353
    .local v1, width:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getMeasuredHeight()I

    move-result v0

    .line 355
    .local v0, height:I
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v2, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    .line 358
    :cond_1
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_4

    .line 359
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 364
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    :cond_3
    return-void

    .line 361
    .restart local v0       #height:I
    .restart local v1       #width:I
    :cond_4
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    sub-int v3, v1, v3

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    sub-int v4, v1, v4

    invoke-virtual {v2, v3, v5, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 2704
    const/4 v2, 0x0

    .line 2706
    .local v2, handle:Z
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getCarouselWidget()Lcom/htc/fragment/widget/CarouselWidget;

    move-result-object v4

    .line 2707
    .local v4, widget:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2709
    .local v0, content:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .line 2716
    .local v1, contentview:Landroid/view/View;
    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v5, v6

    .line 2810
    :goto_0
    return v5

    :cond_1
    move-object v5, v4

    .line 2720
    check-cast v5, Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselWidget;->isDragging()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    .line 2721
    goto :goto_0

    :cond_2
    move-object v5, v4

    .line 2724
    check-cast v5, Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselWidget;->getStateWidget()I

    move-result v5

    const/16 v7, 0x3ea

    if-ne v5, v7, :cond_5

    .line 2726
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 2728
    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselFragment;->exitEditMode()V

    move v5, v6

    .line 2729
    goto :goto_0

    .line 2732
    :cond_3
    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2733
    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    :cond_4
    move v5, v6

    .line 2735
    goto :goto_0

    .line 2739
    :cond_5
    if-nez v0, :cond_6

    move v5, v6

    .line 2740
    goto :goto_0

    .line 2743
    :cond_6
    const/4 v3, 0x0

    .local v3, loop:I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 2745
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2747
    if-nez v1, :cond_a

    .line 2757
    :cond_7
    if-nez v1, :cond_8

    .line 2758
    move-object v1, v0

    .line 2760
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2762
    if-nez v2, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_9

    .line 2764
    iget-boolean v5, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v5, :cond_d

    .line 2766
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_9
    :goto_2
    move v5, v2

    .line 2810
    goto :goto_0

    .line 2750
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    .line 2751
    instance-of v5, v1, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v5, :cond_7

    .line 2743
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2769
    :pswitch_0
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_c

    .line 2770
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2771
    :cond_c
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_2

    .line 2775
    :pswitch_1
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x82

    invoke-virtual {v5, v7}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_9

    .line 2780
    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    .line 2781
    invoke-virtual {v4, p1}, Lcom/htc/fragment/widget/CarouselWidget;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move v5, v6

    .line 2782
    goto/16 :goto_0

    .line 2788
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto :goto_2

    .line 2791
    :pswitch_2
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_e

    .line 2792
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2793
    :cond_e
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_2

    .line 2797
    :pswitch_3
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x42

    invoke-virtual {v5, v7}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_9

    .line 2802
    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    .line 2803
    invoke-virtual {v4, p1}, Lcom/htc/fragment/widget/CarouselWidget;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move v5, v6

    .line 2804
    goto/16 :goto_0

    .line 2766
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2788
    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method doAnimationForDragIcon(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mSourceX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mSourceY:F

    float-to-int v2, v2

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetX:F

    sub-float v3, p1, v3

    float-to-int v3, v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetY:F

    sub-float v4, p2, v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->startUsingPositions(IIII)V

    .line 2456
    return-void
.end method

.method doCurrentTabPause()V
    .locals 1

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabOnPaused()V

    .line 1835
    return-void
.end method

.method doCurrntTabResume()V
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabOnResume()V

    .line 1840
    return-void
.end method

.method enableCustomView(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 381
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setOrientation()V

    .line 384
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView:Z

    if-ne p1, v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 387
    :cond_0
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView:Z

    .line 389
    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    if-gez v0, :cond_1

    .line 390
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x20e0005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    .line 392
    :cond_1
    if-eqz p1, :cond_7

    .line 394
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    .line 395
    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v0, :cond_2

    .line 396
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x205006b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    .line 398
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    .line 399
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 402
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    const v2, 0x202006a

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 403
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->addView(Landroid/view/View;I)V

    .line 408
    :cond_3
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 415
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    if-eqz v0, :cond_5

    .line 416
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    if-eqz p1, :cond_8

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    :goto_3
    invoke-virtual {v2, v1, v0, v1, v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setPadding(IIII)V

    .line 422
    :cond_5
    const-string v0, "Carousel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCustomView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 399
    :cond_6
    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_1

    .line 410
    :cond_7
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 411
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_8
    move v0, v1

    .line 416
    goto :goto_3
.end method

.method enableFullScreen(Z)V
    .locals 1
    .parameter "enableFull"

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    if-ne p1, v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 224
    :cond_0
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    .line 225
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->requestLayout()V

    .line 226
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->invalidate()V

    goto :goto_0
.end method

.method findDropTarget(II[I)Lcom/htc/fragment/widget/DropTarget;
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 2392
    invoke-direct {p0, p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselHost;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/htc/fragment/widget/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method getBackUpCurrentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    return-object v0
.end method

.method public getCarouselWidget()Lcom/htc/fragment/widget/CarouselWidget;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    return-object v0
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCurrentTabFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 847
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 832
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    .line 834
    .local v0, index:I
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 836
    .end local v0           #index:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method getDropAnimationRunnable()Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;
    .locals 1

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    return-object v0
.end method

.method getHostCount()I
    .locals 2

    .prologue
    .line 2602
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    .line 2603
    .local v0, adapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCount()I

    move-result v1

    return v1
.end method

.method getIndexByTag(Ljava/lang/String;)I
    .locals 4
    .parameter "tag"

    .prologue
    const/4 v2, -0x1

    .line 1845
    if-nez p1, :cond_1

    move v0, v2

    .line 1853
    :cond_0
    :goto_0
    return v0

    .line 1846
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v1

    .line 1847
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1848
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(I)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1847
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1853
    goto :goto_0
.end method

.method getPositionForTag(Ljava/lang/String;)I
    .locals 7
    .parameter "tag"

    .prologue
    const/4 v5, -0x1

    .line 2608
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move v2, v5

    .line 2631
    :cond_1
    :goto_0
    return v2

    .line 2611
    :cond_2
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    .line 2612
    .local v0, adapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 2613
    .local v1, c:Landroid/database/Cursor;
    const/4 v2, -0x1

    .line 2614
    .local v2, index:I
    if-eqz v1, :cond_4

    .line 2615
    const-string v6, "task_tag"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 2617
    .local v4, taskTagIndex:I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2619
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_5

    .end local v4           #taskTagIndex:I
    :cond_4
    :goto_1
    move v2, v5

    .line 2631
    goto :goto_0

    .line 2621
    .restart local v4       #taskTagIndex:I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 2623
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2624
    .local v3, taskTag:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2625
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2627
    :cond_6
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2629
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 3

    .prologue
    .line 896
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselFragment;->getTabContentViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method getTabSpec(I)Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    .locals 6
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 2571
    if-gez p1, :cond_1

    .line 2589
    :cond_0
    :goto_0
    return-object v4

    .line 2574
    :cond_1
    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    .line 2575
    .local v0, adapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 2576
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 2577
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2578
    const-string v4, "task_tag"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 2580
    .local v3, taskTagIndex:I
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2581
    .local v2, taskTag:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2582
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2584
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2586
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselFragment;->getModel()Lcom/htc/fragment/widget/CarouselModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselModel;->getTabSpecTable()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    goto :goto_0
.end method

.method getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    .locals 1
    .parameter "taskTag"

    .prologue
    .line 2595
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2596
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2597
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getModel()Lcom/htc/fragment/widget/CarouselModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselModel;->getTabSpecTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    return-object v0
.end method

.method newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 186
    new-instance v0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;-><init>(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;Lcom/htc/fragment/widget/CarouselHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 486
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 487
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 488
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 491
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->attached:Z

    .line 492
    invoke-static {}, Lcom/htc/fragment/widget/CarouselUtil;->isLiteDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 493
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 494
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 495
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 499
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    .line 502
    :cond_2
    return-void

    .line 496
    :cond_3
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 497
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 236
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 238
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setOrientation()V

    .line 239
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->cancelDrag()V

    .line 241
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v2, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x205006b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    .line 245
    :cond_0
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 246
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v4, v3, v3, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 251
    const v2, 0x2020063

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 253
    .local v1, slidingDrawer:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_2

    .line 254
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    :goto_2
    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 256
    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 258
    .local v0, lparams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 259
    const/16 v4, 0xe

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_8

    move v2, v5

    :goto_4
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 260
    const/16 v4, 0xc

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_9

    move v2, v5

    :goto_5
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 262
    const/16 v4, 0xf

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_a

    move v2, v3

    :goto_6
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 263
    const/16 v2, 0xb

    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v4, :cond_b

    :goto_7
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 265
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2080158

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #slidingDrawer:Landroid/widget/RelativeLayout;
    :cond_3
    return-void

    .line 246
    :cond_4
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_0

    .line 254
    .restart local v1       #slidingDrawer:Landroid/widget/RelativeLayout;
    :cond_5
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    .line 258
    .restart local v0       #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    mul-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_8
    move v2, v3

    .line 259
    goto :goto_4

    :cond_9
    move v2, v3

    .line 260
    goto :goto_5

    :cond_a
    move v2, v5

    .line 262
    goto :goto_6

    :cond_b
    move v3, v5

    .line 263
    goto :goto_7
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 510
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->attached:Z

    .line 511
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 512
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 513
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->setDragDropAnimationInitState()V

    .line 521
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->decorViewHash:Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->decorViewHash:Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 522
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->decorViewHash:Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;->clear()V

    .line 525
    :cond_1
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    .line 526
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    .line 527
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 2198
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    if-eqz v3, :cond_0

    .line 2199
    const/4 v3, 0x1

    .line 2228
    :goto_0
    return v3

    .line 2201
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2203
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2204
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2205
    .local v2, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetX:F

    .line 2206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetY:F

    .line 2208
    packed-switch v0, :pswitch_data_0

    .line 2228
    :goto_1
    :pswitch_0
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    goto :goto_0

    .line 2214
    :pswitch_1
    iput v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    .line 2215
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    .line 2216
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    goto :goto_1

    .line 2221
    :pswitch_2
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/htc/fragment/widget/CarouselHost;->drop(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2222
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    .line 2224
    :cond_1
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->endDrag()V

    goto :goto_1

    .line 2208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    .line 277
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 282
    invoke-super {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    .line 283
    .local v4, screenwidth:I
    invoke-super {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    .line 286
    .local v3, screenheight:I
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselWidget;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    const/4 v5, 0x1

    .line 288
    .local v5, visibilityGone:Z
    :goto_0
    iget v7, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v7, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x205006b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    .line 291
    :cond_0
    iget-boolean v7, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v7, :cond_4

    .line 293
    iget v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingLeft:I

    sub-int v7, v4, v7

    iget v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingRight:I

    sub-int v1, v7, v8

    .line 294
    .local v1, localWidth:I
    iget v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingTop:I

    sub-int v7, v3, v7

    iget v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingBottom:I

    sub-int/2addr v7, v8

    iget-boolean v8, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    if-eqz v8, :cond_3

    :cond_1
    :goto_1
    sub-int v0, v7, v6

    .line 302
    .local v0, localHeight:I
    :goto_2
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/CarouselContentGallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-nez v6, :cond_7

    .line 303
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/htc/fragment/widget/CarouselContentGallery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    :goto_3
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {p0, v6, v1, v0}, Lcom/htc/fragment/widget/CarouselHost;->measureChild(Landroid/view/View;II)V

    .line 320
    return-void

    .end local v0           #localHeight:I
    .end local v1           #localWidth:I
    .end local v5           #visibilityGone:Z
    :cond_2
    move v5, v6

    .line 286
    goto :goto_0

    .line 294
    .restart local v1       #localWidth:I
    .restart local v5       #visibilityGone:Z
    :cond_3
    if-nez v5, :cond_1

    iget v6, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_1

    .line 298
    .end local v1           #localWidth:I
    :cond_4
    iget v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingLeft:I

    sub-int v7, v4, v7

    iget v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget-boolean v8, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    if-eqz v8, :cond_6

    :cond_5
    :goto_4
    sub-int v1, v7, v6

    .line 299
    .restart local v1       #localWidth:I
    iget v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingTop:I

    sub-int v6, v3, v6

    iget v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingBottom:I

    sub-int v0, v6, v7

    .restart local v0       #localHeight:I
    goto :goto_2

    .line 298
    .end local v0           #localHeight:I
    .end local v1           #localWidth:I
    :cond_6
    if-nez v5, :cond_5

    iget v6, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_4

    .line 308
    .restart local v0       #localHeight:I
    .restart local v1       #localWidth:I
    :cond_7
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/CarouselContentGallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 309
    .local v2, lparams:Landroid/view/ViewGroup$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 310
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 312
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v6, v2}, Lcom/htc/fragment/widget/CarouselContentGallery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 329
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    .line 331
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "ev"

    .prologue
    .line 2237
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    if-eqz v4, :cond_0

    .line 2238
    const/4 v4, 0x1

    .line 2316
    :goto_0
    return v4

    .line 2241
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    if-nez v4, :cond_1

    .line 2242
    const/4 v4, 0x0

    goto :goto_0

    .line 2245
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 2246
    .local v11, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    .line 2247
    .local v22, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    .line 2249
    .local v23, y:F
    packed-switch v11, :pswitch_data_0

    .line 2316
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 2252
    :pswitch_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    .line 2253
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    goto :goto_1

    .line 2256
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    move/from16 v19, v0

    .line 2257
    .local v19, touchX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    move/from16 v20, v0

    .line 2259
    .local v20, touchY:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetX:I

    .line 2260
    .local v15, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetY:I

    move/from16 v16, v0

    .line 2262
    .local v16, offsetY:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    sub-float v4, v4, v19

    int-to-float v5, v15

    sub-float/2addr v4, v5

    float-to-int v14, v4

    .line 2263
    .local v14, left:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    sub-float v4, v4, v20

    move/from16 v0, v16

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v18, v0

    .line 2265
    .local v18, top:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v21

    .line 2266
    .local v21, width:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    .line 2268
    .local v13, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselHost;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 2269
    .local v17, rect:Landroid/graphics/Rect;
    add-int/lit8 v4, v14, -0x1

    add-int/lit8 v5, v18, -0x1

    add-int v6, v14, v21

    add-int/lit8 v6, v6, 0x1

    add-int v7, v18, v13

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2271
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    .line 2272
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    .line 2274
    sub-float v4, v22, v19

    int-to-float v5, v15

    sub-float/2addr v4, v5

    float-to-int v14, v4

    .line 2275
    sub-float v4, v23, v20

    move/from16 v0, v16

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v18, v0

    .line 2278
    add-int/lit8 v4, v14, -0x1

    add-int/lit8 v5, v18, -0x1

    add-int v6, v14, v21

    add-int/lit8 v6, v6, 0x1

    add-int v7, v18, v13

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->union(IIII)V

    .line 2280
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/fragment/widget/CarouselHost;->mDropCoordinates:[I

    .line 2281
    .local v12, coordinates:[I
    move/from16 v0, v22

    float-to-int v4, v0

    move/from16 v0, v23

    float-to-int v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v12}, Lcom/htc/fragment/widget/CarouselHost;->findDropTarget(II[I)Lcom/htc/fragment/widget/DropTarget;

    move-result-object v3

    .line 2282
    .local v3, dropTarget:Lcom/htc/fragment/widget/DropTarget;
    if-eqz v3, :cond_5

    .line 2283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-ne v4, v3, :cond_3

    .line 2284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x1

    aget v6, v12, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/htc/fragment/widget/DropTarget;->onDragOver(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    .line 2300
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->invalidate(Landroid/graphics/Rect;)V

    .line 2302
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    goto/16 :goto_1

    .line 2286
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-eqz v4, :cond_4

    .line 2287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v4 .. v10}, Lcom/htc/fragment/widget/DropTarget;->onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    .line 2289
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x1

    aget v6, v12, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/htc/fragment/widget/DropTarget;->onDragEnter(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    .line 2291
    instance-of v4, v3, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v4, :cond_2

    move-object v4, v3

    .line 2292
    check-cast v4, Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->invalidate()V

    goto :goto_2

    .line 2295
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-eqz v4, :cond_2

    .line 2296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v4 .. v10}, Lcom/htc/fragment/widget/DropTarget;->onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    goto :goto_2

    .line 2305
    .end local v3           #dropTarget:Lcom/htc/fragment/widget/DropTarget;
    .end local v12           #coordinates:[I
    .end local v13           #height:I
    .end local v14           #left:I
    .end local v15           #offsetX:I
    .end local v16           #offsetY:I
    .end local v17           #rect:Landroid/graphics/Rect;
    .end local v18           #top:I
    .end local v19           #touchX:F
    .end local v20           #touchY:F
    .end local v21           #width:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    if-eqz v4, :cond_6

    .line 2307
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/widget/CarouselHost;->drop(FF)Z

    .line 2308
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    .line 2310
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselHost;->endDrag()V

    goto/16 :goto_1

    .line 2313
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselHost;->endDrag()V

    goto/16 :goto_1

    .line 2249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .parameter "isInTouchMode"

    .prologue
    .line 537
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 540
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    .line 544
    :cond_1
    return-void
.end method

.method pauseCurrentTab()V
    .locals 3

    .prologue
    .line 2933
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 2934
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2935
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v1, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->pauseFragment(Landroid/app/Fragment;)V

    .line 2937
    :cond_0
    return-void
.end method

.method removeFragmentIfRunning(Lcom/htc/fragment/widget/CarouselHost$TabSpec;Lcom/htc/fragment/widget/TaskInfo;)V
    .locals 3
    .parameter "ts"
    .parameter "ti"

    .prologue
    .line 2640
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2689
    :cond_0
    :goto_0
    return-void

    .line 2647
    :cond_1
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;

    iget-object v2, p2, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->compareIntent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2652
    invoke-virtual {p1, p2}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->sync(Lcom/htc/fragment/widget/TaskInfo;)V

    .line 2653
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabClosed()V

    .line 2654
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$2200(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2655
    move-object v0, p1

    .line 2657
    .local v0, spec:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2665
    :cond_2
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    .line 2667
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-nez v1, :cond_3

    .line 2668
    const-string v1, "CarouselHost::setCurrentTabUtil(): Strange !, Current View is null "

    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2687
    :cond_3
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto :goto_0
.end method

.method removeIndicator()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2035
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 2036
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2037
    .local v1, wm:Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2038
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    .line 2041
    const v2, 0x2020064

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinGridView;

    .line 2043
    .local v0, binGridView:Lcom/htc/fragment/widget/BinGridView;
    if-eqz v0, :cond_0

    .line 2046
    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinGridView;->endDragOneItem()V

    .line 2047
    invoke-virtual {v0, v4}, Lcom/htc/fragment/widget/BinGridView;->setDrawNextItem(Z)V

    .line 2051
    .end local v0           #binGridView:Lcom/htc/fragment/widget/BinGridView;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_0
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    .line 2052
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    .line 2053
    return-void
.end method

.method removeTab(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 777
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 778
    :cond_0
    const-string v0, "Invalid tag. Can not delete"

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->e(Ljava/lang/String;)V

    .line 792
    :cond_1
    :goto_0
    return-void

    .line 782
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    .line 783
    const-string v0, "Table number is one. Can not delete"

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 787
    :cond_3
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->setNextTab()V

    .line 789
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabClosed()V

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public removeTabByTag(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 766
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->removeTab(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->removeTagFromDB(Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method removeTipBubble()V
    .locals 3

    .prologue
    .line 1924
    const-string v1, "Carousel"

    const-string v2, "removeTipBubble()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1929
    const v1, 0x2020063

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1931
    .local v0, slidingDrawer:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 1932
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1934
    .end local v0           #slidingDrawer:Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method

.method resumeCurrentTab()V
    .locals 3

    .prologue
    .line 2940
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 2941
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2942
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v1, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->resumeFragment(Landroid/app/Fragment;)V

    .line 2944
    :cond_0
    return-void
.end method

.method public setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1106
    return-void
.end method

.method public setAnimationMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 2949
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setAnimationMode(I)V

    .line 2950
    return-void
.end method

.method public setAnimationType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 2953
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setAnimationType(I)V

    .line 2954
    return-void
.end method

.method setBackupCurrentTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 882
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    .line 883
    return-void
.end method

.method setCarousel(Lcom/htc/fragment/widget/CarouselFragment;)V
    .locals 2
    .parameter "carousel"

    .prologue
    .line 1818
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    .line 1820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    .line 1823
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->setCarousel(Lcom/htc/fragment/widget/CarouselFragment;)V

    .line 1824
    return-void
.end method

.method public setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)I

    .line 1102
    return-void
.end method

.method public setCountVisibility(Ljava/lang/String;Z)V
    .locals 1
    .parameter "tag"
    .parameter "enable"

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->setCountVisibility(Ljava/lang/String;Z)I

    .line 1098
    return-void
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 867
    if-nez p1, :cond_0

    .line 868
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabUtil(I)V

    .line 879
    :goto_0
    return-void

    .line 870
    :cond_0
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    .line 871
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    .line 872
    .local v0, i:I
    if-ltz v0, :cond_1

    .line 873
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0

    .line 876
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0
.end method

.method setCurrentTabUtil(I)V
    .locals 10
    .parameter "index"

    .prologue
    .line 930
    invoke-static {}, Lcom/htc/fragment/widget/CarouselUtil;->isLiteDevice()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 932
    iget-boolean v7, p0, Lcom/htc/fragment/widget/CarouselHost;->attached:Z

    if-nez v7, :cond_2

    .line 933
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 934
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    goto :goto_0

    .line 942
    :cond_2
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselFragment;->isDetached()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselFragment;->isAdded()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselFragment;->isRemoving()Z

    move-result v7

    if-nez v7, :cond_0

    .line 946
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v7

    if-ge p1, v7, :cond_0

    .line 950
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    .line 951
    .local v0, currentIndex:I
    if-ne p1, v0, :cond_4

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 954
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 955
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v7, p1}, Lcom/htc/fragment/widget/CarouselWidget;->setCurrentTabUtil(I)V

    .line 958
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v7, p1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setCurrentTab(I)V

    .line 962
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->resumeCurrentTab()V

    .line 964
    const-string v7, "ani"

    const-string v8, "@setCurrentTabUtil(return), to real"

    invoke-static {v7, v8}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    check-cast v7, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->switchToContentView()V

    goto :goto_0

    .line 970
    :cond_3
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    .line 975
    :cond_4
    const-string v7, "ani"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@setCurrentTabUtil, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v9}, Lcom/htc/fragment/widget/CarouselContentGallery;->animationStateToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/fragment/widget/CarouselLog;->de(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselContentGallery;->isUsingFakeView()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-eqz v7, :cond_5

    .line 977
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    check-cast v7, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->switchToFakeView()V

    .line 981
    :cond_5
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 982
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v4

    .line 983
    .local v4, s:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    if-nez v4, :cond_6

    .line 984
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "bad ! spec is  null on the setCurrentTab"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 987
    :cond_6
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v4}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v7

    if-nez v7, :cond_7

    .line 990
    :cond_7
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v4}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabClosed()V

    .line 993
    .end local v4           #s:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    :cond_8
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(I)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v5

    .line 994
    .local v5, spec:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    if-nez v5, :cond_9

    .line 995
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "bad ! spec is  null on the setCurrentTab"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 998
    :cond_9
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v7

    if-nez v7, :cond_a

    .line 1004
    :cond_a
    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 1005
    .local v6, tag:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    .line 1006
    .local v3, previousTabTag:Ljava/lang/String;
    iput-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    .line 1007
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v7, p1}, Lcom/htc/fragment/widget/CarouselWidget;->setCurrentTabUtil(I)V

    .line 1010
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v7, p1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setCurrentTab(I)V

    .line 1014
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    .line 1016
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-nez v7, :cond_b

    .line 1017
    const-string v7, "CarouselHost::setCurrentTabUtil(): Strange !, Current View is null "

    invoke-static {v7}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1047
    :cond_b
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v7

    if-nez v7, :cond_c

    .line 1048
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1057
    :cond_c
    const-string v7, "ani"

    const-string v8, "@setCurrentTabUtil, to real"

    invoke-static {v7, v8}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    check-cast v7, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->switchToContentView()V

    .line 1060
    const/4 v2, 0x0

    .local v2, previousTab:Landroid/app/Fragment;
    const/4 v1, 0x0

    .line 1063
    .local v1, currentTab:Landroid/app/Fragment;
    if-eqz v3, :cond_d

    .line 1064
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v7, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 1068
    if-eqz v2, :cond_d

    .line 1069
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1071
    :cond_d
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1072
    if-eqz v1, :cond_e

    .line 1076
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1080
    :cond_e
    if-eqz v2, :cond_f

    .line 1081
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v7, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->pauseFragment(Landroid/app/Fragment;)V

    .line 1084
    :cond_f
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->isResumed()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1085
    if-eqz v1, :cond_10

    .line 1086
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v7, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->resumeFragment(Landroid/app/Fragment;)V

    .line 1091
    :cond_10
    :goto_1
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fragment/app/LocalFragmentManager;->setCurrentId(Ljava/lang/String;)V

    .line 1092
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fragment/widget/CarouselFragment;->onCurrentTabChanged(Ljava/lang/String;)V

    .line 1093
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->invokeOnTabChangeListener()V

    goto/16 :goto_0

    .line 1089
    :cond_11
    const-string v7, "The activity is not resumed when the setCurrentTabUtil is called"

    invoke-static {v7}, Lcom/htc/fragment/widget/CarouselLog;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method setIsProviderAp(Z)V
    .locals 0
    .parameter "isProviderAp"

    .prologue
    .line 1828
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mIsProviderAP:Z

    .line 1829
    return-void
.end method

.method setNextTab()V
    .locals 3

    .prologue
    .line 903
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    .line 905
    .local v0, currentIndex:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    .line 906
    add-int/lit8 v0, v0, -0x1

    .line 910
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(I)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v1

    .line 911
    .local v1, spec:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    .line 912
    return-void

    .line 908
    .end local v1           #spec:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    .line 1125
    return-void
.end method

.method public setTabHintEnabled(Z)V
    .locals 0
    .parameter "tabHint"

    .prologue
    .line 2698
    return-void
.end method

.method setup()V
    .locals 3

    .prologue
    .line 444
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselWidget;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    .line 445
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/CarouselWidget;->setCarouselHost(Lcom/htc/fragment/widget/CarouselHost;)V

    .line 453
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselContentGallery;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    .line 456
    new-instance v0, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    .line 457
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v2, v2, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, v1, v2}, Lcom/htc/fragment/widget/CarouselContentGallery;->setup(Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;Lcom/htc/fragment/widget/FastScroller;)V

    .line 458
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->addView(Landroid/view/View;)V

    .line 461
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    if-nez v0, :cond_1

    .line 463
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->printViewTree(Landroid/view/ViewGroup;I)V

    .line 465
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_1
    return-void
.end method

.method setup(Lcom/htc/fragment/app/LocalFragmentManager;)V
    .locals 0
    .parameter "localFragmentManager"

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->setup()V

    .line 477
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    .line 478
    return-void
.end method

.method showTipBubble()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1885
    const-string v2, "Carousel"

    const-string v5, "showTipBubble()"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const v2, 0x2020063

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1890
    .local v1, slidingDrawer:Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1892
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v2, :cond_0

    .line 1893
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x205006b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    .line 1895
    :cond_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1897
    .local v0, lparams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1898
    const/16 v5, 0xe

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_5

    move v2, v4

    :goto_1
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1899
    const/16 v5, 0xc

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_6

    move v2, v4

    :goto_2
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1901
    const/16 v5, 0xf

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1902
    const/16 v2, 0xb

    iget-boolean v5, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v5, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1904
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1905
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2080158

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1908
    if-eqz v1, :cond_2

    .line 1910
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_4
    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    :goto_5
    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1911
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1916
    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1917
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1918
    :cond_3
    return-void

    .line 1897
    .restart local v0       #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_5
    move v2, v3

    .line 1898
    goto :goto_1

    :cond_6
    move v2, v3

    .line 1899
    goto :goto_2

    :cond_7
    move v2, v4

    .line 1901
    goto :goto_3

    .line 1910
    :cond_8
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_4

    :cond_9
    move v4, v3

    goto :goto_5
.end method

.method public startDrag(Landroid/view/View;Lcom/htc/fragment/widget/DragSource;Ljava/lang/Object;I)V
    .locals 14
    .parameter "view"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 2062
    move-object/from16 v0, p2

    instance-of v12, v0, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v12, :cond_3

    .line 2064
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 2066
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v5

    .line 2067
    .local v5, firstVisPos:I
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v8

    .line 2069
    .local v8, lastVisPos:I
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    sub-int v13, v8, v5

    invoke-virtual {v12, v13}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2071
    .local v9, lastVisView:Landroid/view/View;
    if-eqz v9, :cond_0

    .line 2073
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v12

    invoke-interface {v12}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    .line 2074
    .local v3, count:I
    iget-boolean v12, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v12, :cond_2

    .line 2076
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v7

    .line 2077
    .local v7, itemWidth:I
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int v13, v3, v8

    mul-int/2addr v13, v7

    add-int v1, v12, v13

    .line 2078
    .local v1, anchor:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getWidth()I

    move-result v12

    sub-int/2addr v12, v1

    div-int/lit8 v13, v7, 0x2

    sub-int v4, v12, v13

    .line 2079
    .local v4, distance:I
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setDragBinGridViewToTrue()V

    .line 2081
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v12

    if-le v3, v12, :cond_0

    .line 2082
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12, v4}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    .line 2114
    .end local v1           #anchor:I
    .end local v3           #count:I
    .end local v4           #distance:I
    .end local v5           #firstVisPos:I
    .end local v7           #itemWidth:I
    .end local v8           #lastVisPos:I
    .end local v9           #lastVisView:Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->removeTipBubble()V

    .line 2116
    const/4 v12, 0x2

    new-array v10, v12, [I

    .line 2117
    .local v10, loc:[I
    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2119
    iget v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    const/4 v13, 0x0

    aget v13, v10, v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget v13, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetX:F

    add-float/2addr v12, v13

    iput v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    .line 2120
    iget v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    const/4 v13, 0x1

    aget v13, v10, v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget v13, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetY:F

    add-float/2addr v12, v13

    iput v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    .line 2122
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 2123
    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/view/View;->setPressed(Z)V

    .line 2125
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetX:I

    .line 2126
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetY:I

    .line 2128
    if-nez p4, :cond_1

    .line 2129
    const/4 v12, 0x4

    invoke-virtual {p1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 2131
    :cond_1
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mOriginator:Landroid/view/View;

    .line 2132
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    .line 2133
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    .line 2134
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->createDragView(Landroid/view/View;)V

    .line 2136
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    .line 2137
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    .line 2138
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    .line 2139
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->invalidate()V

    .line 2140
    return-void

    .line 2086
    .end local v10           #loc:[I
    .restart local v3       #count:I
    .restart local v5       #firstVisPos:I
    .restart local v8       #lastVisPos:I
    .restart local v9       #lastVisView:Landroid/view/View;
    :cond_2
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v6

    .line 2087
    .local v6, itemHeight:I
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int v13, v3, v8

    mul-int/2addr v13, v6

    add-int v1, v12, v13

    .line 2088
    .restart local v1       #anchor:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHeight()I

    move-result v12

    sub-int/2addr v12, v1

    div-int/lit8 v13, v6, 0x2

    sub-int v4, v12, v13

    .line 2089
    .restart local v4       #distance:I
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setDragBinGridViewToTrue()V

    .line 2091
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v12

    if-le v3, v12, :cond_0

    .line 2092
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12, v4}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto :goto_0

    .line 2101
    .end local v1           #anchor:I
    .end local v3           #count:I
    .end local v4           #distance:I
    .end local v5           #firstVisPos:I
    .end local v6           #itemHeight:I
    .end local v8           #lastVisPos:I
    .end local v9           #lastVisView:Landroid/view/View;
    :cond_3
    const v12, 0x2020064

    invoke-virtual {p0, v12}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/fragment/widget/BinGridView;

    .local v2, binGridView:Lcom/htc/fragment/widget/BinGridView;
    move-object/from16 v12, p3

    .line 2103
    check-cast v12, Lcom/htc/fragment/widget/TaskInfo;

    iget v12, v12, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v11, 0x1

    .line 2105
    .local v11, removeable:Z
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    if-eqz v12, :cond_0

    if-eqz v11, :cond_0

    .line 2107
    invoke-virtual {v2}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    invoke-interface {v12}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    if-nez v12, :cond_5

    .line 2108
    invoke-virtual {v2}, Lcom/htc/fragment/widget/BinGridView;->startDragOneItem()V

    goto/16 :goto_0

    .line 2103
    .end local v11           #removeable:Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 2110
    .restart local v11       #removeable:Z
    :cond_5
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/htc/fragment/widget/BinGridView;->setDrawNextItem(Z)V

    goto/16 :goto_0
.end method

.method switchPanelToPositive()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2877
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2878
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->switchPanelToPositive(Z)V

    .line 2879
    :cond_0
    return-void

    .line 2878
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchPanelView()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2869
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2870
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->switchPanelView(Z)V

    .line 2871
    :cond_0
    return-void

    .line 2870
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useDefaultTabName(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/fragment/widget/CarouselFragment;->setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1114
    return-void
.end method
